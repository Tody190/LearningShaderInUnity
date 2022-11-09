// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:34037,y:32907,varname:node_3138,prsc:2|emission-5771-OUT;n:type:ShaderForge.SFN_ViewReflectionVector,id:9497,x:31802,y:32721,varname:node_9497,prsc:2;n:type:ShaderForge.SFN_LightVector,id:9251,x:31803,y:33118,varname:node_9251,prsc:2;n:type:ShaderForge.SFN_Dot,id:4321,x:32068,y:32568,varname:node_4321,prsc:2,dt:0|A-9497-OUT,B-9251-OUT;n:type:ShaderForge.SFN_Power,id:4684,x:32862,y:32735,cmnt:两个颜色不同高光,varname:node_4684,prsc:2|VAL-8467-OUT,EXP-5327-OUT;n:type:ShaderForge.SFN_Color,id:5037,x:32576,y:33370,ptovrint:False,ptlb:Color1,ptin:_Color1,varname:node_5037,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.05433429,c2:0.3113208,c3:0.175237,c4:1;n:type:ShaderForge.SFN_Max,id:8467,x:32504,y:32563,varname:node_8467,prsc:2|A-4321-OUT,B-7298-OUT;n:type:ShaderForge.SFN_Vector1,id:7298,x:32292,y:32643,varname:node_7298,prsc:2,v1:0;n:type:ShaderForge.SFN_NormalVector,id:7027,x:31823,y:33450,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:3699,x:32172,y:33380,varname:node_3699,prsc:2,dt:0|A-9251-OUT,B-7027-OUT;n:type:ShaderForge.SFN_Multiply,id:1998,x:32764,y:33380,varname:node_1998,prsc:2|A-2571-OUT,B-5037-RGB;n:type:ShaderForge.SFN_Tex2d,id:844,x:32172,y:33174,ptovrint:False,ptlb:Tex,ptin:_Tex,varname:node_844,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c2d94ea4df523c84ab8d75a9fe12e6d6,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Add,id:4096,x:33115,y:33160,varname:node_4096,prsc:2|A-4684-OUT,B-1998-OUT;n:type:ShaderForge.SFN_Lerp,id:201,x:33360,y:33252,varname:node_201,prsc:2|A-4096-OUT,B-4885-OUT,T-6403-OUT;n:type:ShaderForge.SFN_Color,id:9209,x:32576,y:33601,ptovrint:False,ptlb:Color2,ptin:_Color2,varname:_node_5037_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.8490566,c2:0.3325767,c3:0.3003738,c4:1;n:type:ShaderForge.SFN_Step,id:6403,x:32480,y:33101,varname:node_6403,prsc:2|A-464-OUT,B-844-RGB;n:type:ShaderForge.SFN_Slider,id:464,x:32108,y:33043,ptovrint:False,ptlb:Texture Strength,ptin:_TextureStrength,varname:node_464,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4715242,max:1;n:type:ShaderForge.SFN_Fresnel,id:1350,x:33302,y:32775,varname:node_1350,prsc:2|EXP-1436-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1436,x:33082,y:32813,ptovrint:False,ptlb:Fresnel,ptin:_Fresnel,varname:node_1436,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_Blend,id:5771,x:33746,y:33024,varname:node_5771,prsc:2,blmd:6,clmp:True|SRC-4635-OUT,DST-201-OUT;n:type:ShaderForge.SFN_Lerp,id:5327,x:32647,y:32873,varname:node_5327,prsc:2|A-5486-OUT,B-6478-OUT,T-6403-OUT;n:type:ShaderForge.SFN_Slider,id:5486,x:32108,y:32804,ptovrint:False,ptlb:Highlights1,ptin:_Highlights1,varname:node_5486,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:21.26857,max:100;n:type:ShaderForge.SFN_Slider,id:6478,x:32108,y:32926,ptovrint:False,ptlb:Highlights2,ptin:_Highlights2,varname:_spcolor2,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:47.94237,max:100;n:type:ShaderForge.SFN_Add,id:4885,x:33115,y:33348,varname:node_4885,prsc:2|A-4684-OUT,B-5682-OUT;n:type:ShaderForge.SFN_Multiply,id:5682,x:32764,y:33576,varname:node_5682,prsc:2|A-2571-OUT,B-9209-RGB;n:type:ShaderForge.SFN_RemapRange,id:2571,x:32345,y:33380,varname:node_2571,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-3699-OUT;n:type:ShaderForge.SFN_Multiply,id:4635,x:33501,y:32866,cmnt:菲涅尔,varname:node_4635,prsc:2|A-1350-OUT,B-1827-RGB;n:type:ShaderForge.SFN_Color,id:1827,x:33302,y:32996,ptovrint:False,ptlb:FresnelColor,ptin:_FresnelColor,varname:node_1827,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;proporder:844-5037-9209-464-1436-5486-6478-1827;pass:END;sub:END;*/

