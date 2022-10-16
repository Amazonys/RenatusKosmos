//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Particles/Standard Surface" {
Properties {
_MainTex ("Albedo", 2D) = "white" { }
_Color ("Color", Color) = (1,1,1,1)
_Cutoff ("Alpha Cutoff", Range(0, 1)) = 0.5
_MetallicGlossMap ("Metallic", 2D) = "white" { }
_Metallic ("Metallic", Range(0, 1)) = 0
_Glossiness ("Smoothness", Range(0, 1)) = 0.5
_BumpScale ("Scale", Float) = 1
_BumpMap ("Normal Map", 2D) = "bump" { }
_EmissionColor ("Color", Color) = (0,0,0,1)
_EmissionMap ("Emission", 2D) = "white" { }
_DistortionStrength ("Strength", Float) = 1
_DistortionBlend ("Blend", Range(0, 1)) = 0.5
_SoftParticlesNearFadeDistance ("Soft Particles Near Fade", Float) = 0
_SoftParticlesFarFadeDistance ("Soft Particles Far Fade", Float) = 1
_CameraNearFadeDistance ("Camera Near Fade", Float) = 1
_CameraFarFadeDistance ("Camera Far Fade", Float) = 2
_Mode ("__mode", Float) = 0
_FlipbookMode ("__flipbookmode", Float) = 0
_LightingEnabled ("__lightingenabled", Float) = 1
_DistortionEnabled ("__distortionenabled", Float) = 0
_EmissionEnabled ("__emissionenabled", Float) = 0
_BlendOp ("__blendop", Float) = 0
_SrcBlend ("__src", Float) = 1
_DstBlend ("__dst", Float) = 0
_ZWrite ("__zw", Float) = 1
_Cull ("__cull", Float) = 2
_SoftParticlesEnabled ("__softparticlesenabled", Float) = 0
_CameraFadingEnabled ("__camerafadingenabled", Float) = 0
_SoftParticleFadeParams ("__softparticlefadeparams", Vector) = (0,0,0,0)
_CameraFadeParams ("__camerafadeparams", Vector) = (0,0,0,0)
_DistortionStrengthScaled ("__distortionstrengthscaled", Float) = 0
}
SubShader {
 Tags { "IGNOREPROJECTOR" = "true" "PerformanceChecks" = "False" "PreviewType" = "Plane" "RenderType" = "Opaque" }
 GrabPass {
  "_GrabTexture"
}
 Pass {
  Name "ShadowCaster"
  Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "SHADOWCASTER" "PerformanceChecks" = "False" "PreviewType" = "Plane" "RenderType" = "Opaque" "SHADOWSUPPORT" = "true" }
  Cull Off
  GpuProgramID 8156
Program "vp" {
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "SHADOWS_DEPTH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "SHADOWS_CUBE" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "SHADOWS_CUBE" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "SHADOWS_CUBE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "SHADOWS_DEPTH" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "SHADOWS_DEPTH" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" "SHADOWS_DEPTH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" "SHADOWS_CUBE" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" "SHADOWS_CUBE" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" "SHADOWS_CUBE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" "SHADOWS_DEPTH" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" "SHADOWS_DEPTH" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "SHADOWS_DEPTH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "SHADOWS_CUBE" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "SHADOWS_CUBE" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "SHADOWS_CUBE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "SHADOWS_DEPTH" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "SHADOWS_DEPTH" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" "SHADOWS_DEPTH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" "SHADOWS_CUBE" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" "SHADOWS_CUBE" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" "SHADOWS_CUBE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" "SHADOWS_DEPTH" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" "SHADOWS_DEPTH" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "FORWARD"
  Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "FORWARDBASE" "PerformanceChecks" = "False" "PreviewType" = "Plane" "RenderType" = "Opaque" "SHADOWSUPPORT" = "true" }
  Blend Zero Zero, Zero Zero
  ZWrite Off
  Cull Off
  GpuProgramID 254101
Program "vp" {
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "SHADOWS_SCREEN" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "SHADOWS_SCREEN" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "SHADOWS_SCREEN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "VERTEXLIGHT_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "VERTEXLIGHT_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "PROCEDURAL_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "PROCEDURAL_INSTANCING_ON" "SHADOWS_SCREEN" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "PROCEDURAL_INSTANCING_ON" "SHADOWS_SCREEN" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "PROCEDURAL_INSTANCING_ON" "SHADOWS_SCREEN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "SHADOWS_SCREEN" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "SHADOWS_SCREEN" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "SHADOWS_SCREEN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "PROCEDURAL_INSTANCING_ON" "VERTEXLIGHT_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "PROCEDURAL_INSTANCING_ON" "VERTEXLIGHT_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "PROCEDURAL_INSTANCING_ON" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "VERTEXLIGHT_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "VERTEXLIGHT_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "PROCEDURAL_INSTANCING_ON" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "PROCEDURAL_INSTANCING_ON" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "PROCEDURAL_INSTANCING_ON" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "PROCEDURAL_INSTANCING_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "PROCEDURAL_INSTANCING_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SOFTPARTICLES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SOFTPARTICLES_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SOFTPARTICLES_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SOFTPARTICLES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SOFTPARTICLES_ON" "VERTEXLIGHT_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SOFTPARTICLES_ON" "VERTEXLIGHT_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SOFTPARTICLES_ON" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SOFTPARTICLES_ON" "VERTEXLIGHT_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SOFTPARTICLES_ON" "VERTEXLIGHT_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SOFTPARTICLES_ON" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" "VERTEXLIGHT_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" "VERTEXLIGHT_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" "VERTEXLIGHT_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" "VERTEXLIGHT_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SOFTPARTICLES_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SOFTPARTICLES_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "SOFTPARTICLES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "SOFTPARTICLES_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "SOFTPARTICLES_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "SOFTPARTICLES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "SOFTPARTICLES_ON" "VERTEXLIGHT_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "SOFTPARTICLES_ON" "VERTEXLIGHT_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "SOFTPARTICLES_ON" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "SOFTPARTICLES_ON" "VERTEXLIGHT_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "SOFTPARTICLES_ON" "VERTEXLIGHT_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "SOFTPARTICLES_ON" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" "VERTEXLIGHT_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" "VERTEXLIGHT_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" "VERTEXLIGHT_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" "VERTEXLIGHT_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "SOFTPARTICLES_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "SOFTPARTICLES_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "PROCEDURAL_INSTANCING_ON" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "PROCEDURAL_INSTANCING_ON" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "PROCEDURAL_INSTANCING_ON" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" "VERTEXLIGHT_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" "VERTEXLIGHT_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" "VERTEXLIGHT_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" "VERTEXLIGHT_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "PROCEDURAL_INSTANCING_ON" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" "VERTEXLIGHT_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "PROCEDURAL_INSTANCING_ON" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" "VERTEXLIGHT_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "PROCEDURAL_INSTANCING_ON" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" "VERTEXLIGHT_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" "VERTEXLIGHT_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
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
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "_EMISSION" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "_EMISSION" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "_EMISSION" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "SHADOWS_SCREEN" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "SHADOWS_SCREEN" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "SHADOWS_SCREEN" "_EMISSION" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "SHADOWS_SCREEN" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "SHADOWS_SCREEN" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "SHADOWS_SCREEN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "_EMISSION" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "_EMISSION" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "PROCEDURAL_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "_EMISSION" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "PROCEDURAL_INSTANCING_ON" "SHADOWS_SCREEN" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "PROCEDURAL_INSTANCING_ON" "SHADOWS_SCREEN" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "PROCEDURAL_INSTANCING_ON" "SHADOWS_SCREEN" "_EMISSION" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "PROCEDURAL_INSTANCING_ON" "SHADOWS_SCREEN" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "PROCEDURAL_INSTANCING_ON" "SHADOWS_SCREEN" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "PROCEDURAL_INSTANCING_ON" "SHADOWS_SCREEN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "SHADOWS_SCREEN" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "SHADOWS_SCREEN" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "SHADOWS_SCREEN" "_EMISSION" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "SHADOWS_SCREEN" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "SHADOWS_SCREEN" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "SHADOWS_SCREEN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "PROCEDURAL_INSTANCING_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "PROCEDURAL_INSTANCING_ON" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "PROCEDURAL_INSTANCING_ON" "_EMISSION" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "PROCEDURAL_INSTANCING_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "PROCEDURAL_INSTANCING_ON" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SOFTPARTICLES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SOFTPARTICLES_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SOFTPARTICLES_ON" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SOFTPARTICLES_ON" "_EMISSION" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SOFTPARTICLES_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SOFTPARTICLES_ON" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SOFTPARTICLES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" "_EMISSION" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" "_EMISSION" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SOFTPARTICLES_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SOFTPARTICLES_ON" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SOFTPARTICLES_ON" "_EMISSION" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SOFTPARTICLES_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SOFTPARTICLES_ON" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "SOFTPARTICLES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "SOFTPARTICLES_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "SOFTPARTICLES_ON" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "SOFTPARTICLES_ON" "_EMISSION" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "SOFTPARTICLES_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "SOFTPARTICLES_ON" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "SOFTPARTICLES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" "_EMISSION" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" "_EMISSION" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "SOFTPARTICLES_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "SOFTPARTICLES_ON" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "SOFTPARTICLES_ON" "_EMISSION" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "SOFTPARTICLES_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "SOFTPARTICLES_ON" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" "_EMISSION" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "PROCEDURAL_INSTANCING_ON" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "PROCEDURAL_INSTANCING_ON" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "PROCEDURAL_INSTANCING_ON" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" "_EMISSION" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "PROCEDURAL_INSTANCING_ON" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "PROCEDURAL_INSTANCING_ON" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "PROCEDURAL_INSTANCING_ON" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" "_EMISSION" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "SHADOWS_SCREEN" "SOFTPARTICLES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" "_EMISSION" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "DEFERRED"
  Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "DEFERRED" "PerformanceChecks" = "False" "PreviewType" = "Plane" "RenderType" = "Opaque" }
  Blend Zero Zero, Zero Zero
  ZWrite Off
  Cull Off
  GpuProgramID 300625
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_HDR_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_HDR_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_HDR_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "UNITY_HDR_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "UNITY_HDR_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "UNITY_HDR_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LIGHTPROBE_SH" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LIGHTPROBE_SH" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LIGHTPROBE_SH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "UNITY_HDR_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "UNITY_HDR_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "UNITY_HDR_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LIGHTPROBE_SH" "UNITY_HDR_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LIGHTPROBE_SH" "UNITY_HDR_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LIGHTPROBE_SH" "UNITY_HDR_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" "UNITY_HDR_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" "UNITY_HDR_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" "UNITY_HDR_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "UNITY_HDR_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "UNITY_HDR_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "UNITY_HDR_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SOFTPARTICLES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "SOFTPARTICLES_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "SOFTPARTICLES_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "SOFTPARTICLES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SOFTPARTICLES_ON" "UNITY_HDR_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SOFTPARTICLES_ON" "UNITY_HDR_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SOFTPARTICLES_ON" "UNITY_HDR_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "SOFTPARTICLES_ON" "UNITY_HDR_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "SOFTPARTICLES_ON" "UNITY_HDR_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "SOFTPARTICLES_ON" "UNITY_HDR_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SOFTPARTICLES_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SOFTPARTICLES_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "SOFTPARTICLES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LIGHTPROBE_SH" "SOFTPARTICLES_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LIGHTPROBE_SH" "SOFTPARTICLES_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LIGHTPROBE_SH" "SOFTPARTICLES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "SOFTPARTICLES_ON" "UNITY_HDR_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "SOFTPARTICLES_ON" "UNITY_HDR_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "SOFTPARTICLES_ON" "UNITY_HDR_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LIGHTPROBE_SH" "SOFTPARTICLES_ON" "UNITY_HDR_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LIGHTPROBE_SH" "SOFTPARTICLES_ON" "UNITY_HDR_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LIGHTPROBE_SH" "SOFTPARTICLES_ON" "UNITY_HDR_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "SOFTPARTICLES_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "SOFTPARTICLES_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" "UNITY_HDR_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" "UNITY_HDR_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" "UNITY_HDR_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" "UNITY_HDR_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" "UNITY_HDR_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" "UNITY_HDR_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "_EMISSION" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_HDR_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_HDR_ON" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_HDR_ON" "_EMISSION" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_HDR_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_HDR_ON" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_HDR_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "UNITY_HDR_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "UNITY_HDR_ON" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "UNITY_HDR_ON" "_EMISSION" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "UNITY_HDR_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "UNITY_HDR_ON" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "UNITY_HDR_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LIGHTPROBE_SH" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LIGHTPROBE_SH" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LIGHTPROBE_SH" "_EMISSION" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LIGHTPROBE_SH" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LIGHTPROBE_SH" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LIGHTPROBE_SH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "UNITY_HDR_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "UNITY_HDR_ON" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "UNITY_HDR_ON" "_EMISSION" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "UNITY_HDR_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "UNITY_HDR_ON" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "UNITY_HDR_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LIGHTPROBE_SH" "UNITY_HDR_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LIGHTPROBE_SH" "UNITY_HDR_ON" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LIGHTPROBE_SH" "UNITY_HDR_ON" "_EMISSION" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LIGHTPROBE_SH" "UNITY_HDR_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LIGHTPROBE_SH" "UNITY_HDR_ON" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LIGHTPROBE_SH" "UNITY_HDR_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_EMISSION" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "_EMISSION" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" "UNITY_HDR_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" "UNITY_HDR_ON" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" "UNITY_HDR_ON" "_EMISSION" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" "UNITY_HDR_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" "UNITY_HDR_ON" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" "UNITY_HDR_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "UNITY_HDR_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "UNITY_HDR_ON" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "UNITY_HDR_ON" "_EMISSION" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "UNITY_HDR_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "UNITY_HDR_ON" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "UNITY_HDR_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" "_EMISSION" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SOFTPARTICLES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "SOFTPARTICLES_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "SOFTPARTICLES_ON" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "SOFTPARTICLES_ON" "_EMISSION" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "SOFTPARTICLES_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "SOFTPARTICLES_ON" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "SOFTPARTICLES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SOFTPARTICLES_ON" "UNITY_HDR_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SOFTPARTICLES_ON" "UNITY_HDR_ON" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SOFTPARTICLES_ON" "UNITY_HDR_ON" "_EMISSION" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SOFTPARTICLES_ON" "UNITY_HDR_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SOFTPARTICLES_ON" "UNITY_HDR_ON" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SOFTPARTICLES_ON" "UNITY_HDR_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "SOFTPARTICLES_ON" "UNITY_HDR_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "SOFTPARTICLES_ON" "UNITY_HDR_ON" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "SOFTPARTICLES_ON" "UNITY_HDR_ON" "_EMISSION" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "SOFTPARTICLES_ON" "UNITY_HDR_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "SOFTPARTICLES_ON" "UNITY_HDR_ON" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "SOFTPARTICLES_ON" "UNITY_HDR_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SOFTPARTICLES_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SOFTPARTICLES_ON" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SOFTPARTICLES_ON" "_EMISSION" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SOFTPARTICLES_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SOFTPARTICLES_ON" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "SOFTPARTICLES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LIGHTPROBE_SH" "SOFTPARTICLES_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LIGHTPROBE_SH" "SOFTPARTICLES_ON" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LIGHTPROBE_SH" "SOFTPARTICLES_ON" "_EMISSION" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LIGHTPROBE_SH" "SOFTPARTICLES_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LIGHTPROBE_SH" "SOFTPARTICLES_ON" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LIGHTPROBE_SH" "SOFTPARTICLES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "SOFTPARTICLES_ON" "UNITY_HDR_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "SOFTPARTICLES_ON" "UNITY_HDR_ON" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "SOFTPARTICLES_ON" "UNITY_HDR_ON" "_EMISSION" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "SOFTPARTICLES_ON" "UNITY_HDR_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "SOFTPARTICLES_ON" "UNITY_HDR_ON" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "SOFTPARTICLES_ON" "UNITY_HDR_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LIGHTPROBE_SH" "SOFTPARTICLES_ON" "UNITY_HDR_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LIGHTPROBE_SH" "SOFTPARTICLES_ON" "UNITY_HDR_ON" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LIGHTPROBE_SH" "SOFTPARTICLES_ON" "UNITY_HDR_ON" "_EMISSION" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LIGHTPROBE_SH" "SOFTPARTICLES_ON" "UNITY_HDR_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LIGHTPROBE_SH" "SOFTPARTICLES_ON" "UNITY_HDR_ON" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LIGHTPROBE_SH" "SOFTPARTICLES_ON" "UNITY_HDR_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "SOFTPARTICLES_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "SOFTPARTICLES_ON" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "SOFTPARTICLES_ON" "_EMISSION" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "SOFTPARTICLES_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "SOFTPARTICLES_ON" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" "_EMISSION" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" "UNITY_HDR_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" "UNITY_HDR_ON" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" "UNITY_HDR_ON" "_EMISSION" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" "UNITY_HDR_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" "UNITY_HDR_ON" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" "UNITY_HDR_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" "UNITY_HDR_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" "UNITY_HDR_ON" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" "UNITY_HDR_ON" "_EMISSION" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" "UNITY_HDR_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" "UNITY_HDR_ON" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" "UNITY_HDR_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" }
Local Keywords { "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" "_EMISSION" }
Local Keywords { "_ALPHABLEND_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" }
Local Keywords { "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" "_REQUIRE_UV2" }
"// shader disassembly not supported on DXBC"
}
}
}
}
Fallback "VertexLit"
CustomEditor "StandardParticlesShaderGUI"
}