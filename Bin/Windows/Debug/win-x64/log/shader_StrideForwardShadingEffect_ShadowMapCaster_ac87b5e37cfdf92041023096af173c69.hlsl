/**************************
***** Compiler Parameters *****
***************************
@P EffectName: StrideForwardShadingEffect.ShadowMapCaster
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = ComputeColorConstantColorLink<Material.DiffuseValue>}], mixin MaterialSurfaceGlossinessMap<false> [{glossinessMap = ComputeColorConstantFloatLink<Material.GlossinessValue>}], mixin MaterialSurfaceMetalness [{metalnessMap = ComputeColorConstantFloatLink<Material.MetalnessValue>}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>, mixin MaterialSurfaceShadingSpecularMicrofacet [{environmentFunction = MaterialSpecularMicrofacetEnvironmentGGXLUT}, {fresnelFunction = MaterialSpecularMicrofacetFresnelSchlick}, {geometricShadowingFunction = MaterialSpecularMicrofacetVisibilitySmithSchlickGGX}, {normalDistributionFunction = MaterialSpecularMicrofacetNormalDistributionGGX}]]}]]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 416]
@C    World_id31 => Transformation.World
@C    WorldInverse_id32 => Transformation.WorldInverse
@C    WorldInverseTranspose_id33 => Transformation.WorldInverseTranspose
@C    WorldView_id34 => Transformation.WorldView
@C    WorldViewInverse_id35 => Transformation.WorldViewInverse
@C    WorldViewProjection_id36 => Transformation.WorldViewProjection
@C    WorldScale_id37 => Transformation.WorldScale
@C    EyeMS_id38 => Transformation.EyeMS
cbuffer PerView [Size: 352]
@C    View_id24 => Transformation.View
@C    ViewInverse_id25 => Transformation.ViewInverse
@C    Projection_id26 => Transformation.Projection
@C    ProjectionInverse_id27 => Transformation.ProjectionInverse
@C    ViewProjection_id28 => Transformation.ViewProjection
@C    ProjScreenRay_id29 => Transformation.ProjScreenRay
@C    Eye_id30 => Transformation.Eye
***************************
******  Resources    ******
***************************
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PerView => PerView [Stage: Vertex, Slot: (1-1)]
***************************
*****     Sources     *****
***************************
@S    ShaderBase => 4ecbcd2528b64a79eebe81a863892d8c
@S    ShaderBaseStream => b705b699a7385d39c7de52a8d13f3978
@S    ShadingBase => b0f11f286acc22f5586417a8311cb632
@S    ComputeColor => c875a0e093379dd74cd9a5a73aca830f
@S    TransformationBase => 21981c533d88209fdcf07f258ddf01c2
@S    NormalStream => ea68512133899a045766d21afb59733a
@S    TransformationWAndVP => ea6628bcd79c8f0060c612aa9fc4819b
@S    PositionStream4 => 992b49e1b4dd13d8ef84a05830d70229
@S    PositionHStream4 => fc5e64dda1ac2bb4a31d58404dced340
@S    Transformation => 7c995c14d4da978d7dca233f15f1e7c0
@S    NormalFromMesh => 85b71ad3ed9065c0803bfd77d09fb685
@S    NormalBase => b2b31addde884722f942622026837c39
@S    NormalUpdate => 6fd3c9b8fa943d9951400645fe40502e
@S    MaterialSurfacePixelStageCompositor => ea7a1f076313986d24488e1073848b3d
@S    PositionStream => f677bb6cb046d4f5f594cc6d8a703259
@S    MaterialPixelShadingStream => ad7a8ed4b25fbb8ce36df356d447fda2
@S    MaterialPixelStream => 3e33eeb836e260b00905946a5267b87e
@S    MaterialStream => 6f0bb68dde7beef4b38d4867da2f4d0a
@S    IStreamInitializer => acbd5b5e1debd1516c61049f39f04fdc
@S    LightStream => db97b763bbf12e53eaf0875b9db31366
@S    DirectLightGroupArray => c8057c9126020ee1c62e23facba5036d
@S    DirectLightGroup => 501cdd2e28afd5e234c08907f26aa5df
@S    ShadowGroup => bd0b502fd18b37aedabdcefe14deef34
@S    ShadowStream => e75e57a19e12d81083677a851803d69a
@S    TextureProjectionGroup => 6f741ec2cbd4e9796145b35f8fc18c45
@S    EnvironmentLightArray => 2dfda49afe728922257f9b497bc6b904
@S    EnvironmentLight => 67198c913f8c86fad248a6726699dd4d
@S    IMaterialSurface => 4439d1801d274f7bab04ddbc33b85f40
@S    ShadowMapCasterNoPixelShader => aa6a2819c879eaf0eb664f08fb1f41b4
@S    MaterialSurfaceArray => 8cf3cc54fcd9949ce74f2e4caaa0d6d9
@S    MaterialSurfaceDiffuse => 959d3b90076611b0252419cb02190f99
@S    IMaterialSurfacePixel => b6013c701b8fca52da0c65754bb0a9ca
@S    ComputeColorConstantColorLink => 618d8a5815dc0efacfb27f012a443d05
@S    MaterialSurfaceGlossinessMap => 45f7d0ea2ac0e9c8c8e5c9d8f614e1ea
@S    ComputeColorConstantFloatLink => 51f7f5a6af528b9ab582350558ff1f70
@S    MaterialSurfaceMetalness => 4078836fd77689b5ca2e35f4eae23def
@S    MaterialSurfaceLightingAndShading => 632084a1d51a33d288c188803e2d5afc
@S    Math => 5b479ddbf6eb15f6934fb90a76ce952a
@S    IMaterialSurfaceShading => 1c45b326cd8616074872dd56496a9b5a
@S    MaterialSurfaceShadingDiffuseLambert => 8e2e1baa4a7bcb427f3ca539f81dd15c
@S    MaterialSurfaceShadingSpecularMicrofacet => fc12dc9f1da47fe9fb484f9432195131
@S    BRDFMicrofacet => e6c8c59dd59d4fef181ae8322a095acf
@S    IMaterialSpecularMicrofacetFresnelFunction => b87b5e33e7e148467ff6df90b1f65e8d
@S    IMaterialSpecularMicrofacetVisibilityFunction => 35ae192f090d569ff410a98a8e5dc154
@S    IMaterialSpecularMicrofacetNormalDistributionFunction => 861fea38e5209e4678493895145cc2e6
@S    IMaterialSpecularMicrofacetEnvironmentFunction => 56a33499bed82d63575ceb48ba33baee
@S    MaterialSpecularMicrofacetEnvironmentGGXLUT => 2e52ec40bc84df02cbd7a9c438f7b99f
@S    Texturing => 91ef3011c1071c2e5d41cd3ee0418b18
@S    MaterialSpecularMicrofacetFresnelSchlick => edbe75a9ad2d1152adf6c393d9f528cb
@S    MaterialSpecularMicrofacetVisibilitySmithSchlickGGX => db766e9fd55ea510f5ca816de1114a2c
@S    MaterialSpecularMicrofacetNormalDistributionGGX => a2e713df174ca0b459793779a40abe22
***************************
*****     Stages      *****
***************************
@G    Vertex => 8d7e876a1749ad384a82d7593dde4efd
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerDraw
// {
//
//   float4x4 World_id31;               // Offset:    0 Size:    64
//   float4x4 WorldInverse_id32;        // Offset:   64 Size:    64 [unused]
//   float4x4 WorldInverseTranspose_id33;// Offset:  128 Size:    64
//   float4x4 WorldView_id34;           // Offset:  192 Size:    64 [unused]
//   float4x4 WorldViewInverse_id35;    // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewProjection_id36; // Offset:  320 Size:    64 [unused]
//   float3 WorldScale_id37;            // Offset:  384 Size:    12 [unused]
//   float4 EyeMS_id38;                 // Offset:  400 Size:    16 [unused]
//
// }
//
// cbuffer PerView
// {
//
//   float4x4 View_id24;                // Offset:    0 Size:    64 [unused]
//   float4x4 ViewInverse_id25;         // Offset:   64 Size:    64 [unused]
//   float4x4 Projection_id26;          // Offset:  128 Size:    64 [unused]
//   float4x4 ProjectionInverse_id27;   // Offset:  192 Size:    64 [unused]
//   float4x4 ViewProjection_id28;      // Offset:  256 Size:    64
//   float2 ProjScreenRay_id29;         // Offset:  320 Size:     8 [unused]
//   float4 Eye_id30;                   // Offset:  336 Size:    16 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// PerDraw                           cbuffer      NA          NA            cb0      1 
// PerView                           cbuffer      NA          NA            cb1      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyzw        0     NONE   float   xyzw
// NORMAL                   0   xyz         1     NONE   float   xyz 
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION_WS              0   xyzw        0     NONE   float   xyzw
// SV_Position              0   xyzw        1      POS   float   xyzw
// POSITIONH                0   xyzw        2     NONE   float   xyzw
// DEPTH_VS                 0   x           3     NONE   float   x   
// MESHNORMALWS_ID16_SEM     0    yzw        3     NONE   float    yzw
// NORMALWS                 0   xyz         4     NONE   float   xyz 
//
vs_4_0
dcl_constantbuffer CB0[11], immediateIndexed
dcl_constantbuffer CB1[20], immediateIndexed
dcl_input v0.xyzw
dcl_input v1.xyz
dcl_output o0.xyzw
dcl_output_siv o1.xyzw, position
dcl_output o2.xyzw
dcl_output o3.x
dcl_output o3.yzw
dcl_output o4.xyz
dcl_temps 2
//
// Initial variable locations:
//   v0.x <- __input__.Position_id20.x; v0.y <- __input__.Position_id20.y; v0.z <- __input__.Position_id20.z; v0.w <- __input__.Position_id20.w; 
//   v1.x <- __input__.meshNormal_id15.x; v1.y <- __input__.meshNormal_id15.y; v1.z <- __input__.meshNormal_id15.z; 
//   o4.x <- <VSMain return value>.normalWS_id18.x; o4.y <- <VSMain return value>.normalWS_id18.y; o4.z <- <VSMain return value>.normalWS_id18.z; 
//   o3.x <- <VSMain return value>.DepthVS_id22; o3.y <- <VSMain return value>.meshNormalWS_id16.x; o3.z <- <VSMain return value>.meshNormalWS_id16.y; o3.w <- <VSMain return value>.meshNormalWS_id16.z; 
//   o2.x <- <VSMain return value>.PositionH_id23.x; o2.y <- <VSMain return value>.PositionH_id23.y; o2.z <- <VSMain return value>.PositionH_id23.z; o2.w <- <VSMain return value>.PositionH_id23.w; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.PositionWS_id21.x; o0.y <- <VSMain return value>.PositionWS_id21.y; o0.z <- <VSMain return value>.PositionWS_id21.z; o0.w <- <VSMain return value>.PositionWS_id21.w
//
#line 168 "E:\User\Documentos\Stride Projects\MMO_Client\Bin\Windows\Debug\win-x64\log\shader_StrideForwardShadingEffect_ShadowMapCaster_ac87b5e37cfdf92041023096af173c69.hlsl"
dp4 r0.x, v0.xyzw, cb0[0].xyzw  // r0.x <- streams.PositionWS_id21.x
dp4 r0.y, v0.xyzw, cb0[1].xyzw  // r0.y <- streams.PositionWS_id21.y
dp4 r0.z, v0.xyzw, cb0[2].xyzw  // r0.z <- streams.PositionWS_id21.z
dp4 r0.w, v0.xyzw, cb0[3].xyzw  // r0.w <- streams.PositionWS_id21.w

#line 203
mov o0.xyzw, r0.xyzw

#line 147
dp4 r1.x, r0.xyzw, cb1[16].xyzw  // r1.x <- <ComputeShadingPosition_id11 return value>.x
dp4 r1.y, r0.xyzw, cb1[17].xyzw  // r1.y <- <ComputeShadingPosition_id11 return value>.y
dp4 r1.z, r0.xyzw, cb1[18].xyzw  // r1.z <- <ComputeShadingPosition_id11 return value>.z
dp4 r1.w, r0.xyzw, cb1[19].xyzw  // r1.w <- <ComputeShadingPosition_id11 return value>.w

#line 203
mov o1.xyzw, r1.xyzw
mov o2.xyzw, r1.xyzw
mov o3.x, r1.w

#line 181
dp3 r0.y, v1.xyzx, cb0[8].xyzx  // r0.y <- streams.meshNormalWS_id16.x
dp3 r0.z, v1.xyzx, cb0[9].xyzx  // r0.z <- streams.meshNormalWS_id16.y
dp3 r0.w, v1.xyzx, cb0[10].xyzx  // r0.w <- streams.meshNormalWS_id16.z

#line 203
mov o3.yzw, r0.yyzw
mov o4.xyz, r0.yzwy
ret 
// Approximately 18 instruction slots used
***************************
*************************/
struct VS_STREAMS 
{
    float4 Position_id20;
    float3 meshNormal_id15;
    float4 PositionWS_id21;
    float4 ShadingPosition_id0;
    float4 PositionH_id23;
    float DepthVS_id22;
    float3 meshNormalWS_id16;
    float3 normalWS_id18;
};
struct VS_OUTPUT 
{
    float4 PositionWS_id21 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float4 PositionH_id23 : POSITIONH;
    float DepthVS_id22 : DEPTH_VS;
    float3 meshNormalWS_id16 : MESHNORMALWS_ID16_SEM;
    float3 normalWS_id18 : NORMALWS;
};
struct VS_INPUT 
{
    float4 Position_id20 : POSITION;
    float3 meshNormal_id15 : NORMAL;
};
cbuffer PerDraw 
{
    float4x4 World_id31;
    float4x4 WorldInverse_id32;
    float4x4 WorldInverseTranspose_id33;
    float4x4 WorldView_id34;
    float4x4 WorldViewInverse_id35;
    float4x4 WorldViewProjection_id36;
    float3 WorldScale_id37;
    float4 EyeMS_id38;
};
cbuffer PerMaterial 
{
    float4 constantColor_id82;
    float constantFloat_id84;
    float constantFloat_id87;
};
cbuffer PerView 
{
    float4x4 View_id24;
    float4x4 ViewInverse_id25;
    float4x4 Projection_id26;
    float4x4 ProjectionInverse_id27;
    float4x4 ViewProjection_id28;
    float2 ProjScreenRay_id29;
    float4 Eye_id30;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id95;
    float2 Texture1TexelSize_id97;
    float2 Texture2TexelSize_id99;
    float2 Texture3TexelSize_id101;
    float2 Texture4TexelSize_id103;
    float2 Texture5TexelSize_id105;
    float2 Texture6TexelSize_id107;
    float2 Texture7TexelSize_id109;
    float2 Texture8TexelSize_id111;
    float2 Texture9TexelSize_id113;
};
Texture2D Texture0_id94;
Texture2D Texture1_id96;
Texture2D Texture2_id98;
Texture2D Texture3_id100;
Texture2D Texture4_id102;
Texture2D Texture5_id104;
Texture2D Texture6_id106;
Texture2D Texture7_id108;
Texture2D Texture8_id110;
Texture2D Texture9_id112;
TextureCube TextureCube0_id114;
TextureCube TextureCube1_id115;
TextureCube TextureCube2_id116;
TextureCube TextureCube3_id117;
Texture3D Texture3D0_id118;
Texture3D Texture3D1_id119;
Texture3D Texture3D2_id120;
Texture3D Texture3D3_id121;
SamplerState Sampler_id122;
SamplerState PointSampler_id123 
{
    Filter = MIN_MAG_MIP_POINT;
};
SamplerState LinearSampler_id124 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerState LinearBorderSampler_id125 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Border;
    AddressV = Border;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id126 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
