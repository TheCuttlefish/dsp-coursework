// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.07569204,fgcg:0.2941176,fgcb:0.09527497,fgca:1,fgde:0.007,fgrn:69.39,fgrf:161.65,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4013,x:32429,y:32794,varname:node_4013,prsc:2|diff-589-OUT,emission-2367-OUT;n:type:ShaderForge.SFN_Color,id:1304,x:31930,y:32580,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_1304,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.9829615,c3:0.8455882,c4:1;n:type:ShaderForge.SFN_Lerp,id:589,x:32240,y:32794,varname:node_589,prsc:2|A-1304-RGB,B-6352-OUT,T-3777-OUT;n:type:ShaderForge.SFN_Tex2d,id:4669,x:30995,y:32665,ptovrint:False,ptlb:Noise,ptin:_Noise,varname:node_4669,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-906-OUT;n:type:ShaderForge.SFN_Multiply,id:6352,x:31930,y:32770,varname:node_6352,prsc:2|A-5513-RGB,B-3777-OUT;n:type:ShaderForge.SFN_Color,id:5513,x:31697,y:32702,ptovrint:False,ptlb:Color2,ptin:_Color2,varname:node_5513,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.3827227,c2:0.7058823,c3:0.07266434,c4:1;n:type:ShaderForge.SFN_VertexColor,id:2851,x:30852,y:32928,varname:node_2851,prsc:2;n:type:ShaderForge.SFN_Add,id:5522,x:31314,y:32767,varname:node_5522,prsc:2|A-4669-RGB,B-6516-OUT;n:type:ShaderForge.SFN_Posterize,id:3065,x:31528,y:32922,varname:node_3065,prsc:2|IN-5522-OUT,STPS-8792-OUT;n:type:ShaderForge.SFN_Clamp01,id:3777,x:31697,y:32902,varname:node_3777,prsc:2|IN-3065-OUT;n:type:ShaderForge.SFN_RemapRange,id:6516,x:31041,y:32938,varname:node_6516,prsc:2,frmn:0,frmx:1,tomn:1,tomx:-1|IN-4073-OUT;n:type:ShaderForge.SFN_Slider,id:1972,x:30719,y:33181,ptovrint:False,ptlb:steps,ptin:_steps,varname:node_1972,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:2,cur:2,max:10;n:type:ShaderForge.SFN_Floor,id:8792,x:31250,y:33128,varname:node_8792,prsc:2|IN-1972-OUT;n:type:ShaderForge.SFN_TexCoord,id:1621,x:30341,y:32200,varname:node_1621,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:906,x:30609,y:32245,varname:node_906,prsc:2|A-1621-UVOUT,B-3934-OUT,C-974-OUT;n:type:ShaderForge.SFN_Slider,id:7115,x:29961,y:32423,ptovrint:False,ptlb:scale,ptin:_scale,varname:node_7115,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1.5,cur:1,max:0.001;n:type:ShaderForge.SFN_Exp,id:3934,x:30317,y:32421,varname:node_3934,prsc:2,et:0|IN-7115-OUT;n:type:ShaderForge.SFN_Dot,id:4073,x:30648,y:32908,varname:node_4073,prsc:2,dt:1|A-9104-OUT,B-6769-OUT;n:type:ShaderForge.SFN_Vector3,id:9104,x:30412,y:32853,varname:node_9104,prsc:2,v1:0,v2:1,v3:0;n:type:ShaderForge.SFN_NormalVector,id:6769,x:30412,y:32966,prsc:2,pt:False;n:type:ShaderForge.SFN_FragmentPosition,id:2406,x:30265,y:32581,varname:node_2406,prsc:2;n:type:ShaderForge.SFN_Multiply,id:974,x:30473,y:32644,varname:node_974,prsc:2|A-2406-W,B-9017-OUT;n:type:ShaderForge.SFN_Vector1,id:9017,x:30250,y:32783,varname:node_9017,prsc:2,v1:0.1;n:type:ShaderForge.SFN_FragmentPosition,id:1692,x:28513,y:31570,varname:node_1692,prsc:2;n:type:ShaderForge.SFN_Append,id:8319,x:28812,y:31669,varname:node_8319,prsc:2|A-1692-X,B-1692-Z;n:type:ShaderForge.SFN_Tex2d,id:5852,x:29835,y:31437,varname:node_1027,prsc:2,tex:267f5ec9b21a9d24e8130748651997a5,ntxv:0,isnm:False|UVIN-7269-OUT,TEX-4325-TEX;n:type:ShaderForge.SFN_Slider,id:9073,x:29769,y:31153,ptovrint:False,ptlb:rays alpha,ptin:_raysalpha,varname:node_817,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2,max:2;n:type:ShaderForge.SFN_Multiply,id:7269,x:29483,y:31491,varname:node_7269,prsc:2|A-4021-OUT,B-7720-UVOUT;n:type:ShaderForge.SFN_Slider,id:4021,x:29043,y:31052,ptovrint:False,ptlb:rays scale 1,ptin:_raysscale1,varname:node_127,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.001,cur:0.001,max:0.5;n:type:ShaderForge.SFN_Panner,id:7720,x:29076,y:31586,varname:node_7720,prsc:2,spu:1,spv:1|UVIN-8319-OUT;n:type:ShaderForge.SFN_Multiply,id:6753,x:28513,y:31731,varname:node_6753,prsc:2|A-8066-T,B-1507-OUT;n:type:ShaderForge.SFN_Slider,id:1507,x:27862,y:31749,ptovrint:False,ptlb:rays speed,ptin:_raysspeed,varname:node_7379,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.001,cur:1.6,max:20;n:type:ShaderForge.SFN_Time,id:8066,x:27985,y:31609,varname:node_8066,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:4435,x:27834,y:31868,ptovrint:False,ptlb:raysNoise,ptin:_raysNoise,varname:node_6128,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-6475-OUT;n:type:ShaderForge.SFN_Multiply,id:8079,x:28513,y:31888,varname:node_8079,prsc:2|A-4435-R,B-1205-OUT;n:type:ShaderForge.SFN_Add,id:4995,x:28834,y:31836,varname:node_4995,prsc:2|A-6753-OUT,B-8079-OUT;n:type:ShaderForge.SFN_TexCoord,id:9157,x:27464,y:31868,varname:node_9157,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:6475,x:27652,y:31868,varname:node_6475,prsc:2|A-9157-UVOUT,B-9217-OUT;n:type:ShaderForge.SFN_Multiply,id:215,x:30379,y:31483,varname:node_215,prsc:2|A-9073-OUT,B-5852-A,C-9704-A,D-2844-OUT;n:type:ShaderForge.SFN_Tex2d,id:9704,x:29835,y:31639,varname:node_7043,prsc:2,tex:267f5ec9b21a9d24e8130748651997a5,ntxv:0,isnm:False|UVIN-4477-OUT,TEX-4325-TEX;n:type:ShaderForge.SFN_Multiply,id:4477,x:29483,y:31692,varname:node_4477,prsc:2|A-1795-UVOUT,B-1698-OUT;n:type:ShaderForge.SFN_Panner,id:1795,x:29087,y:31771,varname:node_1795,prsc:2,spu:0.5,spv:0.5|UVIN-8319-OUT,DIST-4995-OUT;n:type:ShaderForge.SFN_Dot,id:2844,x:30379,y:31304,varname:node_2844,prsc:2,dt:1|A-1611-OUT,B-3169-OUT;n:type:ShaderForge.SFN_LightVector,id:1611,x:30179,y:31135,varname:node_1611,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:3169,x:30210,y:31270,prsc:2,pt:False;n:type:ShaderForge.SFN_Set,id:8212,x:30550,y:31483,varname:caustics,prsc:2|IN-215-OUT;n:type:ShaderForge.SFN_Slider,id:1205,x:27869,y:32131,ptovrint:False,ptlb:rays noise amount,ptin:_raysnoiseamount,varname:node_4147,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:10,max:10;n:type:ShaderForge.SFN_Slider,id:9217,x:27334,y:32056,ptovrint:False,ptlb:rays noise scale,ptin:_raysnoisescale,varname:node_359,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2410257,max:1;n:type:ShaderForge.SFN_Slider,id:1698,x:28930,y:32005,ptovrint:False,ptlb:rays scale 2,ptin:_raysscale2,varname:node_1565,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.001,cur:0.001,max:0.5;n:type:ShaderForge.SFN_Get,id:2367,x:32075,y:33057,varname:node_2367,prsc:2|IN-8212-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:4325,x:29543,y:31285,ptovrint:False,ptlb:Rays texture,ptin:_Raystexture,varname:node_4325,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:267f5ec9b21a9d24e8130748651997a5,ntxv:0,isnm:False;proporder:1304-5513-4669-1972-7115-9073-4021-1507-4435-1205-1698-9217-4325;pass:END;sub:END;*/

