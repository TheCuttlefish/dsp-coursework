Shader "Shader Forge2/grass2" {
    Properties {
        _MainColour ("MainColour", Color) = (0.01774846,0.5147059,0,1)
        _Tips ("Tips", Color) = (0.8206897,1,0,1)
        _Grass ("Grass", 2D) = "white" {}
        _amount ("amount", Range(0, 1)) = 0.5726496
        _frequency ("frequency", Range(0, 4)) = 0.8205139
        _Amplitude ("Amplitude", Range(0, 1)) = 0.6410257
        _pos ("pos", Vector) = (1,1,1,0)
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
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                UNITY_FOG_COORDS(2)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );

                // Create a rotation matrix - START
                float sinAng = sin( abs(sin(_Time * 4.0)) * 90 * UNITY_PI / 180.0);
                float cosAng = cos( abs(sin(_Time * 4.0)) * 90 * UNITY_PI / 180.0);

                float4x4 rotationMatx = {
                    { 1, 0,      0,       1 },
                    { 0, cosAng, -sinAng, 1 },
                    { 0, sinAng,  cosAng, 1 },
                    { 1,        1,      1, 1 }
                };
                // Create a rotation matrix - END

                o.posWorld = mul(unity_ObjectToWorld, v.vertex);

                // Rotate
                v.vertex = mul( v.vertex, rotationMatx );
                
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
////// Lighting:
////// Emissive:
                float node_7111 = saturate(((i.posWorld.rgb-objPos.rgb).g*_amount));
                float4 _Grass_var = tex2D(_Grass,TRANSFORM_TEX(i.uv0, _Grass));
                float3 emissive = (lerp(_MainColour.rgb,_Tips.rgb,node_7111)*_Grass_var.rgb);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,(_Grass_var.a*(node_7111+0.8)));
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
}
