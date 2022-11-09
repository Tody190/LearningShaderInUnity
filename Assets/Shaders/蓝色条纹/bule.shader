// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33341,y:32976,varname:node_3138,prsc:2|emission-7303-OUT,olwid-2113-OUT,olcol-9513-RGB;n:type:ShaderForge.SFN_ScreenPos,id:6086,x:31903,y:32795,varname:node_6086,prsc:2,sctp:0;n:type:ShaderForge.SFN_Tex2d,id:6634,x:32264,y:32872,ptovrint:False,ptlb:StripeTex,ptin:_StripeTex,cmnt:屏幕采样加深度值,varname:node_6634,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:fc2474ae4a23d844db91fd5c2e1f9729,ntxv:0,isnm:False|UVIN-8089-OUT;n:type:ShaderForge.SFN_Depth,id:3057,x:31903,y:32945,varname:node_3057,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8089,x:32095,y:32872,varname:node_8089,prsc:2|A-6086-UVOUT,B-3057-OUT;n:type:ShaderForge.SFN_Step,id:1557,x:32484,y:32889,cmnt:阴影,varname:node_1557,prsc:2|A-6634-R,B-1216-OUT;n:type:ShaderForge.SFN_NormalVector,id:4266,x:31903,y:33124,prsc:2,pt:False;n:type:ShaderForge.SFN_LightVector,id:2880,x:31903,y:33295,varname:node_2880,prsc:2;n:type:ShaderForge.SFN_Dot,id:1216,x:32112,y:33207,varname:node_1216,prsc:2,dt:0|A-4266-OUT,B-2880-OUT;n:type:ShaderForge.SFN_Color,id:7122,x:32660,y:32753,ptovrint:False,ptlb:UnderColor,ptin:_UnderColor,cmnt:底色,varname:node_7122,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2916963,c2:0.7860322,c3:0.8962264,c4:1;n:type:ShaderForge.SFN_Lerp,id:7156,x:32923,y:32901,cmnt:蒙版效果,varname:node_7156,prsc:2|A-1814-RGB,B-7122-RGB,T-1557-OUT;n:type:ShaderForge.SFN_Color,id:1814,x:32660,y:32585,ptovrint:False,ptlb:MainColor,ptin:_MainColor,cmnt:底色,varname:node_1814,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.7228996,c2:0.8784815,c3:0.8962264,c4:1;n:type:ShaderForge.SFN_Multiply,id:629,x:32743,y:33207,varname:node_629,prsc:2|A-6400-OUT,B-2339-RGB;n:type:ShaderForge.SFN_Color,id:2339,x:32743,y:33032,ptovrint:False,ptlb:HighLight,ptin:_HighLight,cmnt:明度,varname:node_2339,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2313726,c2:0.2431373,c3:0.254902,c4:1;n:type:ShaderForge.SFN_Add,id:7303,x:33131,y:33078,varname:node_7303,prsc:2|A-7156-OUT,B-629-OUT;n:type:ShaderForge.SFN_Multiply,id:5906,x:32335,y:33207,varname:node_5906,prsc:2|A-1216-OUT,B-3332-OUT;n:type:ShaderForge.SFN_Add,id:6400,x:32541,y:33207,varname:node_6400,prsc:2|A-5906-OUT,B-3332-OUT;n:type:ShaderForge.SFN_Vector1,id:3332,x:32335,y:33387,varname:node_3332,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Slider,id:2113,x:32974,y:33291,ptovrint:False,ptlb:OutlineWidth,ptin:_OutlineWidth,varname:node_2113,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.05217391,max:1;n:type:ShaderForge.SFN_Color,id:9513,x:32974,y:33400,ptovrint:False,ptlb:OutlineColor,ptin:_OutlineColor,varname:node_9513,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.8584906,c2:0.379709,c3:0.360404,c4:1;proporder:6634-7122-1814-2339-2113-9513;pass:END;sub:END;*/

Shader "Shader Forge/bule" {
    Properties {
        _StripeTex ("StripeTex", 2D) = "white" {}
        _UnderColor ("UnderColor", Color) = (0.2916963,0.7860322,0.8962264,1)
        _MainColor ("MainColor", Color) = (0.7228996,0.8784815,0.8962264,1)
        _HighLight ("HighLight", Color) = (0.2313726,0.2431373,0.254902,1)
        _OutlineWidth ("OutlineWidth", Range(0, 1)) = 0.05217391
        _OutlineColor ("OutlineColor", Color) = (0.8584906,0.379709,0.360404,1)
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "Outline"
            Tags {
            }
            Cull Front
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma target 3.0
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _OutlineWidth)
                UNITY_DEFINE_INSTANCED_PROP( float4, _OutlineColor)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                float _OutlineWidth_var = UNITY_ACCESS_INSTANCED_PROP( Props, _OutlineWidth );
                o.pos = UnityObjectToClipPos( float4(v.vertex.xyz + v.normal*_OutlineWidth_var,1) );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                float4 _OutlineColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _OutlineColor );
                return fixed4(_OutlineColor_var.rgb,0);
            }
            ENDCG
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
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma target 3.0
            uniform sampler2D _StripeTex; uniform float4 _StripeTex_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _UnderColor)
                UNITY_DEFINE_INSTANCED_PROP( float4, _MainColor)
                UNITY_DEFINE_INSTANCED_PROP( float4, _HighLight)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float4 projPos : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
////// Emissive:
                float4 _MainColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _MainColor ); // 底色
                float4 _UnderColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _UnderColor ); // 底色
                float2 node_8089 = ((sceneUVs * 2 - 1).rg*partZ);
                float4 _StripeTex_var = tex2D(_StripeTex,TRANSFORM_TEX(node_8089, _StripeTex)); // 屏幕采样加深度值
                float node_1216 = dot(i.normalDir,lightDirection);
                float node_3332 = 0.5;
                float4 _HighLight_var = UNITY_ACCESS_INSTANCED_PROP( Props, _HighLight ); // 明度
                float3 emissive = (lerp(_MainColor_var.rgb,_UnderColor_var.rgb,step(_StripeTex_var.r,node_1216))+(((node_1216*node_3332)+node_3332)*_HighLight_var.rgb));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma target 3.0
            uniform sampler2D _StripeTex; uniform float4 _StripeTex_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _UnderColor)
                UNITY_DEFINE_INSTANCED_PROP( float4, _MainColor)
                UNITY_DEFINE_INSTANCED_PROP( float4, _HighLight)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float4 projPos : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
////// Lighting:
                float3 finalColor = 0;
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
