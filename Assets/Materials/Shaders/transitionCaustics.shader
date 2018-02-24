// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.07569204,fgcg:0.2941176,fgcb:0.09527497,fgca:1,fgde:0.01,fgrn:69.39,fgrf:161.65,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4013,x:33065,y:32792,varname:node_4013,prsc:2|diff-589-OUT,emission-7097-OUT;n:type:ShaderForge.SFN_Color,id:1304,x:31896,y:32562,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_1304,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.9829615,c3:0.8455882,c4:1;n:type:ShaderForge.SFN_Lerp,id:589,x:32240,y:32794,varname:node_589,prsc:2|A-1304-RGB,B-6352-OUT,T-3777-OUT;n:type:ShaderForge.SFN_Tex2d,id:4669,x:30995,y:32665,ptovrint:False,ptlb:NoiseTexture,ptin:_NoiseTexture,varname:node_4669,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:5cf7c6c1bb5fb6a4bb93891200c70c4d,ntxv:0,isnm:False|UVIN-906-OUT;n:type:ShaderForge.SFN_Multiply,id:6352,x:31907,y:32736,varname:node_6352,prsc:2|A-5513-RGB,B-3777-OUT;n:type:ShaderForge.SFN_Color,id:5513,x:31662,y:32562,ptovrint:False,ptlb:Color2,ptin:_Color2,varname:node_5513,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.3827227,c2:0.7058823,c3:0.07266434,c4:1;n:type:ShaderForge.SFN_VertexColor,id:2851,x:30698,y:32963,varname:node_2851,prsc:2;n:type:ShaderForge.SFN_Add,id:5522,x:31314,y:32767,varname:node_5522,prsc:2|A-4669-RGB,B-6516-OUT;n:type:ShaderForge.SFN_Posterize,id:3065,x:31528,y:32922,varname:node_3065,prsc:2|IN-5522-OUT,STPS-8792-OUT;n:type:ShaderForge.SFN_Clamp01,id:3777,x:31714,y:32922,varname:node_3777,prsc:2|IN-3065-OUT;n:type:ShaderForge.SFN_RemapRange,id:6516,x:31041,y:32938,varname:node_6516,prsc:2,frmn:0,frmx:1,tomn:1,tomx:-1|IN-2851-R;n:type:ShaderForge.SFN_Slider,id:1972,x:30719,y:33181,ptovrint:False,ptlb:steps,ptin:_steps,varname:node_1972,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:2,cur:2,max:10;n:type:ShaderForge.SFN_Floor,id:8792,x:31250,y:33128,varname:node_8792,prsc:2|IN-1972-OUT;n:type:ShaderForge.SFN_TexCoord,id:1621,x:30521,y:32595,varname:node_1621,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:906,x:30789,y:32640,varname:node_906,prsc:2|A-1621-UVOUT,B-3934-OUT;n:type:ShaderForge.SFN_Slider,id:7115,x:30306,y:32884,ptovrint:False,ptlb:Floor Noise scale,ptin:_FloorNoisescale,varname:node_7115,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:4,cur:2,max:0.01;n:type:ShaderForge.SFN_Exp,id:3934,x:30618,y:32797,varname:node_3934,prsc:2,et:0|IN-7115-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:5709,x:28754,y:32151,varname:node_5709,prsc:2;n:type:ShaderForge.SFN_Append,id:5890,x:29053,y:32250,varname:node_5890,prsc:2|A-5709-X,B-5709-Z;n:type:ShaderForge.SFN_Tex2d,id:1592,x:30076,y:32018,ptovrint:False,ptlb:rays 1,ptin:_rays1,varname:node_1027,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:267f5ec9b21a9d24e8130748651997a5,ntxv:0,isnm:False|UVIN-2660-OUT;n:type:ShaderForge.SFN_Slider,id:4707,x:30010,y:31734,ptovrint:False,ptlb:rays alpha,ptin:_raysalpha,varname:node_817,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2,max:2;n:type:ShaderForge.SFN_Multiply,id:2660,x:29647,y:32014,varname:node_2660,prsc:2|A-2968-OUT,B-5992-UVOUT;n:type:ShaderForge.SFN_Slider,id:2968,x:29284,y:31633,ptovrint:False,ptlb:rays scale 1,ptin:_raysscale1,varname:node_127,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.001,cur:0.001,max:0.5;n:type:ShaderForge.SFN_Panner,id:5992,x:29317,y:32167,varname:node_5992,prsc:2,spu:1,spv:1|UVIN-5890-OUT;n:type:ShaderForge.SFN_Multiply,id:1066,x:28754,y:32312,varname:node_1066,prsc:2|A-579-T,B-9206-OUT;n:type:ShaderForge.SFN_Slider,id:9206,x:28103,y:32330,ptovrint:False,ptlb:rays speed,ptin:_raysspeed,varname:node_7379,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.001,cur:1.6,max:20;n:type:ShaderForge.SFN_Time,id:579,x:28226,y:32190,varname:node_579,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:8509,x:28075,y:32449,ptovrint:False,ptlb:raysNoise,ptin:_raysNoise,varname:node_6128,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-6595-OUT;n:type:ShaderForge.SFN_Multiply,id:2083,x:28754,y:32469,varname:node_2083,prsc:2|A-8509-R,B-987-OUT;n:type:ShaderForge.SFN_Slider,id:987,x:28110,y:32712,ptovrint:False,ptlb:rays noise amount,ptin:_raysnoiseamount,varname:node_4147,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:10,max:10;n:type:ShaderForge.SFN_Add,id:2479,x:29075,y:32417,varname:node_2479,prsc:2|A-1066-OUT,B-2083-OUT;n:type:ShaderForge.SFN_TexCoord,id:9683,x:27705,y:32449,varname:node_9683,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:6595,x:27893,y:32449,varname:node_6595,prsc:2|A-9683-UVOUT,B-9354-OUT;n:type:ShaderForge.SFN_Slider,id:9354,x:27575,y:32637,ptovrint:False,ptlb:rays noise scale,ptin:_raysnoisescale,varname:node_359,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2410257,max:1;n:type:ShaderForge.SFN_Multiply,id:5668,x:30620,y:32064,varname:node_5668,prsc:2|A-4707-OUT,B-1592-A,C-2649-A,D-6813-OUT;n:type:ShaderForge.SFN_Tex2d,id:2649,x:30076,y:32220,ptovrint:False,ptlb:rays 2,ptin:_rays2,varname:node_7043,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:267f5ec9b21a9d24e8130748651997a5,ntxv:0,isnm:False|UVIN-3792-OUT;n:type:ShaderForge.SFN_Multiply,id:3792,x:29741,y:32419,varname:node_3792,prsc:2|A-1335-UVOUT,B-4465-OUT;n:type:ShaderForge.SFN_Slider,id:4465,x:29171,y:32586,ptovrint:False,ptlb:rays scale 2,ptin:_raysscale2,varname:node_1565,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.001,cur:0.001,max:0.5;n:type:ShaderForge.SFN_Panner,id:1335,x:29328,y:32352,varname:node_1335,prsc:2,spu:0.5,spv:0.5|UVIN-5890-OUT,DIST-2479-OUT;n:type:ShaderForge.SFN_Dot,id:6813,x:30620,y:31885,varname:node_6813,prsc:2,dt:1|A-7980-OUT,B-7820-OUT;n:type:ShaderForge.SFN_LightVector,id:7980,x:30420,y:31716,varname:node_7980,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:7820,x:30451,y:31851,prsc:2,pt:False;n:type:ShaderForge.SFN_Set,id:5555,x:30791,y:32064,varname:Caustics,prsc:2|IN-5668-OUT;n:type:ShaderForge.SFN_Get,id:7097,x:32435,y:32866,varname:node_7097,prsc:2|IN-5555-OUT;proporder:1304-5513-4669-1972-7115-1592-2968-2649-4707-4465-9206-8509-987-9354;pass:END;sub:END;*/

