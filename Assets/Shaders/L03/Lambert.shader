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
        // ����ָ��
        #pragma vertex vert    // ���� unity �����������������ɫ������
        #pragma fragment frag    // unity �����������ƬԪ��ɫ������
        #include "UnityCG.cginc"
        #pragma multi_compile_fwdbase_fullshadows
        #pragma target 3.0
        // ����һ������ṹ
        struct VertexInput {
            float4 vertex : POSITION;    // ���壬������Ϣ
            float4 normal : NORMAL;    //���壬������Ϣ
        };
        // ����һ������ṹ
        struct VertexOutput {
            float4 pos : SV_POSITION;    // ���壬��Ļ�Ķ�����Ϣ
            float3 nDirWS : TEXCOORD0;    // ���壬��������
        };
        // ���� shader ������#pragma ����ָ��
        VertexOutput vert(VertexInput v) {
            VertexOutput o;
            o.pos = UnityObjectToClipPos(v.vertex);
            o.nDirWS = UnityObjectToWorldNormal(v.normal);    // �����巨����������ת������������

            return o;
        };
        // ƬԪ shader ������#pragma ����ָ��
        float4 frag(VertexOutput i) : COLOR{
            float3 nDir = i.nDirWS;    // ��������ķ�������
            float3 lDir = normalize(_WorldSpaceLightPos0.xyz);    // ���������
            float nDotl = dot(nDir, lDir) * 0.5 + 0.5;
            float lambert = max(0.0, nDotl);    // ͨ��ȡ���ֵ��ȡֵ��Χ�ŵ�0��1
            return float4(lambert, lambert, lambert, 1);    // �淶�����
            }
            ENDCG
        }
    }
        FallBack "Diffuse"
}
