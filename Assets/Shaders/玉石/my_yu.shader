// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33784,y:33119,varname:node_3138,prsc:2|emission-5775-OUT;n:type:ShaderForge.SFN_Dot,id:7693,x:31895,y:33240,varname:node_7693,prsc:2,dt:0|A-2736-OUT,B-9899-OUT;n:type:ShaderForge.SFN_Multiply,id:4547,x:32083,y:33240,varname:node_4547,prsc:2|A-7693-OUT,B-441-OUT;n:type:ShaderForge.SFN_Vector1,id:441,x:31895,y:33120,varname:node_441,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Add,id:6183,x:32280,y:33240,varname:node_6183,prsc:2|A-4547-OUT,B-441-OUT;n:type:ShaderForge.SFN_Tex2d,id:3551,x:32869,y:33240,ptovrint:False,ptlb:Tex,ptin:_Tex,varname:_node_3551,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:410b4b6b6bbc9db4ba172003365015c7,ntxv:0,isnm:False|UVIN-7529-OUT;n:type:ShaderForge.SFN_Append,id:7529,x:32672,y:33240,varname:node_7529,prsc:2|A-3689-OUT,B-441-OUT;n:type:ShaderForge.SFN_ConstantClamp,id:3689,x:32478,y:33240,varname:node_3689,prsc:2,min:0,max:1|IN-6183-OUT;n:type:ShaderForge.SFN_LightVector,id:9899,x:31666,y:33486,varname:node_9899,prsc:2;n:type:ShaderForge.SFN_Dot,id:6750,x:32478,y:33486,varname:node_6750,prsc:2,dt:0|A-2736-OUT,B-2228-OUT;n:type:ShaderForge.SFN_Slider,id:5614,x:32633,y:33438,ptovrint:False,ptlb:HightLightClamp1,ptin:_HightLightClamp1,varname:node_5614,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.989572,max:1;n:type:ShaderForge.SFN_Vector4Property,id:4279,x:31895,y:33486,ptovrint:False,ptlb:HightLigtOffest1,ptin:_HightLigtOffest1,varname:_HightLigtOffest_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0.5,v3:0,v4:0;n:type:ShaderForge.SFN_Add,id:3717,x:32098,y:33486,varname:node_3717,prsc:2|A-4279-XYZ,B-9899-OUT;n:type:ShaderForge.SFN_Normalize,id:2228,x:32280,y:33486,varname:node_2228,prsc:2|IN-3717-OUT;n:type:ShaderForge.SFN_Vector4Property,id:523,x:31895,y:33704,ptovrint:False,ptlb:HightLigtOffest2,ptin:_HightLigtOffest2,varname:_HightLigtOffest2,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Add,id:3833,x:32098,y:33704,varname:node_3833,prsc:2|A-523-XYZ,B-9899-OUT;n:type:ShaderForge.SFN_Normalize,id:4226,x:32280,y:33704,varname:node_4226,prsc:2|IN-3833-OUT;n:type:ShaderForge.SFN_NormalVector,id:2736,x:31666,y:33240,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:2128,x:32491,y:33694,varname:node_2128,prsc:2,dt:0|A-2736-OUT,B-4226-OUT;n:type:ShaderForge.SFN_Slider,id:9751,x:32633,y:33641,ptovrint:False,ptlb:HightLightClamp2,ptin:_HightLightClamp2,varname:_HightLightClamp2,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.998,max:1;n:type:ShaderForge.SFN_Max,id:9098,x:33290,y:33607,varname:node_9098,prsc:2|A-2582-OUT,B-7942-OUT;n:type:ShaderForge.SFN_Clamp01,id:5437,x:33463,y:33607,varname:node_5437,prsc:2|IN-9098-OUT;n:type:ShaderForge.SFN_Lerp,id:4990,x:33292,y:33239,varname:node_4990,prsc:2|A-3551-RGB,B-7759-RGB,T-5437-OUT;n:type:ShaderForge.SFN_Color,id:7759,x:33051,y:33239,ptovrint:False,ptlb:HightLightColor,ptin:_HightLightColor,varname:node_7759,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.9019608,c2:0.9,c3:0.5019608,c4:1;n:type:ShaderForge.SFN_Fresnel,id:4330,x:33095,y:33064,varname:node_4330,prsc:2|EXP-8146-OUT;n:type:ShaderForge.SFN_Color,id:9393,x:33095,y:32909,ptovrint:False,ptlb:FresnelColor,ptin:_FresnelColor,varname:node_9393,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_ValueProperty,id:8146,x:32903,y:33084,ptovrint:False,ptlb:FresnelValue,ptin:_FresnelValue,varname:node_8146,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_Multiply,id:214,x:33292,y:33064,varname:node_214,prsc:2|A-4330-OUT,B-9393-RGB;n:type:ShaderForge.SFN_Blend,id:5775,x:33532,y:33239,varname:node_5775,prsc:2,blmd:6,clmp:True|SRC-214-OUT,DST-4990-OUT;n:type:ShaderForge.SFN_Step,id:2582,x:32946,y:33503,varname:node_2582,prsc:2|A-5614-OUT,B-6750-OUT;n:type:ShaderForge.SFN_Step,id:7942,x:32946,y:33698,varname:node_7942,prsc:2|A-9751-OUT,B-2128-OUT;proporder:3551-5614-4279-523-9751-7759-9393-8146;pass:END;sub:END;*/

