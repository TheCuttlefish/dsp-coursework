// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-4682-OUT,alpha-8292-OUT;n:type:ShaderForge.SFN_TexCoord,id:6746,x:31391,y:32911,varname:node_6746,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Slider,id:1744,x:31499,y:33170,ptovrint:False,ptlb:node_1744,ptin:_node_1744,varname:node_1744,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.903718,max:5;n:type:ShaderForge.SFN_Length,id:5823,x:31810,y:32939,varname:node_5823,prsc:2|IN-8847-OUT;n:type:ShaderForge.SFN_RemapRange,id:8847,x:31588,y:32921,varname:node_8847,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-6746-UVOUT;n:type:ShaderForge.SFN_OneMinus,id:4698,x:31989,y:32939,varname:node_4698,prsc:2|IN-5823-OUT;n:type:ShaderForge.SFN_Clamp01,id:2253,x:32171,y:32951,varname:node_2253,prsc:2|IN-4698-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:1612,x:31535,y:32612,ptovrint:False,ptlb:Electricity,ptin:_Electricity,varname:node_1612,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:4f918451975e19044ae5d7a0ce7b9470,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:6539,x:31775,y:32495,varname:node_6539,prsc:2,tex:4f918451975e19044ae5d7a0ce7b9470,ntxv:0,isnm:False|UVIN-192-UVOUT,TEX-1612-TEX;n:type:ShaderForge.SFN_Tex2d,id:1961,x:31775,y:32680,varname:node_1961,prsc:2,tex:4f918451975e19044ae5d7a0ce7b9470,ntxv:0,isnm:False|UVIN-2435-UVOUT,TEX-1612-TEX;n:type:ShaderForge.SFN_Panner,id:192,x:31385,y:32460,varname:node_192,prsc:2,spu:0.2,spv:0.2|UVIN-7871-OUT;n:type:ShaderForge.SFN_TexCoord,id:1551,x:30929,y:32462,varname:node_1551,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:2435,x:31369,y:32683,varname:node_2435,prsc:2,spu:0.3,spv:-0.3|UVIN-1551-UVOUT;n:type:ShaderForge.SFN_Multiply,id:4682,x:32083,y:32629,varname:node_4682,prsc:2|A-6539-RGB,B-1961-RGB,C-7486-OUT;n:type:ShaderForge.SFN_Multiply,id:8292,x:32400,y:32893,varname:node_8292,prsc:2|A-374-OUT,B-2253-OUT;n:type:ShaderForge.SFN_Multiply,id:374,x:32099,y:32772,varname:node_374,prsc:2|A-6539-A,B-1961-A;n:type:ShaderForge.SFN_Multiply,id:7871,x:31208,y:32341,varname:node_7871,prsc:2|A-2640-OUT,B-1551-UVOUT;n:type:ShaderForge.SFN_ValueProperty,id:2640,x:30985,y:32256,ptovrint:False,ptlb:node_2640,ptin:_node_2640,varname:node_2640,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_Slider,id:7486,x:31648,y:32409,ptovrint:False,ptlb:Intensity,ptin:_Intensity,varname:node_7486,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:1,max:3;proporder:1744-1612-2640-7486;pass:END;sub:END;*/

Shader "Shader Forge/spark" {
    Properties {
        _node_1744 ("node_1744", Range(0, 5)) = 1.903718
        _Electricity ("Electricity", 2D) = "white" {}
        _node_2640 ("node_2640", Float ) = 0.5
        _Intensity ("Intensity", Range(1, 3)) = 1
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
            uniform sampler2D _Electricity; uniform float4 _Electricity_ST;
            uniform float _node_2640;
            uniform float _Intensity;
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
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
////// Lighting:
////// Emissive:
                float4 node_480 = _Time;
                float2 node_192 = ((_node_2640*i.uv0)+node_480.g*float2(0.2,0.2));
                float4 node_6539 = tex2D(_Electricity,TRANSFORM_TEX(node_192, _Electricity));
                float2 node_2435 = (i.uv0+node_480.g*float2(0.3,-0.3));
                float4 node_1961 = tex2D(_Electricity,TRANSFORM_TEX(node_2435, _Electricity));
                float3 emissive = (node_6539.rgb*node_1961.rgb*_Intensity);
                float3 finalColor = emissive;
                return fixed4(finalColor,((node_6539.a*node_1961.a)*saturate((1.0 - length((i.uv0*2.0+-1.0))))));
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
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
