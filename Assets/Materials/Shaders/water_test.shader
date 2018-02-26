// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.07569204,fgcg:0.2941176,fgcb:0.09527497,fgca:1,fgde:0.007,fgrn:69.39,fgrf:161.65,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4013,x:33243,y:32616,varname:node_4013,prsc:2|diff-1304-RGB,spec-6894-OUT,emission-7236-OUT,transm-7236-OUT,alpha-6962-OUT,voffset-189-OUT;n:type:ShaderForge.SFN_Color,id:1304,x:32423,y:31997,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_1304,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:189,x:32387,y:33012,varname:node_189,prsc:2|A-3942-OUT,B-8687-RGB,C-8415-RGB,D-4842-OUT;n:type:ShaderForge.SFN_NormalVector,id:3942,x:32184,y:32886,prsc:2,pt:False;n:type:ShaderForge.SFN_Tex2d,id:8687,x:31944,y:32978,varname:node_8687,prsc:2,tex:25cec6e2388b24e448e6c85ae2688737,ntxv:3,isnm:True|UVIN-7167-UVOUT,TEX-2229-TEX;n:type:ShaderForge.SFN_Slider,id:4842,x:31787,y:33261,ptovrint:False,ptlb:amplitude,ptin:_amplitude,varname:node_4842,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.082,max:1;n:type:ShaderForge.SFN_Tex2d,id:7680,x:32188,y:32091,varname:node_7680,prsc:2,tex:267f5ec9b21a9d24e8130748651997a5,ntxv:0,isnm:False|UVIN-6518-UVOUT,TEX-6226-TEX;n:type:ShaderForge.SFN_Multiply,id:7236,x:32604,y:32138,varname:node_7236,prsc:2|A-1304-RGB,B-5057-OUT;n:type:ShaderForge.SFN_Panner,id:7167,x:31343,y:33170,varname:node_7167,prsc:2,spu:0.5,spv:1|UVIN-6243-OUT,DIST-69-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:2229,x:31343,y:32994,ptovrint:False,ptlb:water displacement,ptin:_waterdisplacement,varname:node_2229,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:25cec6e2388b24e448e6c85ae2688737,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:8415,x:31944,y:33109,varname:node_8415,prsc:2,tex:25cec6e2388b24e448e6c85ae2688737,ntxv:0,isnm:False|UVIN-5876-UVOUT,TEX-2229-TEX;n:type:ShaderForge.SFN_Panner,id:5876,x:31343,y:33315,varname:node_5876,prsc:2,spu:0.8,spv:1.2|UVIN-6243-OUT,DIST-69-OUT;n:type:ShaderForge.SFN_Multiply,id:6243,x:31079,y:33266,varname:node_6243,prsc:2|A-4848-OUT,B-9803-OUT;n:type:ShaderForge.SFN_Multiply,id:69,x:31091,y:33426,varname:node_69,prsc:2|A-8272-T,B-3846-OUT;n:type:ShaderForge.SFN_Time,id:8272,x:30851,y:33426,varname:node_8272,prsc:2;n:type:ShaderForge.SFN_Tex2dAsset,id:6226,x:31979,y:32191,ptovrint:False,ptlb:node_6226,ptin:_node_6226,varname:node_6226,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:267f5ec9b21a9d24e8130748651997a5,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:8960,x:32188,y:32248,varname:node_8960,prsc:2,tex:267f5ec9b21a9d24e8130748651997a5,ntxv:0,isnm:False|UVIN-3656-UVOUT,TEX-6226-TEX;n:type:ShaderForge.SFN_Lerp,id:5057,x:32423,y:32160,varname:node_5057,prsc:2|A-7680-RGB,B-8960-RGB,T-2074-OUT;n:type:ShaderForge.SFN_Vector1,id:2074,x:32188,y:32394,varname:node_2074,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:8688,x:32494,y:32298,varname:node_8688,prsc:2|A-7680-A,B-8960-A;n:type:ShaderForge.SFN_FragmentPosition,id:7565,x:30192,y:31623,varname:node_7565,prsc:2;n:type:ShaderForge.SFN_Set,id:7425,x:30555,y:31679,varname:worldUV,prsc:2|IN-8105-OUT;n:type:ShaderForge.SFN_Append,id:8105,x:30374,y:31656,varname:node_8105,prsc:2|A-7565-X,B-7565-Z;n:type:ShaderForge.SFN_Get,id:4848,x:30705,y:33105,varname:node_4848,prsc:2|IN-7425-OUT;n:type:ShaderForge.SFN_Power,id:9803,x:30782,y:33288,varname:node_9803,prsc:2|VAL-885-OUT,EXP-8325-OUT;n:type:ShaderForge.SFN_Vector1,id:885,x:30483,y:33216,varname:node_885,prsc:2,v1:0.001;n:type:ShaderForge.SFN_Panner,id:6518,x:31291,y:32390,varname:node_6518,prsc:2,spu:0.5,spv:1|UVIN-7582-OUT,DIST-4133-OUT;n:type:ShaderForge.SFN_Panner,id:3656,x:31291,y:32535,varname:node_3656,prsc:2,spu:0.8,spv:1.2|UVIN-7582-OUT,DIST-4133-OUT;n:type:ShaderForge.SFN_Multiply,id:7582,x:31027,y:32486,varname:node_7582,prsc:2|A-8593-OUT,B-7953-OUT;n:type:ShaderForge.SFN_Multiply,id:4133,x:31039,y:32646,varname:node_4133,prsc:2|A-9406-T,B-6599-OUT;n:type:ShaderForge.SFN_Time,id:9406,x:30799,y:32646,varname:node_9406,prsc:2;n:type:ShaderForge.SFN_Get,id:8593,x:30653,y:32325,varname:node_8593,prsc:2|IN-7425-OUT;n:type:ShaderForge.SFN_Power,id:7953,x:30730,y:32508,varname:node_7953,prsc:2|VAL-2781-OUT,EXP-8823-OUT;n:type:ShaderForge.SFN_Vector1,id:2781,x:30507,y:32473,varname:node_2781,prsc:2,v1:0.001;n:type:ShaderForge.SFN_Vector1,id:8823,x:30507,y:32529,varname:node_8823,prsc:2,v1:0.669;n:type:ShaderForge.SFN_Vector1,id:6599,x:30799,y:32772,varname:node_6599,prsc:2,v1:0.207;n:type:ShaderForge.SFN_Vector1,id:8325,x:30483,y:33335,varname:node_8325,prsc:2,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:3846,x:30851,y:33575,ptovrint:False,ptlb:node_3846,ptin:_node_3846,varname:node_3846,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.005;n:type:ShaderForge.SFN_Fresnel,id:385,x:32389,y:32714,varname:node_385,prsc:2|EXP-9470-OUT;n:type:ShaderForge.SFN_Slider,id:9470,x:32062,y:32714,ptovrint:False,ptlb:fresnel,ptin:_fresnel,varname:node_9470,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_RemapRange,id:3213,x:32602,y:32742,varname:node_3213,prsc:2,frmn:0,frmx:1,tomn:1,tomx:0|IN-385-OUT;n:type:ShaderForge.SFN_Multiply,id:6962,x:32809,y:32716,varname:node_6962,prsc:2|A-8688-OUT,B-3213-OUT,C-642-OUT;n:type:ShaderForge.SFN_Slider,id:642,x:32409,y:32926,ptovrint:False,ptlb:alpha,ptin:_alpha,varname:node_642,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.482933,max:3;n:type:ShaderForge.SFN_Dot,id:6894,x:31921,y:32546,varname:node_6894,prsc:2,dt:0|A-2370-OUT,B-8687-RGB;n:type:ShaderForge.SFN_ViewReflectionVector,id:2370,x:31562,y:32622,varname:node_2370,prsc:2;proporder:1304-4842-2229-6226-3846-9470-642;pass:END;sub:END;*/

