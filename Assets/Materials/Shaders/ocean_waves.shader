// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:0,lgpr:1,limd:1,spmd:0,trmd:1,grmd:1,uamb:False,mssp:True,bkdf:True,hqlp:True,rprd:True,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:0,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:True,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.07569204,fgcg:0.2941176,fgcb:0.09527497,fgca:1,fgde:0.007,fgrn:69.39,fgrf:161.65,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4013,x:33429,y:32511,varname:node_4013,prsc:2|diff-1304-RGB,voffset-9778-OUT;n:type:ShaderForge.SFN_Color,id:1304,x:33096,y:32513,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_1304,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_TexCoord,id:7094,x:31492,y:32912,varname:node_7094,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_ComponentMask,id:9115,x:31684,y:32789,varname:node_9115,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-7094-U;n:type:ShaderForge.SFN_Vector1,id:7083,x:31868,y:32897,varname:node_7083,prsc:2,v1:4;n:type:ShaderForge.SFN_Tau,id:2859,x:31901,y:32953,varname:node_2859,prsc:2;n:type:ShaderForge.SFN_Multiply,id:7721,x:32106,y:32765,varname:node_7721,prsc:2|A-9098-OUT,B-7083-OUT,C-2859-OUT;n:type:ShaderForge.SFN_Sin,id:9656,x:32308,y:32774,varname:node_9656,prsc:2|IN-7721-OUT;n:type:ShaderForge.SFN_RemapRange,id:4411,x:32479,y:32774,varname:node_4411,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-9656-OUT;n:type:ShaderForge.SFN_Add,id:9098,x:31868,y:32765,varname:node_9098,prsc:2|A-8535-OUT,B-9115-OUT;n:type:ShaderForge.SFN_Time,id:3586,x:31443,y:32515,varname:node_3586,prsc:2;n:type:ShaderForge.SFN_Clamp01,id:7569,x:32657,y:32774,varname:node_7569,prsc:2|IN-4411-OUT;n:type:ShaderForge.SFN_Multiply,id:9778,x:32953,y:32867,varname:node_9778,prsc:2|A-9925-OUT,B-9007-OUT,C-4103-OUT;n:type:ShaderForge.SFN_NormalVector,id:9007,x:32668,y:32919,prsc:2,pt:False;n:type:ShaderForge.SFN_Multiply,id:8535,x:31684,y:32612,varname:node_8535,prsc:2|A-3586-T,B-3426-OUT;n:type:ShaderForge.SFN_Slider,id:3426,x:31321,y:32676,ptovrint:False,ptlb:frequence_1,ptin:_frequence_1,varname:node_3426,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Multiply,id:9925,x:32869,y:32722,varname:node_9925,prsc:2|A-2592-OUT,B-7569-OUT;n:type:ShaderForge.SFN_Slider,id:2592,x:32454,y:32696,ptovrint:False,ptlb:amp_1,ptin:_amp_1,varname:node_2592,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:5.938778,max:10;n:type:ShaderForge.SFN_TexCoord,id:1544,x:31409,y:33565,varname:node_1544,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_ComponentMask,id:1747,x:31601,y:33442,varname:node_1747,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-1544-V;n:type:ShaderForge.SFN_Vector1,id:8283,x:31785,y:33550,varname:node_8283,prsc:2,v1:4;n:type:ShaderForge.SFN_Tau,id:4429,x:31818,y:33606,varname:node_4429,prsc:2;n:type:ShaderForge.SFN_Multiply,id:4711,x:32023,y:33418,varname:node_4711,prsc:2|A-1178-OUT,B-8283-OUT,C-4429-OUT;n:type:ShaderForge.SFN_Sin,id:2764,x:32225,y:33427,varname:node_2764,prsc:2|IN-4711-OUT;n:type:ShaderForge.SFN_RemapRange,id:2490,x:32396,y:33427,varname:node_2490,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-2764-OUT;n:type:ShaderForge.SFN_Add,id:1178,x:31785,y:33418,varname:node_1178,prsc:2|A-9548-OUT,B-1747-OUT;n:type:ShaderForge.SFN_Time,id:1576,x:31360,y:33168,varname:node_1576,prsc:2;n:type:ShaderForge.SFN_Clamp01,id:8951,x:32574,y:33427,varname:node_8951,prsc:2|IN-2490-OUT;n:type:ShaderForge.SFN_Multiply,id:9548,x:31601,y:33265,varname:node_9548,prsc:2|A-1576-T,B-1051-OUT;n:type:ShaderForge.SFN_Slider,id:1051,x:31238,y:33329,ptovrint:False,ptlb:frequence_2,ptin:_frequence_2,varname:_frequence_2,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1834153,max:1;n:type:ShaderForge.SFN_Multiply,id:4103,x:32766,y:33338,varname:node_4103,prsc:2|A-7733-OUT,B-8951-OUT;n:type:ShaderForge.SFN_Slider,id:7733,x:32371,y:33349,ptovrint:False,ptlb:amp_2,ptin:_amp_2,varname:_amp_2,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.05441508,max:10;proporder:1304-3426-2592-1051-7733;pass:END;sub:END;*/

