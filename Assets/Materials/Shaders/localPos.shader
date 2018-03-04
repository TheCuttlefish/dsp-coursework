// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.07569204,fgcg:0.2941176,fgcb:0.09527497,fgca:1,fgde:0.007,fgrn:69.39,fgrf:161.65,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4013,x:33171,y:32382,varname:node_4013,prsc:2|diff-1314-OUT,normal-7488-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:1153,x:31478,y:32663,varname:node_1153,prsc:2;n:type:ShaderForge.SFN_ObjectPosition,id:4321,x:31478,y:32813,varname:node_4321,prsc:2;n:type:ShaderForge.SFN_Subtract,id:7275,x:31905,y:32796,varname:node_7275,prsc:2|A-1153-XYZ,B-4321-XYZ;n:type:ShaderForge.SFN_Distance,id:4358,x:32114,y:32853,varname:node_4358,prsc:2|A-7275-OUT,B-3098-OUT;n:type:ShaderForge.SFN_Lerp,id:1314,x:32861,y:32428,varname:node_1314,prsc:2|A-462-RGB,B-9961-RGB,T-1806-OUT;n:type:ShaderForge.SFN_Color,id:462,x:32272,y:32372,ptovrint:False,ptlb:c1,ptin:_c1,varname:node_462,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.7241379,c3:0,c4:1;n:type:ShaderForge.SFN_Color,id:9961,x:32272,y:32560,ptovrint:False,ptlb:c2,ptin:_c2,varname:_c2,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0.5034485,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:9012,x:32403,y:32856,varname:node_9012,prsc:2|A-4358-OUT,B-2360-OUT;n:type:ShaderForge.SFN_Slider,id:2360,x:31987,y:33006,ptovrint:False,ptlb:area size,ptin:_areasize,varname:node_2360,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.005,max:0.05;n:type:ShaderForge.SFN_ObjectPosition,id:9491,x:31103,y:32874,varname:node_9491,prsc:2;n:type:ShaderForge.SFN_Subtract,id:3077,x:31317,y:32992,varname:node_3077,prsc:2|A-9491-XYZ,B-8591-OUT;n:type:ShaderForge.SFN_ViewPosition,id:6310,x:30877,y:33017,varname:node_6310,prsc:2;n:type:ShaderForge.SFN_Multiply,id:3098,x:31876,y:33060,varname:node_3098,prsc:2|A-3077-OUT,B-623-OUT;n:type:ShaderForge.SFN_Vector1,id:623,x:31692,y:33172,varname:node_623,prsc:2,v1:-1;n:type:ShaderForge.SFN_Add,id:8591,x:31103,y:33046,varname:node_8591,prsc:2|A-6310-XYZ,B-3803-OUT;n:type:ShaderForge.SFN_NormalVector,id:3803,x:30877,y:33127,prsc:2,pt:False;n:type:ShaderForge.SFN_Power,id:4419,x:32621,y:32838,varname:node_4419,prsc:2|VAL-9012-OUT,EXP-7084-OUT;n:type:ShaderForge.SFN_Append,id:7782,x:31411,y:32113,varname:node_7782,prsc:2|A-2876-U,B-2876-V;n:type:ShaderForge.SFN_Multiply,id:7172,x:31788,y:32310,varname:node_7172,prsc:2|A-7782-OUT,B-2827-OUT,C-2738-W;n:type:ShaderForge.SFN_Slider,id:2827,x:31332,y:32451,ptovrint:False,ptlb:normal resolution,ptin:_normalresolution,varname:node_2827,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:25.64527,max:100;n:type:ShaderForge.SFN_Get,id:6907,x:32441,y:32087,varname:node_6907,prsc:2|IN-5654-OUT;n:type:ShaderForge.SFN_Set,id:5654,x:31950,y:32242,varname:resolution,prsc:2|IN-7172-OUT;n:type:ShaderForge.SFN_Tex2d,id:9286,x:32654,y:32087,ptovrint:False,ptlb:white_noise,ptin:_white_noise,varname:node_9286,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:6488d028de036744dac58ff69b489627,ntxv:0,isnm:False|UVIN-6907-OUT;n:type:ShaderForge.SFN_TexCoord,id:2876,x:31169,y:32103,varname:node_2876,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_FragmentPosition,id:2738,x:31411,y:32263,varname:node_2738,prsc:2;n:type:ShaderForge.SFN_Clamp01,id:1806,x:32595,y:32626,varname:node_1806,prsc:2|IN-4419-OUT;n:type:ShaderForge.SFN_Vector3,id:8951,x:32654,y:32251,varname:node_8951,prsc:2,v1:1,v2:1,v3:1;n:type:ShaderForge.SFN_Lerp,id:7488,x:32898,y:32184,varname:node_7488,prsc:2|A-9286-RGB,B-8951-OUT,T-1806-OUT;n:type:ShaderForge.SFN_Slider,id:7084,x:32270,y:33128,ptovrint:False,ptlb:area power,ptin:_areapower,varname:node_7084,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2,max:20;proporder:462-9961-2827-9286-2360-7084;pass:END;sub:END;*/

Shader "Shader Forge/localPos" {
    Properties {
        _c1 ("c1", Color) = (1,0.7241379,0,1)
        _c2 ("c2", Color) = (0,0.5034485,1,1)
        _normalresolution ("normal resolution", Range(0, 100)) = 25.64527
        _white_noise ("white_noise", 2D) = "white" {}
        _areasize ("area size", Range(0, 0.05)) = 0.005
        _areapower ("area power", Range(0, 20)) = 2
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
            uniform float4 _c1;
            uniform float4 _c2;
            uniform float _areasize;
            uniform float _normalresolution;
            uniform sampler2D _white_noise; uniform float4 _white_noise_ST;
            uniform float _areapower;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
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
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float2 resolution = (float2(i.uv0.r,i.uv0.g)*_normalresolution*i.posWorld.a);
                float2 node_6907 = resolution;
                float4 _white_noise_var = tex2D(_white_noise,TRANSFORM_TEX(node_6907, _white_noise));
                float node_1806 = saturate(pow((distance((i.posWorld.rgb-objPos.rgb),((objPos.rgb-(_WorldSpaceCameraPos+i.normalDir))*(-1.0)))*_areasize),_areapower));
                float3 normalLocal = lerp(_white_noise_var.rgb,float3(1,1,1),node_1806);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
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
                float3 diffuseColor = lerp(_c1.rgb,_c2.rgb,node_1806);
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
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
            uniform float4 _c1;
            uniform float4 _c2;
            uniform float _areasize;
            uniform float _normalresolution;
            uniform sampler2D _white_noise; uniform float4 _white_noise_ST;
            uniform float _areapower;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
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
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float2 resolution = (float2(i.uv0.r,i.uv0.g)*_normalresolution*i.posWorld.a);
                float2 node_6907 = resolution;
                float4 _white_noise_var = tex2D(_white_noise,TRANSFORM_TEX(node_6907, _white_noise));
                float node_1806 = saturate(pow((distance((i.posWorld.rgb-objPos.rgb),((objPos.rgb-(_WorldSpaceCameraPos+i.normalDir))*(-1.0)))*_areasize),_areapower));
                float3 normalLocal = lerp(_white_noise_var.rgb,float3(1,1,1),node_1806);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 diffuseColor = lerp(_c1.rgb,_c2.rgb,node_1806);
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
