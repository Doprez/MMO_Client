/**************************
***** Compiler Parameters *****
***************************
@P EffectName: SkyboxShaderCubemap
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 64]
@C    MatrixTransform_id73 => SpriteBase.MatrixTransform
cbuffer Globals [Size: 288]
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
@C    Intensity_id75 => SkyboxShaderBase.Intensity
@C    ProjectionInverse_id76 => SkyboxShaderBase.ProjectionInverse
@C    ViewInverse_id77 => SkyboxShaderBase.ViewInverse
@C    SkyMatrix_id78 => SkyboxShaderBase.SkyMatrix
***************************
******  Resources    ******
***************************
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    Globals => Globals [Stage: Vertex, Slot: (1-1)]
@R    LinearSampler_id44 => Texturing.LinearSampler [Stage: Pixel, Slot: (0-0)]
@R    CubeMap_id79 => SkyboxShaderCubemap.CubeMap [Stage: Pixel, Slot: (0-0)]
@R    Globals => Globals [Stage: Pixel, Slot: (0-0)]
***************************
*****     Sources     *****
***************************
@S    SkyboxShaderCubemap => 82f8cc4ffb0790a7f51e5ee68d778b34
@S    SkyboxShaderBase => 061921be36caa77d390c55715f6d32f1
@S    SpriteBase => 5a7aa9dfd5b5c7613053f4f66c79ca0d
@S    ShaderBase => 4ecbcd2528b64a79eebe81a863892d8c
@S    ShaderBaseStream => b705b699a7385d39c7de52a8d13f3978
@S    Texturing => 91ef3011c1071c2e5d41cd3ee0418b18
@S    SkyboxStream => 85235c37be425d61e2fc63c1c22ea500
***************************
*****     Stages      *****
***************************
@G    Vertex => 9318b2980fc1ec2412c3285626587827
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
// cbuffer Globals
// {
//
//   float2 Texture0TexelSize_id15;     // Offset:    0 Size:     8 [unused]
//   float2 Texture1TexelSize_id17;     // Offset:    8 Size:     8 [unused]
//   float2 Texture2TexelSize_id19;     // Offset:   16 Size:     8 [unused]
//   float2 Texture3TexelSize_id21;     // Offset:   24 Size:     8 [unused]
//   float2 Texture4TexelSize_id23;     // Offset:   32 Size:     8 [unused]
//   float2 Texture5TexelSize_id25;     // Offset:   40 Size:     8 [unused]
//   float2 Texture6TexelSize_id27;     // Offset:   48 Size:     8 [unused]
//   float2 Texture7TexelSize_id29;     // Offset:   56 Size:     8 [unused]
//   float2 Texture8TexelSize_id31;     // Offset:   64 Size:     8 [unused]
//   float2 Texture9TexelSize_id33;     // Offset:   72 Size:     8 [unused]
//   float Intensity_id75;              // Offset:   80 Size:     4 [unused]
//   float4x4 ProjectionInverse_id76;   // Offset:   96 Size:    64
//   float4x4 ViewInverse_id77;         // Offset:  160 Size:    64
//   float4x4 SkyMatrix_id78;           // Offset:  224 Size:    64
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// PerDraw                           cbuffer      NA          NA            cb0      1 
// Globals                           cbuffer      NA          NA            cb1      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyzw        0     NONE   float   xyzw
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Position              0   xyzw        0      POS   float   xyzw
// SKYBOXVIEWDIRECTION_ID74_SEM     0   xyz         1     NONE   float   xyz 
//
vs_4_0
dcl_constantbuffer CB0[4], immediateIndexed
dcl_constantbuffer CB1[17], immediateIndexed
dcl_input v0.xyzw
dcl_output_siv o0.xyzw, position
dcl_output o1.xyz
dcl_temps 2
//
// Initial variable locations:
//   v0.x <- __input__.Position_id72.x; v0.y <- __input__.Position_id72.y; v0.z <- __input__.Position_id72.z; v0.w <- __input__.Position_id72.w; 
//   o1.x <- <VSMain return value>.skyboxViewDirection_id74.x; o1.y <- <VSMain return value>.skyboxViewDirection_id74.y; o1.z <- <VSMain return value>.skyboxViewDirection_id74.z; 
//   o0.x <- <VSMain return value>.ShadingPosition_id0.x; o0.y <- <VSMain return value>.ShadingPosition_id0.y; o0.z <- <VSMain return value>.ShadingPosition_id0.z; o0.w <- <VSMain return value>.ShadingPosition_id0.w
//
#line 138 "E:\User\Documentos\Stride Projects\MMO_Client\Bin\Windows\Debug\win-x64\log\shader_SkyboxShaderCubemap_a094ace51184f434136b7b9dc8b79e55.hlsl"
dp4 o0.z, v0.xyzw, cb0[2].xyzw
dp4 r0.x, v0.xyzw, cb0[0].xyzw  // r0.x <- streams.ShadingPosition_id0.x
dp4 r0.y, v0.xyzw, cb0[1].xyzw  // r0.y <- streams.ShadingPosition_id0.y
dp4 r0.w, v0.xyzw, cb0[3].xyzw  // r0.w <- streams.ShadingPosition_id0.w

#line 162
mov o0.xyw, r0.xyxw

#line 154
div r0.xy, r0.xyxx, r0.wwww  // r0.x <- screenPosition.x; r0.y <- screenPosition.y

#line 156
mov r0.zw, l(0,0,1.000000,1.000000)
dp4 r1.x, r0.xyww, cb1[6].xyzw  // r1.x <- directionVS.x
dp4 r1.y, r0.xyww, cb1[7].xyzw  // r1.y <- directionVS.y
dp4 r1.z, r0.xyzw, cb1[8].xyzw  // r1.z <- directionVS.z

#line 157
dp3 r0.x, r1.xyzx, cb1[10].xyzx  // r0.x <- directionWS.x
dp3 r0.y, r1.xyzx, cb1[11].xyzx  // r0.y <- directionWS.y
dp3 r0.z, r1.xyzx, cb1[12].xyzx  // r0.z <- directionWS.z

#line 158
dp3 o1.x, r0.xyzx, cb1[14].xyzx
dp3 o1.y, r0.xyzx, cb1[15].xyzx
dp3 o1.z, r0.xyzx, cb1[16].xyzx

#line 162
ret 
// Approximately 17 instruction slots used
@G    Pixel => a65358f1cb1c258beee3cf5147f17886
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer Globals
// {
//
//   float2 Texture0TexelSize_id15;     // Offset:    0 Size:     8 [unused]
//   float2 Texture1TexelSize_id17;     // Offset:    8 Size:     8 [unused]
//   float2 Texture2TexelSize_id19;     // Offset:   16 Size:     8 [unused]
//   float2 Texture3TexelSize_id21;     // Offset:   24 Size:     8 [unused]
//   float2 Texture4TexelSize_id23;     // Offset:   32 Size:     8 [unused]
//   float2 Texture5TexelSize_id25;     // Offset:   40 Size:     8 [unused]
//   float2 Texture6TexelSize_id27;     // Offset:   48 Size:     8 [unused]
//   float2 Texture7TexelSize_id29;     // Offset:   56 Size:     8 [unused]
//   float2 Texture8TexelSize_id31;     // Offset:   64 Size:     8 [unused]
//   float2 Texture9TexelSize_id33;     // Offset:   72 Size:     8 [unused]
//   float Intensity_id75;              // Offset:   80 Size:     4
//   float4x4 ProjectionInverse_id76;   // Offset:   96 Size:    64 [unused]
//   float4x4 ViewInverse_id77;         // Offset:  160 Size:    64 [unused]
//   float4x4 SkyMatrix_id78;           // Offset:  224 Size:    64 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// LinearSampler_id44                sampler      NA          NA             s0      1 
// CubeMap_id79                      texture  float4        cube             t0      1 
// Globals                           cbuffer      NA          NA            cb0      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Position              0   xyzw        0      POS   float       
// SKYBOXVIEWDIRECTION_ID74_SEM     0   xyz         1     NONE   float   xyz 
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Target                0   xyzw        0   TARGET   float   xyzw
//
ps_4_0
dcl_constantbuffer CB0[6], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texturecube (float,float,float,float) t0
dcl_input_ps linear v1.xyz
dcl_output o0.xyzw
dcl_temps 1
//
// Initial variable locations:
//   v0.x <- __input__.ShadingPosition_id0.x; v0.y <- __input__.ShadingPosition_id0.y; v0.z <- __input__.ShadingPosition_id0.z; v0.w <- __input__.ShadingPosition_id0.w; 
//   v1.x <- __input__.skyboxViewDirection_id74.x; v1.y <- __input__.skyboxViewDirection_id74.y; v1.z <- __input__.skyboxViewDirection_id74.z; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 132 "E:\User\Documentos\Stride Projects\MMO_Client\Bin\Windows\Debug\win-x64\log\shader_SkyboxShaderCubemap_a094ace51184f434136b7b9dc8b79e55.hlsl"
dp3 r0.x, v1.xyzx, v1.xyzx
rsq r0.x, r0.x
mul r0.xyz, r0.xxxx, v1.xyzx  // r0.x <- samplingDir.x; r0.y <- samplingDir.y; r0.z <- samplingDir.z

#line 133
mov r0.w, -r0.z
sample r0.xyzw, r0.xywx, t0.xyzw, s0  // r0.x <- color.x; r0.y <- color.y; r0.z <- color.z

#line 134
mul o0.xyz, r0.xyzx, cb0[5].xxxx

#line 147
mov o0.w, l(1.000000)
ret 
// Approximately 8 instruction slots used
***************************
*************************/
struct PS_STREAMS 
{
    float3 skyboxViewDirection_id74;
    float4 ColorTarget_id2;
};
struct PS_OUTPUT 
{
    float4 ColorTarget_id2 : SV_Target0;
};
struct PS_INPUT 
{
    float4 ShadingPosition_id0 : SV_Position;
    float3 skyboxViewDirection_id74 : SKYBOXVIEWDIRECTION_ID74_SEM;
};
struct VS_STREAMS 
{
    float4 Position_id72;
    float4 ShadingPosition_id0;
    float3 skyboxViewDirection_id74;
};
struct VS_OUTPUT 
{
    float4 ShadingPosition_id0 : SV_Position;
    float3 skyboxViewDirection_id74 : SKYBOXVIEWDIRECTION_ID74_SEM;
};
struct VS_INPUT 
{
    float4 Position_id72 : POSITION;
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
    float Intensity_id75;
    float4x4 ProjectionInverse_id76;
    float4x4 ViewInverse_id77;
    float4x4 SkyMatrix_id78;
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
TextureCube CubeMap_id79;
float4 Shading_id4(inout PS_STREAMS streams)
{
    float3 samplingDir = normalize(streams.skyboxViewDirection_id74);
    float3 color = CubeMap_id79.Sample(LinearSampler_id44, float3(samplingDir.x, samplingDir.y, -samplingDir.z)).rgb;
    return float4(color * Intensity_id75, 1.0);
}
void VSMain_id2(inout VS_STREAMS streams)
{
    streams.ShadingPosition_id0 = mul(streams.Position_id72, MatrixTransform_id73);
}
PS_OUTPUT PSMain(PS_INPUT __input__)
{
    PS_STREAMS streams = (PS_STREAMS)0;
    streams.skyboxViewDirection_id74 = __input__.skyboxViewDirection_id74;
    streams.ColorTarget_id2 = Shading_id4(streams);
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.ColorTarget_id2 = streams.ColorTarget_id2;
    return __output__;
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id72 = __input__.Position_id72;
    VSMain_id2(streams);
    float4 screenPosition = streams.ShadingPosition_id0 / streams.ShadingPosition_id0.w;
    float4 position = float4(screenPosition.x, screenPosition.y, 1.0f, 1.0f);
    float3 directionVS = mul(position, ProjectionInverse_id76).xyz;
    float3 directionWS = mul(float4(directionVS, 0), ViewInverse_id77).xyz;
    streams.skyboxViewDirection_id74 = mul(directionWS, (float3x3)SkyMatrix_id78);
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.skyboxViewDirection_id74 = streams.skyboxViewDirection_id74;
    return __output__;
}