Shader "Shader Forge/ocean_waves" {
    Properties {
        _Color ("Color", Color) = (1,1,1,1)
        _frequence_1 ("frequence_1", Range(0, 1)) = 0.5
        _amp_1 ("amp_1", Range(0, 10)) = 5.938778
        _frequence_2 ("frequence_2", Range(0, 1)) = 0.1834153
        _amp_2 ("amp_2", Range(0, 10)) = 0.05441508
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
            Cull Off
            
            
            AlphaToMask On
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _Color;
            uniform float _frequence_1;
            uniform float _amp_1;
            uniform float _frequence_2;
            uniform float _amp_2;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD10;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #endif
                #ifdef DYNAMICLIGHTMAP_ON
                    o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
                #endif
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 node_3586 = _Time;
                float4 node_1576 = _Time;
                v.vertex.xyz += ((_amp_1*saturate((sin((((node_3586.g*_frequence_1)+o.uv0.r.r)*4.0*6.28318530718))*0.5+0.5)))*v.normal*(_amp_2*saturate((sin((((node_1576.g*_frequence_2)+o.uv0.g.r)*4.0*6.28318530718))*0.5+0.5))));
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                    d.ambient = 0;
                    d.lightmapUV = i.ambientOrLightmapUV;
                #else
                    d.ambient = i.ambientOrLightmapUV;
                #endif
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - 0;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                float3 diffuseColor = _Color.rgb;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _frequence_1;
            uniform float _amp_1;
            uniform float _frequence_2;
            uniform float _amp_2;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float2 uv1 : TEXCOORD2;
                float2 uv2 : TEXCOORD3;
                float4 posWorld : TEXCOORD4;
                float3 normalDir : TEXCOORD5;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_3586 = _Time;
                float4 node_1576 = _Time;
                v.vertex.xyz += ((_amp_1*saturate((sin((((node_3586.g*_frequence_1)+o.uv0.r.r)*4.0*6.28318530718))*0.5+0.5)))*v.normal*(_amp_2*saturate((sin((((node_1576.g*_frequence_2)+o.uv0.g.r)*4.0*6.28318530718))*0.5+0.5))));
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _Color;
            uniform float _frequence_1;
            uniform float _amp_1;
            uniform float _frequence_2;
            uniform float _amp_2;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_3586 = _Time;
                float4 node_1576 = _Time;
                v.vertex.xyz += ((_amp_1*saturate((sin((((node_3586.g*_frequence_1)+o.uv0.r.r)*4.0*6.28318530718))*0.5+0.5)))*v.normal*(_amp_2*saturate((sin((((node_1576.g*_frequence_2)+o.uv0.g.r)*4.0*6.28318530718))*0.5+0.5))));
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : SV_Target {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                o.Emission = 0;
                
                float3 diffColor = _Color.rgb;
                o.Albedo = diffColor;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
