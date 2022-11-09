// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:34702,y:33179,varname:node_3138,prsc:2|emission-5796-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:32222,y:32681,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.4299597,c2:0.02398542,c3:0.7264151,c4:1;n:type:ShaderForge.SFN_ComponentMask,id:5030,x:32599,y:32612,varname:node_5030,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-7241-RGB;n:type:ShaderForge.SFN_ComponentMask,id:1454,x:32599,y:32773,varname:node_1454,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-7241-RGB;n:type:ShaderForge.SFN_ComponentMask,id:3544,x:32599,y:32926,varname:node_3544,prsc:2,cc1:2,cc2:-1,cc3:-1,cc4:-1|IN-7241-RGB;n:type:ShaderForge.SFN_NormalVector,id:6174,x:32317,y:32971,prsc:2,pt:False;n:type:ShaderForge.SFN_LightVector,id:6248,x:32317,y:33136,varname:node_6248,prsc:2;n:type:ShaderForge.SFN_Dot,id:4474,x:32625,y:33149,varname:node_4474,prsc:2,dt:0|A-6174-OUT,B-6248-OUT;n:type:ShaderForge.SFN_Step,id:1562,x:33025,y:33052,varname:node_1562,prsc:2|A-1454-OUT,B-4474-OUT;n:type:ShaderForge.SFN_Step,id:6718,x:32878,y:32620,varname:node_6718,prsc:2|A-5030-OUT,B-4474-OUT;n:type:ShaderForge.SFN_Step,id:4258,x:32900,y:32879,varname:node_4258,prsc:2|A-3544-OUT,B-4474-OUT;n:type:ShaderForge.SFN_Append,id:4196,x:33099,y:32785,varname:node_4196,prsc:2|A-6718-OUT,B-4258-OUT;n:type:ShaderForge.SFN_Append,id:3820,x:33374,y:33097,varname:node_3820,prsc:2|A-4196-OUT,B-1562-OUT;n:type:ShaderForge.SFN_Lerp,id:5796,x:33852,y:33114,varname:node_5796,prsc:2|A-4306-RGB,B-3820-OUT,T-9685-OUT;n:type:ShaderForge.SFN_Color,id:4306,x:33454,y:32880,ptovrint:False,ptlb:node_4306,ptin:_node_4306,varname:node_4306,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.8207547,c2:0.8144315,c3:0.2903613,c4:1;n:type:ShaderForge.SFN_Step,id:9685,x:33346,y:33302,varname:node_9685,prsc:2|A-8301-OUT,B-4474-OUT;n:type:ShaderForge.SFN_Vector1,id:8301,x:33110,y:33204,varname:node_8301,prsc:2,v1:0;n:type:ShaderForge.SFN_ScreenPos,id:9747,x:33032,y:33514,varname:node_9747,prsc:2,sctp:0;n:type:ShaderForge.SFN_Tex2d,id:9726,x:33779,y:33616,ptovrint:False,ptlb:node_9726,ptin:_node_9726,varname:node_9726,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:4679dd7c8d76d9441b30258ae0a35294,ntxv:0,isnm:False|UVIN-5222-OUT;n:type:ShaderForge.SFN_Depth,id:8886,x:33032,y:33691,varname:node_8886,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5222,x:33510,y:33680,varname:node_5222,prsc:2|A-9747-UVOUT,B-7896-OUT;n:type:ShaderForge.SFN_Lerp,id:6265,x:34042,y:33388,varname:node_6265,prsc:2|A-3820-OUT,B-9726-RGB,T-9685-OUT;n:type:ShaderForge.SFN_Multiply,id:8285,x:34312,y:33198,varname:node_8285,prsc:2|A-5796-OUT;n:type:ShaderForge.SFN_Multiply,id:7896,x:33286,y:33764,varname:node_7896,prsc:2|A-8886-OUT,B-4211-OUT;n:type:ShaderForge.SFN_Vector1,id:4211,x:32996,y:33913,varname:node_4211,prsc:2,v1:5;proporder:7241-4306-9726;pass:END;sub:END;*/

Shader "Shader Forge/zuoye" {
    Properties {
        _Color ("Color", Color) = (0.4299597,0.02398542,0.7264151,1)
        _node_4306 ("node_4306", Color) = (0.8207547,0.8144315,0.2903613,1)
        _node_9726 ("node_9726", 2D) = "white" {}
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
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _Color)
                UNITY_DEFINE_INSTANCED_PROP( float4, _node_4306)
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
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
////// Emissive:
                float4 _node_4306_var = UNITY_ACCESS_INSTANCED_PROP( Props, _node_4306 );
                float4 _Color_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Color );
                float node_4474 = dot(i.normalDir,lightDirection);
                float3 node_3820 = float3(float2(step(_Color_var.rgb.r,node_4474),step(_Color_var.rgb.b,node_4474)),step(_Color_var.rgb.g,node_4474));
                float node_8301 = 0.0;
                float node_9685 = step(node_8301,node_4474);
                float3 node_5796 = lerp(_node_4306_var.rgb,node_3820,node_9685);
                float3 emissive = node_5796;
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
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _Color)
                UNITY_DEFINE_INSTANCED_PROP( float4, _node_4306)
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
