//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "FORGE3D/Planets HD/Terrestrial" {
Properties {
_GlobalBoost ("Global Boost", Float) = 1
[Header(FresnelLandWater)] _FresnelLandColor ("Fresnel Land Color", Color) = (0.4558824,0.4558824,0.4558824,1)
_FresnelLandPower ("Fresnel Land Power", Range(0.003, 25)) = 0.003
_FrenselLandMult ("Frensel Land Mult", Range(0, 10)) = 0
_FresnelWaterColor ("Fresnel Water Color", Color) = (0.4558824,0.4558824,0.4558824,1)
_FresnelWaterPower ("Fresnel Water Power", Range(0.003, 25)) = 0.003
_FresnelWaterMult ("Fresnel Water Mult", Range(0, 10)) = 0
[Header(CityLights)] _CityLightMap ("City Light Map", 2D) = "white" { }
_CityLightUVMap ("CityLight UV Map", 2D) = "white" { }
_CityLightMaskMap ("CityLight Mask Map", 2D) = "white" { }
_CityLightColor ("CityLight Color", Color) = (0,0,0,0)
_CityLightPopulation ("CityLight Population", Float) = 0
[Header(ScatterColor)] _ScatterMap ("Scatter Map", 2D) = "white" { }
_ScatterColor ("Scatter Color", Color) = (0,0,0,0)
_ScatterBoost ("Scatter Boost", Range(0, 5)) = 1
_ScatterIndirect ("Scatter Indirect", Range(0, 1)) = 0
_ScatterStretch ("Scatter Stretch", Range(-2, 2)) = 0
_ScatterCenterShift ("Scatter Center Shift", Range(-2, 2)) = 0
[Header(Water)] _WaterShoreFactor ("Water Shore Factor", Float) = 0
_WaterDetailFactor ("Water Detail Factor", Float) = 0
_WaterDetailBoost ("Water Detail Boost", Float) = 0
_WaterShallowColor ("Water Shallow Color", Color) = (0,0,0,0)
_WaterShoreColor ("Water Shore Color", Color) = (0,0,0,0)
_WaterDeepColor ("Water Deep Color", Color) = (0,0,0,0)
_WaterSpecularColor ("Water Specular Color", Color) = (1,1,1,1)
_WaterSpecular ("Water Specular", Range(0.003, 1)) = 0.003
_WaterSmoothness ("Water Smoothness", Range(0, 1)) = 0
_LandSpecular ("Land Specular", Range(0.03, 1)) = 0.03
_LandSmoothness ("Land Smoothness", Range(0, 1)) = 0.03
_NormalMap ("Normal Map", 2D) = "white" { }
_NormalTiling ("Normal Tiling", Float) = 0
_NormalFresnelScale ("Normal Fresnel Scale", Float) = 0
_NormalScale ("Normal Scale", Float) = 0
_HeightMap ("Height Map", 2D) = "white" { }
_HeightTiling ("Height Tiling", Float) = 0
_LandMask ("Land Mask", 2D) = "white" { }
[Header(BaseColor)] _BaseColor ("Base Color", Color) = (0.5220588,0.5220588,0.5220588,0)
[Header(DesertColor)] _DesertColor ("Desert Color", Color) = (0.4779412,0.4779412,0.4779412,1)
_DesertCoverage ("Desert Coverage", Range(0, 1)) = 1
_DesertFactors ("Desert Factors", Range(0, 50)) = 0.5
[Header(VegetationColor)] _VegetationColor ("Vegetation Color", Color) = (0.4779412,0.4779412,0.4779412,1)
_VegetationCoverage ("Vegetation Coverage", Range(0, 1)) = 1
_VegetationFactors ("Vegetation Factors", Range(0, 20)) = 0.5
[Header(MountainColor)] _MountainColor ("Mountain Color", Color) = (0.4779412,0.4779412,0.4779412,1)
_MountainCoverage ("Mountain Coverage", Range(0, 1)) = 1
_MountainFactors ("Mountain Factors", Range(0, 50)) = 0.5
[Header(Clouds)] _Gradient ("Gradient", 2D) = "white" { }
_CloudsTop ("Clouds Top", 2D) = "white" { }
_CloudsMiddle ("Clouds Middle", 2D) = "white" { }
_CloudsBlendWeight ("Clouds Blend Weight", Range(0, 1)) = 0
_CloudsTopSpeed ("Clouds Top Speed", Range(-0.02, 0.02)) = 0
_CloudsMiddleSpeed ("Clouds Middle Speed", Range(-0.02, 0.02)) = 0
_CloudsTint ("Clouds Tint", Color) = (0,0,0,0)
_CloudShadows ("Cloud Shadows", Range(0, 1)) = 0.03
_CloudsBoost ("Clouds Output", Range(0, 1)) = 1
_texcoord ("", 2D) = "white" { }
_texcoord2 ("", 2D) = "white" { }
__dirty ("", Float) = 1
}
SubShader {
 Tags { "FORCENOSHADOWCASTING" = "true" "IGNOREPROJECTOR" = "true" "QUEUE" = "Geometry+0" "RenderType" = "Opaque" }
 Pass {
  Name "FORWARD"
  Tags { "FORCENOSHADOWCASTING" = "true" "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "FORWARDBASE" "QUEUE" = "Geometry+0" "RenderType" = "Opaque" }
  GpuProgramID 4369
Program "vp" {
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "FORWARD"
  Tags { "FORCENOSHADOWCASTING" = "true" "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "FORWARDADD" "QUEUE" = "Geometry+0" "RenderType" = "Opaque" }
  Blend One One, One One
  ZWrite Off
  GpuProgramID 128230
Program "vp" {
SubProgram "d3d11 " {
Keywords { "POINT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Keywords { "POINT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" }
"// shader disassembly not supported on DXBC"
}
}
}
}
CustomEditor "ASEMaterialInspector"
}