project "bx"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files {
        "src/**.cpp",
    }

    removefiles {
        "src/amalgamated.cpp"  -- This file causes duplicates if included elsewhere
    }

    includedirs {
        "include",
        "include/compat/msvc",
        "3rdparty"
    }