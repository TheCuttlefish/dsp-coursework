// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.07569204,fgcg:0.2941176,fgcb:0.09527497,fgca:1,fgde:0.007,fgrn:69.39,fgrf:161.65,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32709,y:32715,varname:node_3138,prsc:2|emission-4098-OUT,alpha-1507-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:31743,y:32198,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.9432048,c3:0.4852941,c4:1;n:type:ShaderForge.SFN_TexCoord,id:8609,x:31037,y:32847,varname:node_8609,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Length,id:9053,x:31364,y:32847,varname:node_9053,prsc:2|IN-1970-OUT;n:type:ShaderForge.SFN_RemapRange,id:1970,x:31209,y:32847,varname:node_1970,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-8609-UVOUT;n:type:ShaderForge.SFN_Floor,id:1871,x:31731,y:32850,varname:node_1871,prsc:2|IN-7100-OUT;n:type:ShaderForge.SFN_Add,id:2835,x:31547,y:32718,varname:node_2835,prsc:2|A-6601-OUT,B-9053-OUT;n:type:ShaderForge.SFN_Floor,id:9773,x:31731,y:32718,varname:node_9773,prsc:2|IN-2835-OUT;n:type:ShaderForge.SFN_OneMinus,id:7100,x:31547,y:32850,varname:node_7100,prsc:2|IN-9053-OUT;n:type:ShaderForge.SFN_Add,id:4761,x:31916,y:32769,varname:node_4761,prsc:2|A-9773-OUT,B-1871-OUT;n:type:ShaderForge.SFN_Slider,id:6601,x:31147,y:32718,ptovrint:False,ptlb:inner circle,ptin:_innercircle,varname:node_6601,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.04352824,max:0.5;n:type:ShaderForge.SFN_Multiply,id:1507,x:32316,y:32878,varname:node_1507,prsc:2|A-4761-OUT,B-4345-OUT,C-8609-V;n:type:ShaderForge.SFN_Slider,id:4345,x:31955,y:33022,ptovrint:False,ptlb:alpha,ptin:_alpha,varname:node_4345,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.01,cur:0.03741411,max:1;n:type:ShaderForge.SFN_Multiply,id:4098,x:32221,y:32657,varname:node_4098,prsc:2|A-6904-OUT,B-4761-OUT;n:type:ShaderForge.SFN_Color,id:6830,x:31743,y:32379,ptovrint:False,ptlb:Colour2,ptin:_Colour2,varname:node_6830,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.7724138,c3:1,c4:1;n:type:ShaderForge.SFN_Lerp,id:6904,x:32126,y:32296,varname:node_6904,prsc:2|A-7241-RGB,B-6830-RGB,T-9315-OUT;n:type:ShaderForge.SFN_Time,id:1398,x:31731,y:32540,varname:node_1398,prsc:2;n:type:ShaderForge.SFN_Sin,id:9315,x:31895,y:32521,varname:node_9315,prsc:2|IN-1398-T;proporder:7241-6601-4345-6830;pass:END;sub:END;*/

Shader "Shader Forge/bubble" {
    Properties {
        _Color ("Color", Color) = (1,0.9432048,0.4852941,1)
        _innercircle ("inner circle", Range(0, 0.5)) = 0.04352824
        _alpha ("alpha", Range(0.01, 1)) = 0.03741411
        _Colour2 ("Colour2", Color) = (0.5,0.7724138,1,1)
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
            uniform float _innercircle;
            uniform float _alpha;
            uniform float4 _Colour2;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float4 node_1398 = _Time;
                float node_9053 = length((i.uv0*2.0+-1.0));
                float node_4761 = (floor((_innercircle+node_9053))+floor((1.0 - node_9053)));
                float3 emissive = (lerp(_Color.rgb,_Colour2.rgb,sin(node_1398.g))*node_4761);
                float3 finalColor = emissive;
                return fixed4(finalColor,(node_4761*_alpha*i.uv0.g));
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