Shader "Shader Forge/transitionNormals" {
    Properties {
        _Color ("Color", Color) = (1,0.9829615,0.8455882,1)
        _Color2 ("Color2", Color) = (0.3827227,0.7058823,0.07266434,1)
        _Noise ("Noise", 2D) = "white" {}
        _steps ("steps", Range(2, 10)) = 2
        _scale ("scale", Range(1.5, 0.001)) = 1
        _raysalpha ("rays alpha", Range(0, 2)) = 2
        _raysscale1 ("rays scale 1", Range(0.001, 0.5)) = 0.001
        _raysspeed ("rays speed", Range(0.001, 20)) = 1.6
        _raysNoise ("raysNoise", 2D) = "white" {}
        _raysnoiseamount ("rays noise amount", Range(0, 10)) = 10
        _raysscale2 ("rays scale 2", Range(0.001, 0.5)) = 0.001
        _raysnoisescale ("rays noise scale", Range(0, 1)) = 0.2410257
        _Raystexture ("Rays texture", 2D) = "white" {}
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
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _Color;
            uniform sampler2D _Noise; uniform float4 _Noise_ST;
            uniform float4 _Color2;
            uniform float _steps;
            uniform float _scale;
            uniform float _raysalpha;
            uniform float _raysscale1;
            uniform float _raysspeed;
            uniform sampler2D _raysNoise; uniform float4 _raysNoise_ST;
            uniform float _raysnoiseamount;
            uniform float _raysnoisescale;
            uniform float _raysscale2;
            uniform sampler2D _Raystexture; uniform float4 _Raystexture_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float2 node_906 = (i.uv0*exp(_scale)*(i.posWorld.a*0.1));
                float4 _Noise_var = tex2D(_Noise,TRANSFORM_TEX(node_906, _Noise));
                float node_8792 = floor(_steps);
                float3 node_3777 = saturate(floor((_Noise_var.rgb+(max(0,dot(float3(0,1,0),i.normalDir))*-2.0+1.0)) * node_8792) / (node_8792 - 1));
                float3 diffuseColor = lerp(_Color.rgb,(_Color2.rgb*node_3777),node_3777);
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float4 node_7310 = _Time;
                float2 node_8319 = float2(i.posWorld.r,i.posWorld.b);
                float2 node_7269 = (_raysscale1*(node_8319+node_7310.g*float2(1,1)));
                float4 node_1027 = tex2D(_Raystexture,TRANSFORM_TEX(node_7269, _Raystexture));
                float4 node_8066 = _Time;
                float2 node_6475 = (i.uv0*_raysnoisescale);
                float4 _raysNoise_var = tex2D(_raysNoise,TRANSFORM_TEX(node_6475, _raysNoise));
                float2 node_4477 = ((node_8319+((node_8066.g*_raysspeed)+(_raysNoise_var.r*_raysnoiseamount))*float2(0.5,0.5))*_raysscale2);
                float4 node_7043 = tex2D(_Raystexture,TRANSFORM_TEX(node_4477, _Raystexture));
                float caustics = (_raysalpha*node_1027.a*node_7043.a*max(0,dot(lightDirection,i.normalDir)));
                float node_2367 = caustics;
                float3 emissive = float3(node_2367,node_2367,node_2367);
/// Final Color:
                float3 finalColor = diffuse + emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
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
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _Color;
            uniform sampler2D _Noise; uniform float4 _Noise_ST;
            uniform float4 _Color2;
            uniform float _steps;
            uniform float _scale;
            uniform float _raysalpha;
            uniform float _raysscale1;
            uniform float _raysspeed;
            uniform sampler2D _raysNoise; uniform float4 _raysNoise_ST;
            uniform float _raysnoiseamount;
            uniform float _raysnoisescale;
            uniform float _raysscale2;
            uniform sampler2D _Raystexture; uniform float4 _Raystexture_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float2 node_906 = (i.uv0*exp(_scale)*(i.posWorld.a*0.1));
                float4 _Noise_var = tex2D(_Noise,TRANSFORM_TEX(node_906, _Noise));
                float node_8792 = floor(_steps);
                float3 node_3777 = saturate(floor((_Noise_var.rgb+(max(0,dot(float3(0,1,0),i.normalDir))*-2.0+1.0)) * node_8792) / (node_8792 - 1));
                float3 diffuseColor = lerp(_Color.rgb,(_Color2.rgb*node_3777),node_3777);
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