Shader "Shader Forge/Rust" {
    Properties {
        _Tex ("Tex", 2D) = "white" {}
        _Color1 ("Color1", Color) = (0.05433429,0.3113208,0.175237,1)
        _Color2 ("Color2", Color) = (0.8490566,0.3325767,0.3003738,1)
        _TextureStrength ("Texture Strength", Range(0, 1)) = 0.4715242
        _Fresnel ("Fresnel", Float ) = 2
        _Highlights1 ("Highlights1", Range(0, 100)) = 21.26857
        _Highlights2 ("Highlights2", Range(0, 100)) = 47.94237
        _FresnelColor ("FresnelColor", Color) = (0.5,0.5,0.5,1)
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
                UNITY_DEFINE_INSTANCED_PROP( float4, _Color1)
                UNITY_DEFINE_INSTANCED_PROP( float4, _Color2)
                UNITY_DEFINE_INSTANCED_PROP( float, _TextureStrength)
                UNITY_DEFINE_INSTANCED_PROP( float, _Fresnel)
                UNITY_DEFINE_INSTANCED_PROP( float, _Highlights1)
                UNITY_DEFINE_INSTANCED_PROP( float, _Highlights2)
                UNITY_DEFINE_INSTANCED_PROP( float4, _FresnelColor)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
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
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
////// Emissive:
                float _Fresnel_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Fresnel );
                float node_1350 = pow(1.0-max(0,dot(normalDirection, viewDirection)),_Fresnel_var);
                float4 _FresnelColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FresnelColor );
                float _Highlights1_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Highlights1 );
                float _Highlights2_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Highlights2 );
                float _TextureStrength_var = UNITY_ACCESS_INSTANCED_PROP( Props, _TextureStrength );
                float4 _Tex_var = tex2D(_Tex,TRANSFORM_TEX(i.uv0, _Tex));
                float3 node_6403 = step(_TextureStrength_var,_Tex_var.rgb);
                float3 node_4684 = pow(max(dot(viewReflectDirection,lightDirection),0.0),lerp(float3(_Highlights1_var,_Highlights1_var,_Highlights1_var),float3(_Highlights2_var,_Highlights2_var,_Highlights2_var),node_6403)); // 两个颜色不同高光
                float node_2571 = (dot(lightDirection,i.normalDir)*0.5+0.5);
                float4 _Color1_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Color1 );
                float4 _Color2_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Color2 );
                float3 emissive = saturate((1.0-(1.0-(node_1350*_FresnelColor_var.rgb))*(1.0-lerp((node_4684+(node_2571*_Color1_var.rgb)),(node_4684+(node_2571*_Color2_var.rgb)),node_6403))));
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
                UNITY_DEFINE_INSTANCED_PROP( float4, _Color1)
                UNITY_DEFINE_INSTANCED_PROP( float4, _Color2)
                UNITY_DEFINE_INSTANCED_PROP( float, _TextureStrength)
                UNITY_DEFINE_INSTANCED_PROP( float, _Fresnel)
                UNITY_DEFINE_INSTANCED_PROP( float, _Highlights1)
                UNITY_DEFINE_INSTANCED_PROP( float, _Highlights2)
                UNITY_DEFINE_INSTANCED_PROP( float4, _FresnelColor)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
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
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
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
