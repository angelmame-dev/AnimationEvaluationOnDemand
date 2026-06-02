@echo off
setlocal

set ENGINE=..\Engine\Binaries\Win64\UnrealEditor.exe
set PROJECT=%~dp0Lyra.uproject

"%ENGINE%" "%PROJECT%" L_ShooterGym ^
  -server -log -nosteam ^
  -GameplayExperience=B_ShooterGame_Elimination ^
  -trace=default,animation,stats,task ^
  -statnamedevents ^
  -tracehost=127.0.0.1 :: Stream live to Unreal Insights
::-tracefile="%~dp0Traces\server.utrace" :: to a file instead
::  -ExecCmds="a.Server.SkipEvaluation 1"