Shader "Shader Forge/water_test" {
    Properties {
        _Color ("Color", Color) = (1,1,1,1)
        _amplitude ("amplitude", Range(0, 1)) = 0.082
        _waterdisplacement ("water displacement", 2D) = "bump" {}
        _node_6226 ("node_6226", 2D) = "white" {}
        _node_3846 ("node_3846", Float ) = 0.005
        _fresnel ("fresnel", Range(0, 1)) = 1
        _alpha ("alpha", Range(0, 3)) = 1.482933
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _Color;
            uniform float _amplitude;
            uniform sampler2D _waterdisplacement; uniform float4 _waterdisplacement_ST;
            uniform sampler2D _node_6226; uniform float4 _node_6226_ST;
            uniform float _node_3846;
            uniform float _fresnel;
            uniform float _alpha;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_8272 = _Time;
                float node_69 = (node_8272.g*_node_3846);
                float2 worldUV = float2(mul(unity_ObjectToWorld, v.vertex).r,mul(unity_ObjectToWorld, v.vertex).b);
                float2 node_6243 = (worldUV*pow(0.001,1.0));
                float2 node_7167 = (node_6243+node_69*float2(0.5,1));
                float3 node_8687 = UnpackNormal(tex2Dlod(_waterdisplacement,float4(TRANSFORM_TEX(node_7167, _waterdisplacement),0.0,0)));
                float2 node_5876 = (node_6243+node_69*float2(0.8,1.2));
                float3 node_8415 = UnpackNormal(tex2Dlod(_waterdisplacement,float4(TRANSFORM_TEX(node_5876, _waterdisplacement),0.0,0)));
                v.vertex.xyz += (v.normal*node_8687.rgb*node_8415.rgb*_amplitude);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = 0.5;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float4 node_8272 = _Time;
                float node_69 = (node_8272.g*_node_3846);
                float2 worldUV = float2(i.posWorld.r,i.posWorld.b);
                float2 node_6243 = (worldUV*pow(0.001,1.0));
                float2 node_7167 = (node_6243+node_69*float2(0.5,1));
                float3 node_8687 = UnpackNormal(tex2D(_waterdisplacement,TRANSFORM_TEX(node_7167, _waterdisplacement)));
                float node_6894 = dot(viewReflectDirection,node_8687.rgb);
                float3 specularColor = float3(node_6894,node_6894,node_6894);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = dot( normalDirection, lightDirection );
                float3 forwardLight = max(0.0, NdotL );
                float4 node_9406 = _Time;
                float node_4133 = (node_9406.g*0.207);
                float2 node_7582 = (worldUV*pow(0.001,0.669));
                float2 node_6518 = (node_7582+node_4133*float2(0.5,1));
                float4 node_7680 = tex2D(_node_6226,TRANSFORM_TEX(node_6518, _node_6226));
                float2 node_3656 = (node_7582+node_4133*float2(0.8,1.2));
                float4 node_8960 = tex2D(_node_6226,TRANSFORM_TEX(node_3656, _node_6226));
                float3 node_7236 = (_Color.rgb*lerp(node_7680.rgb,node_8960.rgb,0.5));
                float3 backLight = max(0.0, -NdotL ) * node_7236;
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = (forwardLight+backLight) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float3 diffuseColor = _Color.rgb;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float3 emissive = node_7236;
/// Final Color:
                float3 finalColor = diffuse + specular + emissive;
                return fixed4(finalColor,((node_7680.a*node_8960.a)*(pow(1.0-max(0,dot(normalDirection, viewDirection)),_fresnel)*-1.0+1.0)*_alpha));
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _Color;
            uniform float _amplitude;
            uniform sampler2D _waterdisplacement; uniform float4 _waterdisplacement_ST;
            uniform sampler2D _node_6226; uniform float4 _node_6226_ST;
            uniform float _node_3846;
            uniform float _fresnel;
            uniform float _alpha;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_8272 = _Time;
                float node_69 = (node_8272.g*_node_3846);
                float2 worldUV = float2(mul(unity_ObjectToWorld, v.vertex).r,mul(unity_ObjectToWorld, v.vertex).b);
                float2 node_6243 = (worldUV*pow(0.001,1.0));
                float2 node_7167 = (node_6243+node_69*float2(0.5,1));
                float3 node_8687 = UnpackNormal(tex2Dlod(_waterdisplacement,float4(TRANSFORM_TEX(node_7167, _waterdisplacement),0.0,0)));
                float2 node_5876 = (node_6243+node_69*float2(0.8,1.2));
                float3 node_8415 = UnpackNormal(tex2Dlod(_waterdisplacement,float4(TRANSFORM_TEX(node_5876, _waterdisplacement),0.0,0)));
                v.vertex.xyz += (v.normal*node_8687.rgb*node_8415.rgb*_amplitude);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = 0.5;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float4 node_8272 = _Time;
                float node_69 = (node_8272.g*_node_3846);
                float2 worldUV = float2(i.posWorld.r,i.posWorld.b);
                float2 node_6243 = (worldUV*pow(0.001,1.0));
                float2 node_7167 = (node_6243+node_69*float2(0.5,1));
                float3 node_8687 = UnpackNormal(tex2D(_waterdisplacement,TRANSFORM_TEX(node_7167, _waterdisplacement)));
                float node_6894 = dot(viewReflectDirection,node_8687.rgb);
                float3 specularColor = float3(node_6894,node_6894,node_6894);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = dot( normalDirection, lightDirection );
                float3 forwardLight = max(0.0, NdotL );
                float4 node_9406 = _Time;
                float node_4133 = (node_9406.g*0.207);
                float2 node_7582 = (worldUV*pow(0.001,0.669));
                float2 node_6518 = (node_7582+node_4133*float2(0.5,1));
                float4 node_7680 = tex2D(_node_6226,TRANSFORM_TEX(node_6518, _node_6226));
                float2 node_3656 = (node_7582+node_4133*float2(0.8,1.2));
                float4 node_8960 = tex2D(_node_6226,TRANSFORM_TEX(node_3656, _node_6226));
                float3 node_7236 = (_Color.rgb*lerp(node_7680.rgb,node_8960.rgb,0.5));
                float3 backLight = max(0.0, -NdotL ) * node_7236;
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = (forwardLight+backLight) * attenColor;
                float3 diffuseColor = _Color.rgb;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                return fixed4(finalColor * ((node_7680.a*node_8960.a)*(pow(1.0-max(0,dot(normalDirection, viewDirection)),_fresnel)*-1.0+1.0)*_alpha),0);
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
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _amplitude;
            uniform sampler2D _waterdisplacement; uniform float4 _waterdisplacement_ST;
            uniform float _node_3846;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_8272 = _Time;
                float node_69 = (node_8272.g*_node_3846);
                float2 worldUV = float2(mul(unity_ObjectToWorld, v.vertex).r,mul(unity_ObjectToWorld, v.vertex).b);
                float2 node_6243 = (worldUV*pow(0.001,1.0));
                float2 node_7167 = (node_6243+node_69*float2(0.5,1));
                float3 node_8687 = UnpackNormal(tex2Dlod(_waterdisplacement,float4(TRANSFORM_TEX(node_7167, _waterdisplacement),0.0,0)));
                float2 node_5876 = (node_6243+node_69*float2(0.8,1.2));
                float3 node_8415 = UnpackNormal(tex2Dlod(_waterdisplacement,float4(TRANSFORM_TEX(node_5876, _waterdisplacement),0.0,0)));
                v.vertex.xyz += (v.normal*node_8687.rgb*node_8415.rgb*_amplitude);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
