// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.07569204,fgcg:0.2941176,fgcb:0.09527497,fgca:1,fgde:0.007,fgrn:69.39,fgrf:161.65,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4013,x:33171,y:32382,varname:node_4013,prsc:2|emission-462-RGB,alpha-4549-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:1153,x:31478,y:32663,varname:node_1153,prsc:2;n:type:ShaderForge.SFN_ObjectPosition,id:4321,x:31478,y:32813,varname:node_4321,prsc:2;n:type:ShaderForge.SFN_Subtract,id:7275,x:31905,y:32796,varname:node_7275,prsc:2|A-1153-XYZ,B-4321-XYZ;n:type:ShaderForge.SFN_Distance,id:4358,x:32114,y:32853,varname:node_4358,prsc:2|A-7275-OUT,B-3098-OUT;n:type:ShaderForge.SFN_Color,id:462,x:32638,y:31939,ptovrint:False,ptlb:c1,ptin:_c1,varname:node_462,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.7241379,c3:0,c4:1;n:type:ShaderForge.SFN_Multiply,id:9012,x:32403,y:32856,varname:node_9012,prsc:2|A-4358-OUT,B-2360-OUT;n:type:ShaderForge.SFN_Slider,id:2360,x:31987,y:33006,ptovrint:False,ptlb:area size,ptin:_areasize,varname:node_2360,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.005,max:0.05;n:type:ShaderForge.SFN_ObjectPosition,id:9491,x:31103,y:32874,varname:node_9491,prsc:2;n:type:ShaderForge.SFN_Subtract,id:3077,x:31317,y:32992,varname:node_3077,prsc:2|A-9491-XYZ,B-8591-OUT;n:type:ShaderForge.SFN_ViewPosition,id:6310,x:30877,y:33017,varname:node_6310,prsc:2;n:type:ShaderForge.SFN_Multiply,id:3098,x:31876,y:33060,varname:node_3098,prsc:2|A-3077-OUT,B-623-OUT;n:type:ShaderForge.SFN_Vector1,id:623,x:31692,y:33172,varname:node_623,prsc:2,v1:-1;n:type:ShaderForge.SFN_Add,id:8591,x:31103,y:33046,varname:node_8591,prsc:2|A-6310-XYZ,B-3803-OUT;n:type:ShaderForge.SFN_NormalVector,id:3803,x:30877,y:33127,prsc:2,pt:False;n:type:ShaderForge.SFN_Power,id:4419,x:32621,y:32838,varname:node_4419,prsc:2|VAL-9012-OUT,EXP-7084-OUT;n:type:ShaderForge.SFN_Clamp01,id:1806,x:32595,y:32626,varname:node_1806,prsc:2|IN-4419-OUT;n:type:ShaderForge.SFN_Slider,id:7084,x:32270,y:33128,ptovrint:False,ptlb:area power,ptin:_areapower,varname:node_7084,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2,max:20;n:type:ShaderForge.SFN_Multiply,id:4549,x:32705,y:32505,varname:node_4549,prsc:2|A-462-A,B-1806-OUT,C-8082-OUT;n:type:ShaderForge.SFN_TexCoord,id:1044,x:30682,y:32156,varname:node_1044,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:5203,x:31088,y:32135,varname:node_5203,prsc:2|A-9080-OUT,B-9226-OUT,C-9525-OUT;n:type:ShaderForge.SFN_Tau,id:9080,x:30855,y:32071,varname:node_9080,prsc:2;n:type:ShaderForge.SFN_Clamp01,id:4905,x:31454,y:32133,varname:node_4905,prsc:2|IN-5744-OUT;n:type:ShaderForge.SFN_ComponentMask,id:9226,x:30839,y:32175,varname:node_9226,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-1044-U;n:type:ShaderForge.SFN_Sin,id:5744,x:31279,y:32133,varname:node_5744,prsc:2|IN-5203-OUT;n:type:ShaderForge.SFN_ComponentMask,id:7260,x:30839,y:32454,varname:node_7260,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-1044-V;n:type:ShaderForge.SFN_Multiply,id:153,x:31085,y:32427,varname:node_153,prsc:2|A-9080-OUT,B-7260-OUT,C-9525-OUT;n:type:ShaderForge.SFN_Clamp01,id:2813,x:31452,y:32427,varname:node_2813,prsc:2|IN-3757-OUT;n:type:ShaderForge.SFN_Sin,id:3757,x:31268,y:32427,varname:node_3757,prsc:2|IN-153-OUT;n:type:ShaderForge.SFN_Vector1,id:9525,x:30839,y:32326,varname:node_9525,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:8082,x:31847,y:32266,varname:node_8082,prsc:2|A-4905-OUT,B-2813-OUT;proporder:462-2360-7084;pass:END;sub:END;*/

Shader "Shader Forge/proxProtal" {
    Properties {
        _c1 ("c1", Color) = (1,0.7241379,0,1)
        _areasize ("area size", Range(0, 0.05)) = 0.005
        _areapower ("area power", Range(0, 20)) = 2
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
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _c1;
            uniform float _areasize;
            uniform float _areapower;
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
                float3 emissive = _c1.rgb;
                float3 finalColor = emissive;
                float node_9080 = 6.28318530718;
                float node_9525 = 0.5;
                fixed4 finalRGBA = fixed4(finalColor,(_c1.a*saturate(pow((distance((i.posWorld.rgb-objPos.rgb),((objPos.rgb-(_WorldSpaceCameraPos+i.normalDir))*(-1.0)))*_areasize),_areapower))*(saturate(sin((node_9080*i.uv0.r.r*node_9525)))*saturate(sin((node_9080*i.uv0.g.r*node_9525))))));
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
