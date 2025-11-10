project "bx"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"

    files {
        "src/**.cpp",
    }

    removefiles {
        "amalgamated.cpp"  -- This file causes duplicates if included elsewhere
    }

    includedirs {
        "include",
        "include/compat/msvc",
        "3rdparty"
    }