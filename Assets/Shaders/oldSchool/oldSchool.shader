Shader "MyShader/oldSchool" {

    Properties{
    _MainCol("颜色", color) = (1.0, 1.0, 1.0, 1.0)
    _SpecularPow("高光次幂", range(1, 90)) = 30

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

        // 声明输入值
        uniform float3 _MainCol;
        uniform float _SpecularPow;

        // 定义一个输入结构
        struct VertexInput {
            float4 vertex : POSITION;    // 语义，顶点信息
            float4 normal : NORMAL;    //语义，法线信息
        };
        // 定义一个输出结构
        struct VertexOutput {
            float4 posCS : SV_POSITION;    // 顶点在裁剪空间的坐标位置，语义为裁剪空间的顶点坐标
            float4 posWS : TEXCOORD0;    // 顶点在世界空间坐标位置，语义为顶点纹理坐标（TEXCOORD0-TEXCOORDn）
            float3 nDirWS : TEXCOORD1;    // 世界空间下的法线方向
        };
        // 顶点 shader 函数，#pragma 里已指明
        VertexOutput vert(VertexInput v) {
            VertexOutput o;
            o.posCS = UnityObjectToClipPos(v.vertex);    // 裁剪空间坐标
            o.posWS = mul(unity_ObjectToWorld, v.vertex);    // 矩阵相乘，将本地空间换算为世界空间
            o.nDirWS = UnityObjectToWorldNormal(v.normal);    // 将物体法线向量坐标转换到世界坐标
            return o;
        };
        // 片元 shader 函数，#pragma 里已指明
        float4 frag(VertexOutput i) : COLOR{
            // 计算高光我们需要获取 视角与阳光的半方向向量 与 法线的点积，点积越大越亮
            // 半方向是光线和视角的的向量相加
            
            // 准备需要的向量
            float3 nDir = i.nDirWS;    // 世界坐标的法线向量
            float3 lDir = normalize(_WorldSpaceLightPos0.xyz);    // 世界光坐标，normalize 为归一化方法
            float3 vDir = normalize(_WorldSpaceCameraPos.xyz - i.posWS);    // 获取视角方向
            float3 hDir = normalize(vDir + lDir);    // 光与视角的半方向
            
            // 计算向量值
            float ndotl = dot(nDir, lDir);    // 法线与光的点积
            float ndoth = dot(nDir, hDir);    // 半方向与光的点积，计算高光
            
            // 光照模型
            float3 lambert = max(0.0, ndotl);
            float blinePhong = pow(max(0.0, ndoth), _SpecularPow);
            float3 finalRGB = _MainCol * lambert + blinePhong;

            return float4(finalRGB, 1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
}
