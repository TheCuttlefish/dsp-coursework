// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.07569204,fgcg:0.2941176,fgcb:0.09527497,fgca:1,fgde:0.007,fgrn:69.39,fgrf:161.65,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4013,x:33065,y:32792,varname:node_4013,prsc:2|diff-589-OUT,emission-7097-OUT,voffset-9142-OUT;n:type:ShaderForge.SFN_Color,id:1304,x:31896,y:32562,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_1304,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.9829615,c3:0.8455882,c4:1;n:type:ShaderForge.SFN_Lerp,id:589,x:32240,y:32794,varname:node_589,prsc:2|A-1304-RGB,B-6352-OUT,T-3777-OUT;n:type:ShaderForge.SFN_Tex2d,id:4669,x:30995,y:32665,ptovrint:False,ptlb:NoiseTexture,ptin:_NoiseTexture,varname:node_4669,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:5cf7c6c1bb5fb6a4bb93891200c70c4d,ntxv:0,isnm:False|UVIN-906-OUT;n:type:ShaderForge.SFN_Multiply,id:6352,x:31907,y:32736,varname:node_6352,prsc:2|A-5513-RGB,B-3777-OUT;n:type:ShaderForge.SFN_Color,id:5513,x:31662,y:32562,ptovrint:False,ptlb:Color2,ptin:_Color2,varname:node_5513,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.3827227,c2:0.7058823,c3:0.07266434,c4:1;n:type:ShaderForge.SFN_VertexColor,id:2851,x:30698,y:32963,varname:node_2851,prsc:2;n:type:ShaderForge.SFN_Add,id:5522,x:31314,y:32767,varname:node_5522,prsc:2|A-4669-RGB,B-6516-OUT;n:type:ShaderForge.SFN_Posterize,id:3065,x:31528,y:32922,varname:node_3065,prsc:2|IN-5522-OUT,STPS-8792-OUT;n:type:ShaderForge.SFN_Clamp01,id:3777,x:31714,y:32922,varname:node_3777,prsc:2|IN-3065-OUT;n:type:ShaderForge.SFN_RemapRange,id:6516,x:31041,y:32938,varname:node_6516,prsc:2,frmn:0,frmx:1,tomn:1,tomx:-1|IN-2851-R;n:type:ShaderForge.SFN_Slider,id:1972,x:30719,y:33181,ptovrint:False,ptlb:steps,ptin:_steps,varname:node_1972,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:2,cur:2,max:10;n:type:ShaderForge.SFN_Floor,id:8792,x:31250,y:33128,varname:node_8792,prsc:2|IN-1972-OUT;n:type:ShaderForge.SFN_TexCoord,id:1621,x:30521,y:32595,varname:node_1621,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:906,x:30789,y:32640,varname:node_906,prsc:2|A-1621-UVOUT,B-3934-OUT;n:type:ShaderForge.SFN_Slider,id:7115,x:30306,y:32884,ptovrint:False,ptlb:Floor Noise scale,ptin:_FloorNoisescale,varname:node_7115,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:4,cur:2,max:0.01;n:type:ShaderForge.SFN_Exp,id:3934,x:30618,y:32797,varname:node_3934,prsc:2,et:0|IN-7115-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:5709,x:28449,y:31506,varname:node_5709,prsc:2;n:type:ShaderForge.SFN_Append,id:5890,x:28748,y:31605,varname:node_5890,prsc:2|A-5709-X,B-5709-Z;n:type:ShaderForge.SFN_Tex2d,id:1592,x:29771,y:31373,varname:node_1027,prsc:2,ntxv:0,isnm:False|UVIN-2660-OUT,TEX-4917-TEX;n:type:ShaderForge.SFN_Slider,id:4707,x:29705,y:31089,ptovrint:False,ptlb:rays alpha,ptin:_raysalpha,varname:node_817,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2,max:2;n:type:ShaderForge.SFN_Multiply,id:2660,x:29342,y:31369,varname:node_2660,prsc:2|A-2968-OUT,B-5992-UVOUT;n:type:ShaderForge.SFN_Slider,id:2968,x:28979,y:30988,ptovrint:False,ptlb:rays scale 1,ptin:_raysscale1,varname:node_127,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.001,cur:0.001,max:0.5;n:type:ShaderForge.SFN_Panner,id:5992,x:29012,y:31522,varname:node_5992,prsc:2,spu:1,spv:1|UVIN-5890-OUT;n:type:ShaderForge.SFN_Multiply,id:1066,x:28449,y:31667,varname:node_1066,prsc:2|A-579-T,B-9206-OUT;n:type:ShaderForge.SFN_Slider,id:9206,x:27798,y:31685,ptovrint:False,ptlb:rays speed,ptin:_raysspeed,varname:node_7379,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.001,cur:1.6,max:20;n:type:ShaderForge.SFN_Time,id:579,x:27921,y:31545,varname:node_579,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:8509,x:27770,y:31804,ptovrint:False,ptlb:raysNoise,ptin:_raysNoise,varname:node_6128,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-6595-OUT;n:type:ShaderForge.SFN_Multiply,id:2083,x:28449,y:31824,varname:node_2083,prsc:2|A-8509-R,B-987-OUT;n:type:ShaderForge.SFN_Slider,id:987,x:27805,y:32067,ptovrint:False,ptlb:rays noise amount,ptin:_raysnoiseamount,varname:node_4147,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:10,max:10;n:type:ShaderForge.SFN_Add,id:2479,x:28770,y:31772,varname:node_2479,prsc:2|A-1066-OUT,B-2083-OUT;n:type:ShaderForge.SFN_TexCoord,id:9683,x:27400,y:31804,varname:node_9683,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:6595,x:27588,y:31804,varname:node_6595,prsc:2|A-9683-UVOUT,B-9354-OUT;n:type:ShaderForge.SFN_Slider,id:9354,x:27270,y:31992,ptovrint:False,ptlb:rays noise scale,ptin:_raysnoisescale,varname:node_359,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2410257,max:1;n:type:ShaderForge.SFN_Multiply,id:5668,x:30315,y:31419,varname:node_5668,prsc:2|A-4707-OUT,B-1592-A,C-2649-A,D-6813-OUT;n:type:ShaderForge.SFN_Tex2d,id:2649,x:29771,y:31575,varname:node_7043,prsc:2,ntxv:0,isnm:False|UVIN-3792-OUT,TEX-4917-TEX;n:type:ShaderForge.SFN_Multiply,id:3792,x:29436,y:31774,varname:node_3792,prsc:2|A-1335-UVOUT,B-4465-OUT;n:type:ShaderForge.SFN_Slider,id:4465,x:28866,y:31941,ptovrint:False,ptlb:rays scale 2,ptin:_raysscale2,varname:node_1565,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.001,cur:0.001,max:0.5;n:type:ShaderForge.SFN_Panner,id:1335,x:29023,y:31707,varname:node_1335,prsc:2,spu:0.5,spv:0.5|UVIN-5890-OUT,DIST-2479-OUT;n:type:ShaderForge.SFN_Dot,id:6813,x:30315,y:31240,varname:node_6813,prsc:2,dt:1|A-7980-OUT,B-7820-OUT;n:type:ShaderForge.SFN_LightVector,id:7980,x:30115,y:31071,varname:node_7980,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:7820,x:30146,y:31206,prsc:2,pt:False;n:type:ShaderForge.SFN_Set,id:5555,x:30486,y:31419,varname:Caustics,prsc:2|IN-5668-OUT;n:type:ShaderForge.SFN_Get,id:7097,x:32435,y:32866,varname:node_7097,prsc:2|IN-5555-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:4917,x:29572,y:31292,ptovrint:False,ptlb:Rays,ptin:_Rays,varname:node_4917,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:9142,x:32607,y:33402,varname:node_9142,prsc:2|A-5580-OUT,B-1617-OUT;n:type:ShaderForge.SFN_Sin,id:2426,x:31918,y:33378,varname:node_2426,prsc:2|IN-4-OUT;n:type:ShaderForge.SFN_Multiply,id:4,x:31734,y:33417,varname:node_4,prsc:2|A-7247-OUT,B-6270-OUT,C-1017-OUT;n:type:ShaderForge.SFN_RemapRange,id:1284,x:32070,y:33378,varname:node_1284,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-2426-OUT;n:type:ShaderForge.SFN_Tau,id:1017,x:31572,y:33636,varname:node_1017,prsc:2;n:type:ShaderForge.SFN_Clamp01,id:5580,x:32272,y:33395,varname:node_5580,prsc:2|IN-1284-OUT;n:type:ShaderForge.SFN_Add,id:6270,x:31539,y:33440,varname:node_6270,prsc:2|A-4095-OUT,B-695-OUT;n:type:ShaderForge.SFN_Time,id:2469,x:31116,y:33551,varname:node_2469,prsc:2;n:type:ShaderForge.SFN_Multiply,id:695,x:31349,y:33561,varname:node_695,prsc:2|A-2469-T,B-94-OUT,C-2186-OUT;n:type:ShaderForge.SFN_Vector1,id:7247,x:31539,y:33227,cmnt:amplitude,varname:node_7247,prsc:2,v1:0.1;n:type:ShaderForge.SFN_Vector1,id:94,x:30932,y:33790,cmnt:frequency,varname:node_94,prsc:2,v1:10;n:type:ShaderForge.SFN_Vector1,id:1617,x:32318,y:33591,cmnt:total amount,varname:node_1617,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:2186,x:31103,y:33864,varname:node_2186,prsc:2,v1:-1;n:type:ShaderForge.SFN_ObjectPosition,id:4148,x:30769,y:33491,varname:node_4148,prsc:2;n:type:ShaderForge.SFN_FragmentPosition,id:9045,x:30769,y:33355,varname:node_9045,prsc:2;n:type:ShaderForge.SFN_Subtract,id:4095,x:30976,y:33409,varname:node_4095,prsc:2|A-9045-XYZ,B-4148-XYZ;proporder:1304-5513-4669-1972-7115-2968-4707-4465-9206-8509-987-9354-4917;pass:END;sub:END;*/