Shader "Shader Forge/transitionCaustics" {
    Properties {
        _Color ("Color", Color) = (1,0.9829615,0.8455882,1)
        _Color2 ("Color2", Color) = (0.3827227,0.7058823,0.07266434,1)
        _NoiseTexture ("NoiseTexture", 2D) = "white" {}
        _steps ("steps", Range(2, 10)) = 2
        _FloorNoisescale ("Floor Noise scale", Range(4, 0.01)) = 2
        _rays1 ("rays 1", 2D) = "white" {}
        _raysscale1 ("rays scale 1", Range(0.001, 0.5)) = 0.001
        _rays2 ("rays 2", 2D) = "white" {}
        _raysalpha ("rays alpha", Range(0, 2)) = 2
        _raysscale2 ("rays scale 2", Range(0.001, 0.5)) = 0.001
        _raysspeed ("rays speed", Range(0.001, 20)) = 1.6
        _raysNoise ("raysNoise", 2D) = "white" {}
        _raysnoiseamount ("rays noise amount", Range(0, 10)) = 10
        _raysnoisescale ("rays noise scale", Range(0, 1)) = 0.2410257
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
            uniform sampler2D _rays1; uniform float4 _rays1_ST;
            uniform float _raysalpha;
            uniform float _raysscale1;
            uniform float _raysspeed;
            uniform sampler2D _raysNoise; uniform float4 _raysNoise_ST;
            uniform float _raysnoiseamount;
            uniform float _raysnoisescale;
            uniform sampler2D _rays2; uniform float4 _rays2_ST;
            uniform float _raysscale2;
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
                float2 node_906 = (i.uv0*exp(_FloorNoisescale));
                float4 _NoiseTexture_var = tex2D(_NoiseTexture,TRANSFORM_TEX(node_906, _NoiseTexture));
                float node_8792 = floor(_steps);
                float3 node_3777 = saturate(floor((_NoiseTexture_var.rgb+(i.vertexColor.r*-2.0+1.0)) * node_8792) / (node_8792 - 1));
                float3 node_589 = lerp(_Color.rgb,(_Color2.rgb*node_3777),node_3777);
                float3 diffuseColor = node_589;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float4 node_9118 = _Time;
                float2 node_5890 = float2(i.posWorld.r,i.posWorld.b);
                float2 node_2660 = (_raysscale1*(node_5890+node_9118.g*float2(1,1)));
                float4 _rays1_var = tex2D(_rays1,TRANSFORM_TEX(node_2660, _rays1));
                float4 node_579 = _Time;
                float2 node_6595 = (i.uv0*_raysnoisescale);
                float4 _raysNoise_var = tex2D(_raysNoise,TRANSFORM_TEX(node_6595, _raysNoise));
                float2 node_3792 = ((node_5890+((node_579.g*_raysspeed)+(_raysNoise_var.r*_raysnoiseamount))*float2(0.5,0.5))*_raysscale2);
                float4 _rays2_var = tex2D(_rays2,TRANSFORM_TEX(node_3792, _rays2));
                float Caustics = (_raysalpha*_rays1_var.a*_rays2_var.a*max(0,dot(lightDirection,i.normalDir)));
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
            uniform sampler2D _rays1; uniform float4 _rays1_ST;
            uniform float _raysalpha;
            uniform float _raysscale1;
            uniform float _raysspeed;
            uniform sampler2D _raysNoise; uniform float4 _raysNoise_ST;
            uniform float _raysnoiseamount;
            uniform float _raysnoisescale;
            uniform sampler2D _rays2; uniform float4 _rays2_ST;
            uniform float _raysscale2;
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
                float2 node_906 = (i.uv0*exp(_FloorNoisescale));
                float4 _NoiseTexture_var = tex2D(_NoiseTexture,TRANSFORM_TEX(node_906, _NoiseTexture));
                float node_8792 = floor(_steps);
                float3 node_3777 = saturate(floor((_NoiseTexture_var.rgb+(i.vertexColor.r*-2.0+1.0)) * node_8792) / (node_8792 - 1));
                float3 node_589 = lerp(_Color.rgb,(_Color2.rgb*node_3777),node_3777);
                float3 diffuseColor = node_589;
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
