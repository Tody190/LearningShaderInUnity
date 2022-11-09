// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:34037,y:32591,varname:node_3138,prsc:2|emission-1295-OUT;n:type:ShaderForge.SFN_Tex2d,id:5987,x:33628,y:32801,ptovrint:False,ptlb:Occlusion,ptin:_Occlusion,varname:node_5987,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:eabfa8d88fe328f4b952fb81f530c4a4,ntxv:0,isnm:False;n:type:ShaderForge.SFN_NormalVector,id:482,x:32472,y:32827,prsc:2,pt:False;n:type:ShaderForge.SFN_ComponentMask,id:4327,x:32701,y:32827,varname:node_4327,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-482-OUT;n:type:ShaderForge.SFN_Vector1,id:8353,x:32701,y:33159,varname:node_8353,prsc:2,v1:-1;n:type:ShaderForge.SFN_Multiply,id:193,x:32701,y:33012,varname:node_193,prsc:2|A-4327-OUT,B-8353-OUT;n:type:ShaderForge.SFN_Max,id:644,x:32961,y:33048,cmnt:方向向下,varname:node_644,prsc:2|A-193-OUT,B-8305-OUT;n:type:ShaderForge.SFN_Vector1,id:8305,x:32961,y:32951,varname:node_8305,prsc:2,v1:0;n:type:ShaderForge.SFN_Subtract,id:1523,x:33343,y:32931,cmnt:从两边向中间扩散,varname:node_1523,prsc:2|A-349-OUT,B-5489-OUT;n:type:ShaderForge.SFN_Vector1,id:349,x:33175,y:32877,varname:node_349,prsc:2,v1:1;n:type:ShaderForge.SFN_Max,id:2177,x:32961,y:32827,cmnt:方向向上,varname:node_2177,prsc:2|A-4327-OUT,B-8305-OUT;n:type:ShaderForge.SFN_Add,id:5489,x:33175,y:32931,varname:node_5489,prsc:2|A-2177-OUT,B-644-OUT;n:type:ShaderForge.SFN_Color,id:8900,x:33180,y:32358,ptovrint:False,ptlb:UpColor,ptin:_UpColor,cmnt:向上颜色,varname:node_8900,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.1049169,c2:0.7075472,c3:0.02336242,c4:1;n:type:ShaderForge.SFN_Color,id:2033,x:33180,y:32537,ptovrint:False,ptlb:DownColor,ptin:_DownColor,cmnt:向下颜色,varname:_UpColor_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.3118547,c2:0.4027307,c3:0.9056604,c4:1;n:type:ShaderForge.SFN_Color,id:2050,x:33180,y:32714,ptovrint:False,ptlb:SideColor,ptin:_SideColor,varname:_DownColor_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.7830189,c2:0.2172815,c3:0.05540227,c4:1;n:type:ShaderForge.SFN_Multiply,id:2916,x:33387,y:32358,varname:node_2916,prsc:2|A-8900-RGB,B-2177-OUT;n:type:ShaderForge.SFN_Multiply,id:8346,x:33387,y:32537,varname:node_8346,prsc:2|A-2033-RGB,B-644-OUT;n:type:ShaderForge.SFN_Multiply,id:762,x:33387,y:32714,varname:node_762,prsc:2|A-2050-RGB,B-1523-OUT;n:type:ShaderForge.SFN_Add,id:6116,x:33623,y:32514,varname:node_6116,prsc:2|A-2916-OUT,B-8346-OUT,C-762-OUT;n:type:ShaderForge.SFN_Multiply,id:1295,x:33843,y:32690,varname:node_1295,prsc:2|A-6116-OUT,B-5987-RGB;proporder:5987-8900-2033-2050;pass:END;sub:END;*/

Shader "Shader Forge/3color" {
    Properties {
        _Occlusion ("Occlusion", 2D) = "white" {}
        _UpColor ("UpColor", Color) = (0.1049169,0.7075472,0.02336242,1)
        _DownColor ("DownColor", Color) = (0.3118547,0.4027307,0.9056604,1)
        _SideColor ("SideColor", Color) = (0.7830189,0.2172815,0.05540227,1)
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
            uniform sampler2D _Occlusion; uniform float4 _Occlusion_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _UpColor)
                UNITY_DEFINE_INSTANCED_PROP( float4, _DownColor)
                UNITY_DEFINE_INSTANCED_PROP( float4, _SideColor)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float2 uv0 : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float4 _UpColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _UpColor ); // 向上颜色
                float node_4327 = i.normalDir.g;
                float node_8305 = 0.0;
                float node_2177 = max(node_4327,node_8305); // 方向向上
                float4 _DownColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _DownColor ); // 向下颜色
                float node_644 = max((node_4327*(-1.0)),node_8305); // 方向向下
                float4 _SideColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _SideColor );
                float4 _Occlusion_var = tex2D(_Occlusion,TRANSFORM_TEX(i.uv0, _Occlusion));
                float3 emissive = (((_UpColor_var.rgb*node_2177)+(_DownColor_var.rgb*node_644)+(_SideColor_var.rgb*(1.0-(node_2177+node_644))))*_Occlusion_var.rgb);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
