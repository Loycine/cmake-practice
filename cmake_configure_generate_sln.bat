@echo off

if exist build (
	del /q /a /f /s build
	rd /s /q build
	mkdir build
) else (
	mkdir build
)

cd build
cmake -G "Visual Studio 15 2017" ..
cmake --build .

cd ..