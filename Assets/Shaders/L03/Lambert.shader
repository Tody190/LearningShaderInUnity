Shader "MyShader/Lambert" {
    Properties{
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
        // 定义一个输入结构
        struct VertexInput {
            float4 vertex : POSITION;    // 语义，顶点信息
            float4 normal : NORMAL;    //语义，法线信息
        };
        // 定义一个输出结构
        struct VertexOutput {
            float4 pos : SV_POSITION;    // 语义，屏幕的顶点信息
            float3 nDirWS : TEXCOORD0;    // 语义，纹理坐标
        };
        // 顶点 shader 函数，#pragma 里已指明
        VertexOutput vert(VertexInput v) {
            VertexOutput o;
            o.pos = UnityObjectToClipPos(v.vertex);
            o.nDirWS = UnityObjectToWorldNormal(v.normal);    // 将物体法线向量坐标转换到世界坐标

            return o;
        };
        // 片元 shader 函数，#pragma 里已指明
        float4 frag(VertexOutput i) : COLOR{
            float3 nDir = i.nDirWS;    // 世界坐标的法线向量
            float3 lDir = normalize(_WorldSpaceLightPos0.xyz);    // 世界光坐标
            float nDotl = dot(nDir, lDir) * 0.5 + 0.5;
            float lambert = max(0.0, nDotl);    // 通过取最大值将取值范围放到0到1
            return float4(lambert, lambert, lambert, 1);    // 规范化输出
            }
            ENDCG
        }
    }
        FallBack "Diffuse"
}