Shader "Shader Forge/fish" {
    Properties {
        _Color ("Color", Color) = (1,0.9829615,0.8455882,1)
        _Color2 ("Color2", Color) = (0.3827227,0.7058823,0.07266434,1)
        _NoiseTexture ("NoiseTexture", 2D) = "white" {}
        _steps ("steps", Range(2, 10)) = 2
        _FloorNoisescale ("Floor Noise scale", Range(4, 0.01)) = 2
        _raysscale1 ("rays scale 1", Range(0.001, 0.5)) = 0.001
        _raysalpha ("rays alpha", Range(0, 2)) = 2
        _raysscale2 ("rays scale 2", Range(0.001, 0.5)) = 0.001
        _raysspeed ("rays speed", Range(0.001, 20)) = 1.6
        _raysNoise ("raysNoise", 2D) = "white" {}
        _raysnoiseamount ("rays noise amount", Range(0, 10)) = 10
        _raysnoisescale ("rays noise scale", Range(0, 1)) = 0.2410257
        _Rays ("Rays", 2D) = "white" {}
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
            uniform sampler2D _NoiseTexture; uniform float4 _NoiseTexture_ST;
            uniform float4 _Color2;
            uniform float _steps;
            uniform float _FloorNoisescale;
            uniform float _raysalpha;
            uniform float _raysscale1;
            uniform float _raysspeed;
            uniform sampler2D _raysNoise; uniform float4 _raysNoise_ST;
            uniform float _raysnoiseamount;
            uniform float _raysnoisescale;
            uniform float _raysscale2;
            uniform sampler2D _Rays; uniform float4 _Rays_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 vertexColor : COLOR;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float4 node_2469 = _Time;
                v.vertex.xyz += (saturate((sin((0.1*((mul(unity_ObjectToWorld, v.vertex).rgb-objPos.rgb)+(node_2469.g*10.0*(-1.0)))*6.28318530718))*0.5+0.5))*1.0);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
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
                float2 node_906 = (i.uv0*exp(_FloorNoisescale));
                float4 _NoiseTexture_var = tex2D(_NoiseTexture,TRANSFORM_TEX(node_906, _NoiseTexture));
                float node_8792 = floor(_steps);
                float3 node_3777 = saturate(floor((_NoiseTexture_var.rgb+(i.vertexColor.r*-2.0+1.0)) * node_8792) / (node_8792 - 1));
                float3 diffuseColor = lerp(_Color.rgb,(_Color2.rgb*node_3777),node_3777);
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float4 node_7661 = _Time;
                float2 node_5890 = float2(i.posWorld.r,i.posWorld.b);
                float2 node_2660 = (_raysscale1*(node_5890+node_7661.g*float2(1,1)));
                float4 node_1027 = tex2D(_Rays,TRANSFORM_TEX(node_2660, _Rays));
                float4 node_579 = _Time;
                float2 node_6595 = (i.uv0*_raysnoisescale);
                float4 _raysNoise_var = tex2D(_raysNoise,TRANSFORM_TEX(node_6595, _raysNoise));
                float2 node_3792 = ((node_5890+((node_579.g*_raysspeed)+(_raysNoise_var.r*_raysnoiseamount))*float2(0.5,0.5))*_raysscale2);
                float4 node_7043 = tex2D(_Rays,TRANSFORM_TEX(node_3792, _Rays));
                float Caustics = (_raysalpha*node_1027.a*node_7043.a*max(0,dot(lightDirection,i.normalDir)));
                float node_7097 = Caustics;
                float3 emissive = float3(node_7097,node_7097,node_7097);
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
            uniform sampler2D _NoiseTexture; uniform float4 _NoiseTexture_ST;
            uniform float4 _Color2;
            uniform float _steps;
            uniform float _FloorNoisescale;
            uniform float _raysalpha;
            uniform float _raysscale1;
            uniform float _raysspeed;
            uniform sampler2D _raysNoise; uniform float4 _raysNoise_ST;
            uniform float _raysnoiseamount;
            uniform float _raysnoisescale;
            uniform float _raysscale2;
            uniform sampler2D _Rays; uniform float4 _Rays_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 vertexColor : COLOR;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float4 node_2469 = _Time;
                v.vertex.xyz += (saturate((sin((0.1*((mul(unity_ObjectToWorld, v.vertex).rgb-objPos.rgb)+(node_2469.g*10.0*(-1.0)))*6.28318530718))*0.5+0.5))*1.0);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
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
                float2 node_906 = (i.uv0*exp(_FloorNoisescale));
                float4 _NoiseTexture_var = tex2D(_NoiseTexture,TRANSFORM_TEX(node_906, _NoiseTexture));
                float node_8792 = floor(_steps);
                float3 node_3777 = saturate(floor((_NoiseTexture_var.rgb+(i.vertexColor.r*-2.0+1.0)) * node_8792) / (node_8792 - 1));
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
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Back
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float4 posWorld : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float4 node_2469 = _Time;
                v.vertex.xyz += (saturate((sin((0.1*((mul(unity_ObjectToWorld, v.vertex).rgb-objPos.rgb)+(node_2469.g*10.0*(-1.0)))*6.28318530718))*0.5+0.5))*1.0);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