Shader "Shader Forge/my_yu" {
    Properties {
        _Tex ("Tex", 2D) = "white" {}
        _HightLightClamp1 ("HightLightClamp1", Range(0, 1)) = 0.989572
        _HightLigtOffest1 ("HightLigtOffest1", Vector) = (0,0.5,0,0)
        _HightLigtOffest2 ("HightLigtOffest2", Vector) = (0,0,0,0)
        _HightLightClamp2 ("HightLightClamp2", Range(0, 1)) = 0.998
        _HightLightColor ("HightLightColor", Color) = (0.9019608,0.9,0.5019608,1)
        _FresnelColor ("FresnelColor", Color) = (1,1,1,1)
        _FresnelValue ("FresnelValue", Float ) = 2
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
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma target 3.0
            uniform sampler2D _Tex; uniform float4 _Tex_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _HightLightClamp1)
                UNITY_DEFINE_INSTANCED_PROP( float4, _HightLigtOffest1)
                UNITY_DEFINE_INSTANCED_PROP( float4, _HightLigtOffest2)
                UNITY_DEFINE_INSTANCED_PROP( float, _HightLightClamp2)
                UNITY_DEFINE_INSTANCED_PROP( float4, _HightLightColor)
                UNITY_DEFINE_INSTANCED_PROP( float4, _FresnelColor)
                UNITY_DEFINE_INSTANCED_PROP( float, _FresnelValue)
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
                LIGHTING_COORDS(2,3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
////// Emissive:
                float _FresnelValue_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FresnelValue );
                float4 _FresnelColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FresnelColor );
                float node_441 = 0.5;
                float2 node_7529 = float2(clamp(((dot(i.normalDir,lightDirection)*node_441)+node_441),0,1),node_441);
                float4 _Tex_var = tex2D(_Tex,TRANSFORM_TEX(node_7529, _Tex));
                float4 _HightLightColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _HightLightColor );
                float _HightLightClamp1_var = UNITY_ACCESS_INSTANCED_PROP( Props, _HightLightClamp1 );
                float4 _HightLigtOffest1_var = UNITY_ACCESS_INSTANCED_PROP( Props, _HightLigtOffest1 );
                float _HightLightClamp2_var = UNITY_ACCESS_INSTANCED_PROP( Props, _HightLightClamp2 );
                float4 _HightLigtOffest2_var = UNITY_ACCESS_INSTANCED_PROP( Props, _HightLigtOffest2 );
                float3 emissive = saturate((1.0-(1.0-(pow(1.0-max(0,dot(normalDirection, viewDirection)),_FresnelValue_var)*_FresnelColor_var.rgb))*(1.0-lerp(_Tex_var.rgb,_HightLightColor_var.rgb,saturate(max(step(_HightLightClamp1_var,dot(i.normalDir,normalize((_HightLigtOffest1_var.rgb+lightDirection)))),step(_HightLightClamp2_var,dot(i.normalDir,normalize((_HightLigtOffest2_var.rgb+lightDirection))))))))));
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
            uniform sampler2D _Tex; uniform float4 _Tex_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _HightLightClamp1)
                UNITY_DEFINE_INSTANCED_PROP( float4, _HightLigtOffest1)
                UNITY_DEFINE_INSTANCED_PROP( float4, _HightLigtOffest2)
                UNITY_DEFINE_INSTANCED_PROP( float, _HightLightClamp2)
                UNITY_DEFINE_INSTANCED_PROP( float4, _HightLightColor)
                UNITY_DEFINE_INSTANCED_PROP( float4, _FresnelColor)
                UNITY_DEFINE_INSTANCED_PROP( float, _FresnelValue)
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
                LIGHTING_COORDS(2,3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
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
