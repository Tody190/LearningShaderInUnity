Shader "Shader Forge/L03_FIX" {
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
            float4 vertex : POSITION;
        };
        // 定义一个输出结构
        struct VertexOutput {
            float4 pos : SV_POSITION;
        };
        // 顶点 shader 函数，#pragma 里已指明
        VertexOutput vert(VertexInput v) {
            VertexOutput o = (VertexOutput)0;
            o.pos = UnityObjectToClipPos(v.vertex);
            return o;
        }
        // 片元 shader 函数，#pragma 里已指明
        float4 frag(VertexOutput i) : COLOR {
////// Lighting: 
////// Emissive:
                return float4(1,0.6,0.1,1);
            }
            ENDCG
        }
    }
        FallBack "Diffuse"
}
