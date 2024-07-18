-- premake5.lua
workspace "Project No Tap"
   architecture "x64"
   configurations { "Debug", "Release", "Dist" }
   startproject "App"

   -- Workspace-wide build options for MSVC
   filter "system:windows"
      buildoptions { "/EHsc", "/Zc:preprocessor", "/Zc:__cplusplus" }

OutputDir = "%{cfg.system}-%{cfg.architecture}/%{cfg.buildcfg}"

group "NoTapCore"
	include "No-Tap-Core/Build-Core.lua"
group ""

include "No-Tap-App/Build-App.lua"