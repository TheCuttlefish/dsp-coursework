// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.3254902,fgcg:0.7568628,fgcb:0.8156863,fgca:1,fgde:0.01,fgrn:69.39,fgrf:161.65,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4013,x:32664,y:31859,varname:node_4013,prsc:2|diff-9085-OUT,emission-7871-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:171,x:29292,y:31457,varname:node_171,prsc:2;n:type:ShaderForge.SFN_Append,id:7262,x:29544,y:31457,varname:node_7262,prsc:2|A-171-X,B-171-Z;n:type:ShaderForge.SFN_Tex2d,id:1027,x:31714,y:31886,ptovrint:False,ptlb:rays 1,ptin:_rays1,varname:node_1027,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:267f5ec9b21a9d24e8130748651997a5,ntxv:0,isnm:False|UVIN-4171-OUT;n:type:ShaderForge.SFN_Slider,id:817,x:31648,y:31602,ptovrint:False,ptlb:rays alpha,ptin:_raysalpha,varname:node_817,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2,max:2;n:type:ShaderForge.SFN_Multiply,id:4171,x:31285,y:31882,varname:node_4171,prsc:2|A-127-OUT,B-7983-UVOUT;n:type:ShaderForge.SFN_Slider,id:127,x:30762,y:31764,ptovrint:False,ptlb:rays scale 1,ptin:_raysscale1,varname:node_127,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.001,cur:0.001,max:0.5;n:type:ShaderForge.SFN_Panner,id:7983,x:30955,y:32035,varname:node_7983,prsc:2,spu:1,spv:1|UVIN-2331-OUT,DIST-416-OUT;n:type:ShaderForge.SFN_Multiply,id:6739,x:30234,y:31861,varname:node_6739,prsc:2|A-6124-T,B-7379-OUT;n:type:ShaderForge.SFN_Slider,id:7379,x:29879,y:31924,ptovrint:False,ptlb:rays speed,ptin:_raysspeed,varname:node_7379,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.001,cur:1.6,max:20;n:type:ShaderForge.SFN_Set,id:657,x:29803,y:31483,varname:worldScale,prsc:2|IN-7262-OUT;n:type:ShaderForge.SFN_Get,id:2331,x:30590,y:32039,varname:node_2331,prsc:2|IN-657-OUT;n:type:ShaderForge.SFN_Time,id:6124,x:30036,y:31780,varname:node_6124,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:6128,x:29713,y:32317,ptovrint:False,ptlb:noise map,ptin:_noisemap,varname:node_6128,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-202-OUT;n:type:ShaderForge.SFN_Multiply,id:8894,x:30242,y:32341,varname:node_8894,prsc:2|A-6128-R,B-4147-OUT;n:type:ShaderForge.SFN_Slider,id:4147,x:29748,y:32580,ptovrint:False,ptlb:noise amount,ptin:_noiseamount,varname:node_4147,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:10,max:10;n:type:ShaderForge.SFN_Add,id:416,x:30639,y:32164,varname:node_416,prsc:2|A-6739-OUT,B-8894-OUT;n:type:ShaderForge.SFN_TexCoord,id:8925,x:29343,y:32317,varname:node_8925,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:202,x:29531,y:32317,varname:node_202,prsc:2|A-8925-UVOUT,B-359-OUT;n:type:ShaderForge.SFN_Slider,id:359,x:29213,y:32505,ptovrint:False,ptlb:noise scale,ptin:_noisescale,varname:node_359,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.6,max:1;n:type:ShaderForge.SFN_Multiply,id:7871,x:32258,y:31932,varname:node_7871,prsc:2|A-817-OUT,B-1027-A,C-7043-A,D-1931-OUT;n:type:ShaderForge.SFN_Tex2d,id:7043,x:31714,y:32088,ptovrint:False,ptlb:rays 2,ptin:_rays2,varname:node_7043,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:267f5ec9b21a9d24e8130748651997a5,ntxv:0,isnm:False|UVIN-8555-OUT;n:type:ShaderForge.SFN_Multiply,id:8555,x:31379,y:32287,varname:node_8555,prsc:2|A-6045-UVOUT,B-1565-OUT;n:type:ShaderForge.SFN_Slider,id:1565,x:30759,y:32420,ptovrint:False,ptlb:rays scale 2,ptin:_raysscale2,varname:node_1565,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.001,cur:0.001,max:0.5;n:type:ShaderForge.SFN_Panner,id:6045,x:30966,y:32220,varname:node_6045,prsc:2,spu:0.5,spv:0.5|UVIN-2331-OUT,DIST-416-OUT;n:type:ShaderForge.SFN_Dot,id:1931,x:32258,y:31753,varname:node_1931,prsc:2,dt:1|A-2405-OUT,B-5870-OUT;n:type:ShaderForge.SFN_LightVector,id:2405,x:32058,y:31584,varname:node_2405,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:5870,x:32089,y:31719,prsc:2,pt:False;n:type:ShaderForge.SFN_VertexColor,id:3794,x:32271,y:31609,varname:node_3794,prsc:2;n:type:ShaderForge.SFN_Multiply,id:9085,x:32472,y:31560,varname:node_9085,prsc:2|A-5816-RGB,B-3794-RGB;n:type:ShaderForge.SFN_Color,id:5816,x:32271,y:31434,ptovrint:False,ptlb:Colour,ptin:_Colour,varname:node_5816,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;proporder:6128-359-4147-1027-127-7043-1565-817-7379-5816;pass:END;sub:END;*/

