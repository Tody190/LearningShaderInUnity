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
        // ����ָ��
        #pragma vertex vert    // ���� unity �����������������ɫ������
        #pragma fragment frag    // unity �����������ƬԪ��ɫ������
        #include "UnityCG.cginc"
        #pragma multi_compile_fwdbase_fullshadows
        #pragma target 3.0
        // ����һ������ṹ
        struct VertexInput {
            float4 vertex : POSITION;
        };
        // ����һ������ṹ
        struct VertexOutput {
            float4 pos : SV_POSITION;
        };
        // ���� shader ������#pragma ����ָ��
        VertexOutput vert(VertexInput v) {
            VertexOutput o = (VertexOutput)0;
            o.pos = UnityObjectToClipPos(v.vertex);
            return o;
        }
        // ƬԪ shader ������#pragma ����ָ��
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
