// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:1,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:False,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:False,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.3254902,fgcg:0.7568628,fgcb:0.8156863,fgca:1,fgde:0.01,fgrn:69.39,fgrf:161.65,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4013,x:33034,y:32688,varname:node_4013,prsc:2|emission-7560-OUT,alpha-6144-A,voffset-7473-OUT;n:type:ShaderForge.SFN_Color,id:1304,x:32183,y:32224,ptovrint:False,ptlb:MainColour,ptin:_MainColour,varname:node_1304,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.01774846,c2:0.5147059,c3:0,c4:1;n:type:ShaderForge.SFN_FragmentPosition,id:7042,x:31557,y:32460,varname:node_7042,prsc:2;n:type:ShaderForge.SFN_ObjectPosition,id:2984,x:31515,y:32695,varname:node_2984,prsc:2;n:type:ShaderForge.SFN_Subtract,id:807,x:31770,y:32579,varname:node_807,prsc:2|A-7042-XYZ,B-2984-XYZ;n:type:ShaderForge.SFN_ComponentMask,id:3916,x:31943,y:32579,varname:node_3916,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-807-OUT;n:type:ShaderForge.SFN_Lerp,id:7236,x:32496,y:32535,varname:node_7236,prsc:2|A-1304-RGB,B-8057-RGB,T-7111-OUT;n:type:ShaderForge.SFN_Tex2d,id:6351,x:32581,y:31166,ptovrint:False,ptlb:_Texture5,ptin:__Texture5,varname:__Texture5,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:8057,x:32183,y:32389,ptovrint:False,ptlb:Tips,ptin:_Tips,varname:_Color_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.8206897,c2:1,c3:0,c4:1;n:type:ShaderForge.SFN_Tex2d,id:6144,x:32477,y:32723,ptovrint:False,ptlb:Grass,ptin:_Grass,varname:node_6144,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:81fd43b8209ded74f84406eb6776990f,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:7560,x:32706,y:32601,varname:node_7560,prsc:2|A-7236-OUT,B-6144-RGB;n:type:ShaderForge.SFN_Clamp01,id:7111,x:32317,y:32581,varname:node_7111,prsc:2|IN-6783-OUT;n:type:ShaderForge.SFN_Multiply,id:6783,x:32146,y:32626,varname:node_6783,prsc:2|A-3916-OUT,B-9418-OUT;n:type:ShaderForge.SFN_Slider,id:9418,x:31737,y:32830,ptovrint:False,ptlb:amount,ptin:_amount,varname:node_9418,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5726496,max:1;n:type:ShaderForge.SFN_Multiply,id:7473,x:32259,y:33112,varname:node_7473,prsc:2|A-7085-OUT,B-4789-OUT,C-9024-OUT;n:type:ShaderForge.SFN_NormalVector,id:7085,x:31737,y:33011,prsc:2,pt:False;n:type:ShaderForge.SFN_Time,id:9857,x:30859,y:33330,varname:node_9857,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:1877,x:30859,y:33145,varname:node_1877,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_ComponentMask,id:7606,x:31037,y:33145,varname:node_7606,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-1877-UVOUT;n:type:ShaderForge.SFN_Multiply,id:8621,x:31495,y:33201,varname:node_8621,prsc:2|A-334-OUT,B-3384-OUT,C-8554-OUT;n:type:ShaderForge.SFN_Tau,id:334,x:31328,y:33046,varname:node_334,prsc:2;n:type:ShaderForge.SFN_Slider,id:8554,x:31029,y:33526,ptovrint:False,ptlb:frequency,ptin:_frequency,varname:node_8554,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.8205139,max:4;n:type:ShaderForge.SFN_Add,id:3384,x:31265,y:33226,varname:node_3384,prsc:2|A-7606-OUT,B-9857-T;n:type:ShaderForge.SFN_Sin,id:3952,x:31711,y:33220,varname:node_3952,prsc:2|IN-8621-OUT;n:type:ShaderForge.SFN_Slider,id:9024,x:31904,y:33387,ptovrint:False,ptlb:Amplitude,ptin:_Amplitude,varname:node_9024,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_RemapRange,id:4789,x:31916,y:33181,varname:node_4789,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-3952-OUT;proporder:1304-8057-6144-9418-8554-9024;pass:END;sub:END;*/

Shader "Shader Forge/grass" {
    Properties {
        _MainColour ("MainColour", Color) = (0.01774846,0.5147059,0,1)
        _Tips ("Tips", Color) = (0.8206897,1,0,1)
        _Grass ("Grass", 2D) = "white" {}
        _amount ("amount", Range(0, 1)) = 0.5726496
        _frequency ("frequency", Range(0, 4)) = 0.8205139
        _Amplitude ("Amplitude", Range(0, 1)) = 1
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
            "DisableBatching"="True"
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
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _MainColour;
            uniform float4 _Tips;
            uniform sampler2D _Grass; uniform float4 _Grass_ST;
            uniform float _amount;
            uniform float _frequency;
            uniform float _Amplitude;
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
                UNITY_FOG_COORDS(3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float4 node_9857 = _Time;
                v.vertex.xyz += (v.normal*(sin((6.28318530718*(o.uv0.r+node_9857.g)*_frequency))*0.5+0.5)*_Amplitude);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float4 _Grass_var = tex2D(_Grass,TRANSFORM_TEX(i.uv0, _Grass));
                float3 emissive = (lerp(_MainColour.rgb,_Tips.rgb,saturate(((i.posWorld.rgb-objPos.rgb).g*_amount)))*_Grass_var.rgb);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,_Grass_var.a);
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
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _frequency;
            uniform float _Amplitude;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_9857 = _Time;
                v.vertex.xyz += (v.normal*(sin((6.28318530718*(o.uv0.r+node_9857.g)*_frequency))*0.5+0.5)*_Amplitude);
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
