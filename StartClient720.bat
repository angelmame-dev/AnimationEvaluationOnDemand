@echo off
setlocal

set ENGINE=..\Engine\Binaries\Win64\UnrealEditor.exe
set PROJECT=%~dp0Lyra.uproject

"%ENGINE%" "%PROJECT%" 127.0.0.1 ^
  -game ^
  -windowed ^
  -ResX=1280 ^
  -ResY=720 ^
  -cheats ^