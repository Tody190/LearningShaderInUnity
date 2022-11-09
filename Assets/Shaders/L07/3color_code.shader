Shader "MyShader/3Color_code" {
    Properties{
        _Occlusion ("Occlusion", 2D) = "white" {}
        _UpColor ("UpColor", Color) = (1, 0, 0, 1)
        _DownColor ("DownColor", Color) = (0, 1, 0, 1)
        _SideColor ("SideColor", Color) = (0, 0, 1, 1)
    }
    SubShader{
        Tags {
            "RenderType" = "Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode" = "ForwardBase"
            }


            CGPROGRAM
            // 编译指令
            #pragma vertex vert    // 告诉 unity 这个函数包含顶点着色器代码
            #pragma fragment frag    // unity 这个函数包含片元着色器代码
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma target 3.0

            // 声明变量
            uniform float3 _UpColor;
            uniform float3 _DownColor;
            uniform float3 _SideColor;
            uniform sampler2D _Occlusion;

            // 定义一个输入结构
            struct VertexInput {
                float4 vertex : POSITION;    // 语义，顶点信息
                float4 normal : NORMAL;    //语义，法线信息
                float2 texcoord0 : TEXCOORD0;    // uv纹理
            };

            // 定义一个输出结构
            struct VertexOutput {
                float4 pos : SV_POSITION;    // 语义，屏幕的顶点信息
                float3 nDirWS : TEXCOORD1;    // 语义，纹理坐标
                float2 uv : TEXCOORD0;
            };

            // 顶点 shader 函数
            // 必须用这个函数把顶点坐标从模型空间转换为剪裁空间
            VertexOutput vert(VertexInput v) {
                VertexOutput o;
                o.pos = UnityObjectToClipPos(v.vertex);
                o.nDirWS = UnityObjectToWorldNormal(v.normal);    // 将物体法线向量坐标转换到世界坐标
                o.uv = v.texcoord0;
                return o;
            }

            // 片元 shader 函数
            // 用来为模型上色
            float4 frag(VertexOutput i) : COLOR{
                // 归一化法线并获取法线
                float3 nDir = normalize(i.nDirWS);
                // 方向上，获取法线的Y向
                float upMask = max(0, nDir.g);
                // 方向下，Y方向的负值
                float downMask = max(0, -nDir.g);
                // 边方向
                float4 sideMask = 1 - (upMask + downMask);
                
                // 向上的颜色
                float3 upColor = upMask * _UpColor;
                // 向下的颜色
                float3 downColor = downMask * _DownColor;
                // 边颜色
                float3 sideColor = sideMask * _SideColor;

                //贴图采样,使用uv在occ贴图上采样
                float occlusion = tex2D(_Occlusion, i.uv);

                // 三个颜色合并并与OCC贴图合并
                float3 outputColor = (upColor + downColor + sideColor) * occlusion;
                return float4 (outputColor, 1);    // 规范化输出
            }
            ENDCG
        }
    }
     FallBack "Diffuse"
}
