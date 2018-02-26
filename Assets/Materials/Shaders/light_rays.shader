// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:1,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:0,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.07569204,fgcg:0.2941176,fgcb:0.09527497,fgca:1,fgde:0.007,fgrn:69.39,fgrf:161.65,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33396,y:32463,varname:node_3138,prsc:2|emission-1734-OUT,alpha-3463-OUT,voffset-9396-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:31834,y:32431,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_TexCoord,id:1703,x:31307,y:32807,varname:node_1703,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:4119,x:31713,y:32786,varname:node_4119,prsc:2|A-8623-OUT,B-9256-OUT,C-4034-OUT;n:type:ShaderForge.SFN_Tau,id:8623,x:31480,y:32722,varname:node_8623,prsc:2;n:type:ShaderForge.SFN_Lerp,id:1734,x:32141,y:32496,varname:node_1734,prsc:2|A-7241-RGB,B-5005-RGB,T-3463-OUT;n:type:ShaderForge.SFN_Color,id:5005,x:31834,y:32593,ptovrint:False,ptlb:node_5005,ptin:_node_5005,varname:node_5005,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.9659229,c3:0.6911765,c4:1;n:type:ShaderForge.SFN_Clamp01,id:9285,x:32079,y:32784,varname:node_9285,prsc:2|IN-8670-OUT;n:type:ShaderForge.SFN_ComponentMask,id:9256,x:31464,y:32826,varname:node_9256,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-1703-U;n:type:ShaderForge.SFN_Sin,id:8670,x:31904,y:32784,varname:node_8670,prsc:2|IN-4119-OUT;n:type:ShaderForge.SFN_ComponentMask,id:7612,x:31464,y:33105,varname:node_7612,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-1703-V;n:type:ShaderForge.SFN_Multiply,id:9458,x:31710,y:33078,varname:node_9458,prsc:2|A-8623-OUT,B-7612-OUT,C-4034-OUT;n:type:ShaderForge.SFN_Clamp01,id:4679,x:32077,y:33078,varname:node_4679,prsc:2|IN-6161-OUT;n:type:ShaderForge.SFN_Multiply,id:3463,x:32532,y:32785,varname:node_3463,prsc:2|A-9285-OUT,B-4679-OUT,C-2986-OUT,D-2939-OUT;n:type:ShaderForge.SFN_Sin,id:6161,x:31893,y:33078,varname:node_6161,prsc:2|IN-9458-OUT;n:type:ShaderForge.SFN_Vector1,id:4034,x:31464,y:32977,varname:node_4034,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:2986,x:32165,y:32640,varname:node_2986,prsc:2|A-7241-A,B-5005-A,C-9285-OUT;n:type:ShaderForge.SFN_Time,id:6886,x:31209,y:33643,varname:node_6886,prsc:2;n:type:ShaderForge.SFN_Cos,id:9203,x:31775,y:33880,varname:node_9203,prsc:2|IN-5513-OUT;n:type:ShaderForge.SFN_Multiply,id:5513,x:31606,y:33880,varname:node_5513,prsc:2|A-7041-OUT,B-3651-OUT;n:type:ShaderForge.SFN_Slider,id:3651,x:31235,y:33978,ptovrint:False,ptlb:speed,ptin:_speed,varname:node_3651,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:10;n:type:ShaderForge.SFN_Multiply,id:2939,x:32132,y:33858,varname:node_2939,prsc:2|A-7608-OUT,B-600-OUT;n:type:ShaderForge.SFN_Slider,id:600,x:31587,y:34095,ptovrint:False,ptlb:alpha,ptin:_alpha,varname:node_600,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_RemapRange,id:7608,x:31953,y:33849,varname:node_7608,prsc:2,frmn:-1,frmx:1,tomn:0.5,tomx:1|IN-9203-OUT;n:type:ShaderForge.SFN_Add,id:7041,x:31421,y:33794,varname:node_7041,prsc:2|A-6886-T,B-1959-X,C-1959-Y,D-1959-Z;n:type:ShaderForge.SFN_ObjectPosition,id:1959,x:31209,y:33794,varname:node_1959,prsc:2;n:type:ShaderForge.SFN_Multiply,id:9396,x:32750,y:33234,varname:node_9396,prsc:2|A-9285-OUT,B-7392-OUT,C-73-OUT,D-9203-OUT;n:type:ShaderForge.SFN_NormalVector,id:7392,x:32383,y:33299,prsc:2,pt:True;n:type:ShaderForge.SFN_Vector1,id:73,x:32519,y:33438,varname:node_73,prsc:2,v1:10;proporder:7241-5005-3651-600;pass:END;sub:END;*/

Shader "Shader Forge/light_rays" {
    Properties {
        _Color ("Color", Color) = (1,1,1,1)
        _node_5005 ("node_5005", Color) = (1,0.9659229,0.6911765,1)
        _speed ("speed", Range(0, 10)) = 1
        _alpha ("alpha", Range(0, 1)) = 1
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
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _Color;
            uniform float4 _node_5005;
            uniform float _speed;
            uniform float _alpha;
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
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float node_8623 = 6.28318530718;
                float node_4034 = 0.5;
                float node_9285 = saturate(sin((node_8623*o.uv0.r.r*node_4034)));
                float4 node_6886 = _Time;
                float node_9203 = cos(((node_6886.g+objPos.r+objPos.g+objPos.b)*_speed));
                v.vertex.xyz += (node_9285*v.normal*10.0*node_9203);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float node_8623 = 6.28318530718;
                float node_4034 = 0.5;
                float node_9285 = saturate(sin((node_8623*i.uv0.r.r*node_4034)));
                float4 node_6886 = _Time;
                float node_9203 = cos(((node_6886.g+objPos.r+objPos.g+objPos.b)*_speed));
                float node_3463 = (node_9285*saturate(sin((node_8623*i.uv0.g.r*node_4034)))*(_Color.a*_node_5005.a*node_9285)*((node_9203*0.25+0.75)*_alpha));
                float3 emissive = lerp(_Color.rgb,_node_5005.rgb,node_3463);
                float3 finalColor = emissive;
                return fixed4(finalColor,node_3463);
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
            uniform float _speed;
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
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float node_8623 = 6.28318530718;
                float node_4034 = 0.5;
                float node_9285 = saturate(sin((node_8623*o.uv0.r.r*node_4034)));
                float4 node_6886 = _Time;
                float node_9203 = cos(((node_6886.g+objPos.r+objPos.g+objPos.b)*_speed));
                v.vertex.xyz += (node_9285*v.normal*10.0*node_9203);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
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