SamplerState AnisotropicSampler_id127 
{
    Filter = ANISOTROPIC;
};
SamplerState AnisotropicRepeatSampler_id128 
{
    Filter = ANISOTROPIC;
    AddressU = Wrap;
    AddressV = Wrap;
    MaxAnisotropy = 16;
};
SamplerState PointRepeatSampler_id129 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState LinearRepeatSampler_id130 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState RepeatSampler_id131 
{
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState Sampler0_id132;
SamplerState Sampler1_id133;
SamplerState Sampler2_id134;
SamplerState Sampler3_id135;
SamplerState Sampler4_id136;
SamplerState Sampler5_id137;
SamplerState Sampler6_id138;
SamplerState Sampler7_id139;
SamplerState Sampler8_id140;
SamplerState Sampler9_id141;
Texture2D EnvironmentLightingDFG_LUT_id152;
float4 ComputeShadingPosition_id11(float4 world)
{
    return mul(world, ViewProjection_id28);
}
void PostTransformPosition_id6()
{
}
void PreTransformPosition_id4()
{
}
void PostTransformPosition_id12(inout VS_STREAMS streams)
{
    PostTransformPosition_id6();
    streams.ShadingPosition_id0 = ComputeShadingPosition_id11(streams.PositionWS_id21);
    streams.PositionH_id23 = streams.ShadingPosition_id0;
    streams.DepthVS_id22 = streams.ShadingPosition_id0.w;
}
void TransformPosition_id5()
{
}
void PreTransformPosition_id10(inout VS_STREAMS streams)
{
    PreTransformPosition_id4();
    streams.PositionWS_id21 = mul(streams.Position_id20, World_id31);
}
void BaseTransformVS_id8(inout VS_STREAMS streams)
{
    PreTransformPosition_id10(streams);
    TransformPosition_id5();
    PostTransformPosition_id12(streams);
}
void VSMain_id0()
{
}
void GenerateNormal_VS_id20(inout VS_STREAMS streams)
{
    streams.meshNormalWS_id16 = mul(streams.meshNormal_id15, (float3x3)WorldInverseTranspose_id33);
    streams.normalWS_id18 = streams.meshNormalWS_id16;
}
void VSMain_id9(inout VS_STREAMS streams)
{
    VSMain_id0();
    BaseTransformVS_id8(streams);
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id20 = __input__.Position_id20;
    streams.meshNormal_id15 = __input__.meshNormal_id15;
    VSMain_id9(streams);
    GenerateNormal_VS_id20(streams);
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.PositionWS_id21 = streams.PositionWS_id21;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.PositionH_id23 = streams.PositionH_id23;
    __output__.DepthVS_id22 = streams.DepthVS_id22;
    __output__.meshNormalWS_id16 = streams.meshNormalWS_id16;
    __output__.normalWS_id18 = streams.normalWS_id18;
    return __output__;
}
