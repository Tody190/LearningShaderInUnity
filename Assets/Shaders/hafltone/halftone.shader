// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33315,y:32719,varname:node_3138,prsc:2|emission-8965-OUT;n:type:ShaderForge.SFN_ScreenPos,id:4361,x:32417,y:32766,varname:node_4361,prsc:2,sctp:0;n:type:ShaderForge.SFN_Multiply,id:763,x:32576,y:32887,varname:node_763,prsc:2|A-4361-UVOUT,B-3953-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3953,x:32417,y:32970,ptovrint:False,ptlb:node_3953,ptin:_node_3953,varname:node_3953,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:10;n:type:ShaderForge.SFN_Frac,id:6639,x:32727,y:32870,varname:node_6639,prsc:2|IN-763-OUT;n:type:ShaderForge.SFN_ComponentMask,id:3241,x:32906,y:32716,varname:node_3241,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-6639-OUT;n:type:ShaderForge.SFN_RemapRange,id:1523,x:32906,y:32883,varname:node_1523,prsc:2,frmn:0,frmx:1,tomn:-0.5,tomx:0.5|IN-6639-OUT;n:type:ShaderForge.SFN_Length,id:8965,x:33084,y:32935,varname:node_8965,prsc:2|IN-1523-OUT;n:type:ShaderForge.SFN_LightVector,id:9764,x:32356,y:33119,varname:node_9764,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:7246,x:32356,y:33300,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:1034,x:32616,y:33191,varname:node_1034,prsc:2,dt:0|A-9764-OUT,B-7246-OUT;proporder:3953;pass:END;sub:END;*/

Shader "U" {
    Properties {
        _node_3953 ("node_3953", Float ) = 10
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma target 3.0
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _node_3953)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 projPos : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
////// Lighting:
////// Emissive:
                float _node_3953_var = UNITY_ACCESS_INSTANCED_PROP( Props, _node_3953 );
                float2 node_6639 = frac(((sceneUVs * 2 - 1).rg*_node_3953_var));
                float node_8965 = length((node_6639*1.0+-0.5));
                float3 emissive = float3(node_8965,node_8965,node_8965);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