Shader "Shader Forge/SandVertexPaint" {
    Properties {
        _noisemap ("noise map", 2D) = "white" {}
        _noisescale ("noise scale", Range(0, 1)) = 0.6
        _noiseamount ("noise amount", Range(0, 10)) = 10
        _rays1 ("rays 1", 2D) = "white" {}
        _raysscale1 ("rays scale 1", Range(0.001, 0.5)) = 0.001
        _rays2 ("rays 2", 2D) = "white" {}
        _raysscale2 ("rays scale 2", Range(0.001, 0.5)) = 0.001
        _raysalpha ("rays alpha", Range(0, 2)) = 2
        _raysspeed ("rays speed", Range(0.001, 20)) = 1.6
        _Colour ("Colour", Color) = (0.5,0.5,0.5,1)
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
            uniform sampler2D _rays1; uniform float4 _rays1_ST;
            uniform float _raysalpha;
            uniform float _raysscale1;
            uniform float _raysspeed;
            uniform sampler2D _noisemap; uniform float4 _noisemap_ST;
            uniform float _noiseamount;
            uniform float _noisescale;
            uniform sampler2D _rays2; uniform float4 _rays2_ST;
            uniform float _raysscale2;
            uniform float4 _Colour;
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
                float3 diffuseColor = (_Colour.rgb*i.vertexColor.rgb);
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float4 node_6124 = _Time;
                float2 node_202 = (i.uv0*_noisescale);
                float4 _noisemap_var = tex2D(_noisemap,TRANSFORM_TEX(node_202, _noisemap));
                float node_416 = ((node_6124.g*_raysspeed)+(_noisemap_var.r*_noiseamount));
                float2 worldScale = float2(i.posWorld.r,i.posWorld.b);
                float2 node_2331 = worldScale;
                float2 node_4171 = (_raysscale1*(node_2331+node_416*float2(1,1)));
                float4 _rays1_var = tex2D(_rays1,TRANSFORM_TEX(node_4171, _rays1));
                float2 node_8555 = ((node_2331+node_416*float2(0.5,0.5))*_raysscale2);
                float4 _rays2_var = tex2D(_rays2,TRANSFORM_TEX(node_8555, _rays2));
                float node_7871 = (_raysalpha*_rays1_var.a*_rays2_var.a*max(0,dot(lightDirection,i.normalDir)));
                float3 emissive = float3(node_7871,node_7871,node_7871);
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
            uniform sampler2D _rays1; uniform float4 _rays1_ST;
            uniform float _raysalpha;
            uniform float _raysscale1;
            uniform float _raysspeed;
            uniform sampler2D _noisemap; uniform float4 _noisemap_ST;
            uniform float _noiseamount;
            uniform float _noisescale;
            uniform sampler2D _rays2; uniform float4 _rays2_ST;
            uniform float _raysscale2;
            uniform float4 _Colour;
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
                float3 diffuseColor = (_Colour.rgb*i.vertexColor.rgb);
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
