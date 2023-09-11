project "ImGuiSFML"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "on"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"imconfig-SFML.h",
		"imgui-SFML_export.h",
		"imgui-SFML.h",
		"imgui-SFML.cpp",
	}

	includedirs
	{
		"../SFML/include",
		"../imgui"
	}

	defines
	{ 
		"SFML_STATIC",
		"IMGUI_SFML_VIEWPORTS_ENABLE"
	}

	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

    filter "configurations:Dist"
		runtime "Release"
		optimize "on"
        symbols "off"