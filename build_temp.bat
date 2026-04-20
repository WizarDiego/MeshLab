@echo off
call "C:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools\VC\Auxiliary\Build\vcvarsall.bat" x64
set "PATH=%qtPath%\bin;%PATH%"
cd /d "c:\Users\Diego\Documents\Blender\Meshlab-Main\build"
"C:\Program Files\CMake\bin\cmake.exe" -GNinja -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX="c:\Users\Diego\Documents\Blender\Meshlab-Main\distrib" -DCMAKE_PREFIX_PATH="C:\Qt\5.15.2\msvc2019_64" "c:\Users\Diego\Documents\Blender\Meshlab-Main"
"C:\ProgramData\chocolatey\bin\ninja.exe"
