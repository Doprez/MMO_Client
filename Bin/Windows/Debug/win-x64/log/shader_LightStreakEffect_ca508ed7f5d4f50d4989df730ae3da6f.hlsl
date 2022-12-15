/**************************
***** Compiler Parameters *****
***************************
@P EffectName: LightStreakEffect
@P   - LightStreak.Count: 4
@P LightStreak.AnamorphicCount: 1
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 64]
@C    MatrixTransform_id73 => SpriteBase.MatrixTransform
cbuffer Globals [Size: 176]
@C    Texture0TexelSize_id15 => Texturing.Texture0TexelSize
@C    Texture1TexelSize_id17 => Texturing.Texture1TexelSize
@C    Texture2TexelSize_id19 => Texturing.Texture2TexelSize
@C    Texture3TexelSize_id21 => Texturing.Texture3TexelSize
@C    Texture4TexelSize_id23 => Texturing.Texture4TexelSize
@C    Texture5TexelSize_id25 => Texturing.Texture5TexelSize
@C    Texture6TexelSize_id27 => Texturing.Texture6TexelSize
@C    Texture7TexelSize_id29 => Texturing.Texture7TexelSize
@C    Texture8TexelSize_id31 => Texturing.Texture8TexelSize
@C    Texture9TexelSize_id33 => Texturing.Texture9TexelSize
@C    TapOffsetsWeights_id76 => LightStreakShader.TapOffsetsWeights
@C    Direction_id77 => LightStreakShader.Direction
@C    ColorAberrationCoefficients_id78 => LightStreakShader.ColorAberrationCoefficients
@C    AnamorphicOffsetsWeight_id79 => LightStreakShader.AnamorphicOffsetsWeight
***************************
******  Resources    ******
***************************
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    LinearSampler_id44 => Texturing.LinearSampler [Stage: Pixel, Slot: (0-0)]
@R    Texture0_id14 => Texturing.Texture0 [Stage: Pixel, Slot: (0-0)]
@R    Globals => Globals [Stage: Pixel, Slot: (0-0)]
***************************
*****     Sources     *****
***************************
@S    LightStreakShader => f37bf081b82c73b506a1d6f7aea8b128
@S    ImageEffectShader => 8064e30cc02e5eb4052f420259dbf05e
@S    SpriteBase => 5a7aa9dfd5b5c7613053f4f66c79ca0d
@S    ShaderBase => 4ecbcd2528b64a79eebe81a863892d8c
@S    ShaderBaseStream => b705b699a7385d39c7de52a8d13f3978
@S    Texturing => 91ef3011c1071c2e5d41cd3ee0418b18
***************************
*****     Stages      *****
***************************
@G    Vertex => 7b8af58dd24be2684728cc0b8599ce6f
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerDraw
// {
//
//   float4x4 MatrixTransform_id73;     // Offset:    0 Size:    64
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// PerDraw                           cbuffer      NA          NA            cb0      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyzw        0     NONE   float   xyzw
// TEXCOORD                 0   xy          1     NONE   float   xy  
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Position              0   xyzw        0      POS   float   xyzw
// TEXCOORD                 0   xy          1     NONE   float   xy  
//
vs_4_0
dcl_constantbuffer CB0[4], immediateIndexed
dcl_input v0.xyzw
dcl_input v1.xy
dcl_output_siv o0.xyzw, position
dcl_output o1.xy
//
// Initial variable locations:
//   v0.x <- __input__.Position_id72.x; v0.y <- __input__.Position_id72.y; v0.z <- __input__.Position_id72.z; v0.w <- __input__.Position_id72.w; 
//   v1.x <- __input__.TexCoord_id62.x; v1.y <- __input__.TexCoord_id62.y; 
//   o1.x <- <VSMain return value>.TexCoord_id62.x; o1.y <- <VSMain return value>.TexCoord_id62.y; 
//   o0.x <- <VSMain return value>.ShadingPosition_id0.x; o0.y <- <VSMain return value>.ShadingPosition_id0.y; o0.z <- <VSMain return value>.ShadingPosition_id0.z; o0.w <- <VSMain return value>.ShadingPosition_id0.w
//
#line 177 "E:\User\Documentos\Stride Projects\MMO_Client\Bin\Windows\Debug\win-x64\log\shader_LightStreakEffect_ca508ed7f5d4f50d4989df730ae3da6f.hlsl"
dp4 o0.x, v0.xyzw, cb0[0].xyzw
dp4 o0.y, v0.xyzw, cb0[1].xyzw
dp4 o0.z, v0.xyzw, cb0[2].xyzw
dp4 o0.w, v0.xyzw, cb0[3].xyzw

#line 181
mov o1.xy, v1.xyxx
ret 
// Approximately 6 instruction slots used
@G    Pixel => d4f1eaee82168b463fab58438654508c
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer Globals
// {
//
//   float2 Texture0TexelSize_id15;     // Offset:    0 Size:     8
//   float2 Texture1TexelSize_id17;     // Offset:    8 Size:     8 [unused]
//   float2 Texture2TexelSize_id19;     // Offset:   16 Size:     8 [unused]
//   float2 Texture3TexelSize_id21;     // Offset:   24 Size:     8 [unused]
//   float2 Texture4TexelSize_id23;     // Offset:   32 Size:     8 [unused]
//   float2 Texture5TexelSize_id25;     // Offset:   40 Size:     8 [unused]
//   float2 Texture6TexelSize_id27;     // Offset:   48 Size:     8 [unused]
//   float2 Texture7TexelSize_id29;     // Offset:   56 Size:     8 [unused]
//   float2 Texture8TexelSize_id31;     // Offset:   64 Size:     8 [unused]
//   float2 Texture9TexelSize_id33;     // Offset:   72 Size:     8 [unused]
//   float2 TapOffsetsWeights_id76[4];  // Offset:   80 Size:    56
//   float2 Direction_id77;             // Offset:  136 Size:     8
//   float3 ColorAberrationCoefficients_id78;// Offset:  144 Size:    12
//   float3 AnamorphicOffsetsWeight_id79;// Offset:  160 Size:    12
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// LinearSampler_id44                sampler      NA          NA             s0      1 
// Texture0_id14                     texture  float4          2d             t0      1 
// Globals                           cbuffer      NA          NA            cb0      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Position              0   xyzw        0      POS   float       
// TEXCOORD                 0   xy          1     NONE   float   xy  
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Target                0   xyzw        0   TARGET   float   xyzw
//
ps_4_0
dcl_constantbuffer CB0[11], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 4
//
// Initial variable locations:
//   v0.x <- __input__.ShadingPosition_id0.x; v0.y <- __input__.ShadingPosition_id0.y; v0.z <- __input__.ShadingPosition_id0.z; v0.w <- __input__.ShadingPosition_id0.w; 
//   v1.x <- __input__.TexCoord_id62.x; v1.y <- __input__.TexCoord_id62.y; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 134 "E:\User\Documentos\Stride Projects\MMO_Client\Bin\Windows\Debug\win-x64\log\shader_LightStreakEffect_ca508ed7f5d4f50d4989df730ae3da6f.hlsl"
mul r0.xy, cb0[0].xyxx, cb0[8].zwzz  // r0.x <- direction.x; r0.y <- direction.y

#line 145
mad r0.zw, r0.xxxy, cb0[6].xxxx, v1.xxxy
mad r0.zw, cb0[10].xxxy, cb0[0].xxxy, r0.zzzw  // r0.z <- tapUV.x; r0.w <- tapUV.y

#line 147
lt r1.xy, r0.zwzz, l(0.000000, 0.000000, 0.000000, 0.000000)
lt r1.zw, l(0.000000, 0.000000, 1.000000, 1.000000), r0.zzzw

#line 146
sample r2.xyzw, r0.zwzz, t0.xyzw, s0  // r2.x <- tapColor.x; r2.y <- tapColor.y; r2.z <- tapColor.z

#line 147
or r0.z, r1.z, r1.x
or r0.z, r1.y, r0.z
or r0.z, r1.w, r0.z

#line 150
movc r1.xyz, r0.zzzz, l(0,0,0,0), r2.xyzx  // r1.x <- tapColor.x; r1.y <- tapColor.y; r1.z <- tapColor.z

#line 154
mul r1.w, r1.y, cb0[9].y  // r1.w <- tapColor.y

#line 157
mul r1.xyz, r1.xwzx, cb0[10].zzzz  // r1.y <- tapColor.y

#line 158
mul r1.xyz, r1.xyzx, cb0[6].yyyy

#line 145
mad r0.zw, r0.xxxy, cb0[5].xxxx, v1.xxxy
mad r0.zw, cb0[10].xxxy, cb0[0].xxxy, r0.zzzw  // r0.z <- tapUV.x; r0.w <- tapUV.y

#line 147
lt r2.xy, r0.zwzz, l(0.000000, 0.000000, 0.000000, 0.000000)
lt r2.zw, l(0.000000, 0.000000, 1.000000, 1.000000), r0.zzzw

#line 146
sample r3.xyzw, r0.zwzz, t0.xyzw, s0  // r3.x <- tapColor.x; r3.y <- tapColor.y; r3.z <- tapColor.z

#line 147
or r0.z, r2.z, r2.x
or r0.z, r2.y, r0.z
or r0.z, r2.w, r0.z

#line 150
movc r2.yzw, r0.zzzz, l(0,0,0,0), r3.xxyz  // r2.y <- tapColor.x; r2.z <- tapColor.y; r2.w <- tapColor.z

#line 152
mul r2.x, r2.y, cb0[9].x  // r2.x <- tapColor.x

#line 157
mul r2.xyz, r2.xzwx, cb0[10].zzzz  // r2.y <- tapColor.y; r2.z <- tapColor.z

#line 158
mad r1.xyz, r2.xyzx, cb0[5].yyyy, r1.xyzx  // r1.x <- color.x; r1.y <- color.y; r1.z <- color.z

#line 145
mad r0.zw, r0.xxxy, cb0[7].xxxx, v1.xxxy
mad r0.xy, r0.xyxx, cb0[8].xxxx, v1.xyxx
mad r0.xy, cb0[10].xyxx, cb0[0].xyxx, r0.xyxx  // r0.x <- tapUV.x; r0.y <- tapUV.y
mad r0.zw, cb0[10].xxxy, cb0[0].xxxy, r0.zzzw  // r0.z <- tapUV.x; r0.w <- tapUV.y

#line 147
lt r2.xy, r0.zwzz, l(0.000000, 0.000000, 0.000000, 0.000000)
lt r2.zw, l(0.000000, 0.000000, 1.000000, 1.000000), r0.zzzw

#line 146
sample r3.xyzw, r0.zwzz, t0.xyzw, s0  // r3.x <- tapColor.x; r3.y <- tapColor.y; r3.z <- tapColor.z

#line 147
or r0.z, r2.z, r2.x
or r0.z, r2.y, r0.z
or r0.z, r2.w, r0.z

#line 150
movc r2.xyz, r0.zzzz, l(0,0,0,0), r3.xyzx  // r2.x <- tapColor.x; r2.y <- tapColor.y; r2.z <- tapColor.z

#line 156
mul r2.w, r2.z, cb0[9].z  // r2.w <- tapColor.z

#line 157
mul r2.xyz, r2.xywx, cb0[10].zzzz  // r2.z <- tapColor.z

#line 158
mad r1.xyz, r2.xyzx, cb0[7].yyyy, r1.xyzx

#line 147
lt r0.zw, r0.xxxy, l(0.000000, 0.000000, 0.000000, 0.000000)
lt r2.xy, l(1.000000, 1.000000, 0.000000, 0.000000), r0.xyxx

#line 146
sample r3.xyzw, r0.xyxx, t0.xyzw, s0  // r3.x <- tapColor.x; r3.y <- tapColor.y; r3.z <- tapColor.z

#line 157
mul r3.xyz, r3.xyzx, cb0[10].zzzz

#line 158
mul r3.xyz, r3.xyzx, cb0[8].yyyy

#line 147
or r0.x, r0.z, r2.x
or r0.x, r0.w, r0.x
or r0.x, r2.y, r0.x

#line 158
movc r0.xyz, r0.xxxx, l(0,0,0,0), r3.xyzx
add o0.xyz, r0.xyzx, r1.xyzx

#line 170
mov o0.w, l(1.000000)
ret 
// Approximately 51 instruction slots used
***************************
*************************/
const static int TapCount_id74 = 4;
const static int AnamorphicCount_id75 = 1;
struct PS_STREAMS 
{
    float2 TexCoord_id62;
    float4 ColorTarget_id2;
};
struct PS_OUTPUT 
{
    float4 ColorTarget_id2 : SV_Target0;
};
struct PS_INPUT 
{
    float4 ShadingPosition_id0 : SV_Position;
    float2 TexCoord_id62 : TEXCOORD0;
};
struct VS_STREAMS 
{
    float4 Position_id72;
    float2 TexCoord_id62;
    float4 ShadingPosition_id0;
};
struct VS_OUTPUT 
{
    float4 ShadingPosition_id0 : SV_Position;
    float2 TexCoord_id62 : TEXCOORD0;
};
struct VS_INPUT 
{
    float4 Position_id72 : POSITION;
    float2 TexCoord_id62 : TEXCOORD0;
};
cbuffer PerDraw 
{
    float4x4 MatrixTransform_id73;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id15;
    float2 Texture1TexelSize_id17;
    float2 Texture2TexelSize_id19;
    float2 Texture3TexelSize_id21;
    float2 Texture4TexelSize_id23;
    float2 Texture5TexelSize_id25;
    float2 Texture6TexelSize_id27;
    float2 Texture7TexelSize_id29;
    float2 Texture8TexelSize_id31;
    float2 Texture9TexelSize_id33;
    float2 TapOffsetsWeights_id76[TapCount_id74];
    float2 Direction_id77;
    float3 ColorAberrationCoefficients_id78;
    float3 AnamorphicOffsetsWeight_id79[AnamorphicCount_id75];
};
Texture2D Texture0_id14;
Texture2D Texture1_id16;
Texture2D Texture2_id18;
Texture2D Texture3_id20;
Texture2D Texture4_id22;
Texture2D Texture5_id24;
Texture2D Texture6_id26;
Texture2D Texture7_id28;
Texture2D Texture8_id30;
Texture2D Texture9_id32;
TextureCube TextureCube0_id34;
TextureCube TextureCube1_id35;
TextureCube TextureCube2_id36;
TextureCube TextureCube3_id37;
Texture3D Texture3D0_id38;
Texture3D Texture3D1_id39;
Texture3D Texture3D2_id40;
Texture3D Texture3D3_id41;
SamplerState Sampler_id42;
SamplerState PointSampler_id43 
{
    Filter = MIN_MAG_MIP_POINT;
};
SamplerState LinearSampler_id44 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerState LinearBorderSampler_id45 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Border;
    AddressV = Border;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id46 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
SamplerState AnisotropicSampler_id47 
{
    Filter = ANISOTROPIC;
};
SamplerState AnisotropicRepeatSampler_id48 
{
    Filter = ANISOTROPIC;
    AddressU = Wrap;
    AddressV = Wrap;
    MaxAnisotropy = 16;
};
SamplerState PointRepeatSampler_id49 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState LinearRepeatSampler_id50 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState RepeatSampler_id51 
{
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState Sampler0_id52;
SamplerState Sampler1_id53;
SamplerState Sampler2_id54;
SamplerState Sampler3_id55;
SamplerState Sampler4_id56;
SamplerState Sampler5_id57;
SamplerState Sampler6_id58;
SamplerState Sampler7_id59;
SamplerState Sampler8_id60;
SamplerState Sampler9_id61;
float4 Shading_id3(inout PS_STREAMS streams)
{
    float2 direction = Direction_id77 * Texture0TexelSize_id15;
    float3 color = float3(0.0, 0.0, 0.0);

    [unroll]
    for (int anamorphic = 0; anamorphic < AnamorphicCount_id75; anamorphic++)
    {
        float2 textOffset = AnamorphicOffsetsWeight_id79[anamorphic].xy * Texture0TexelSize_id15;

        [unroll]
        for (int i = 0; i < TapCount_id74; i++)
        {
            float2 tapUV = streams.TexCoord_id62 + direction * TapOffsetsWeights_id76[i].x + textOffset;
            float3 tapColor = Texture0_id14.Sample(LinearSampler_id44, tapUV).rgb;
            if (tapUV.x < 0 || tapUV.x > 1 || tapUV.y < 0 || tapUV.y > 1)
            {
                tapColor = float3(0.0, 0.0, 0.0);
            }
            if (i == 0)
                tapColor.r *= ColorAberrationCoefficients_id78.r;
            else if (i == 1)
                tapColor.g *= ColorAberrationCoefficients_id78.g;
            else if (i == 2)
                tapColor.b *= ColorAberrationCoefficients_id78.b;
            tapColor *= AnamorphicOffsetsWeight_id79[anamorphic].z;
            color += tapColor * TapOffsetsWeights_id76[i].y;
        }
    }
    return float4(color, 1);
}
PS_OUTPUT PSMain(PS_INPUT __input__)
{
    PS_STREAMS streams = (PS_STREAMS)0;
    streams.TexCoord_id62 = __input__.TexCoord_id62;
    streams.ColorTarget_id2 = Shading_id3(streams);
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.ColorTarget_id2 = streams.ColorTarget_id2;
    return __output__;
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id72 = __input__.Position_id72;
    streams.TexCoord_id62 = __input__.TexCoord_id62;
    streams.ShadingPosition_id0 = mul(streams.Position_id72, MatrixTransform_id73);
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.TexCoord_id62 = streams.TexCoord_id62;
    return __output__;
}
