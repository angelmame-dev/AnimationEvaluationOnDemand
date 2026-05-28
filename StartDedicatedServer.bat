@echo off
setlocal

set ENGINE=..\Engine\Binaries\Win64\UnrealEditor.exe
set PROJECT=%~dp0Lyra.uproject

"%ENGINE%" "%PROJECT%" L_ShooterGym ^
  -server ^
  -log ^
  -console ^
  -GameplayExperience=B_ShooterGame_Elimination ^
  -statsnamedcounters=1 ^
  -ExecCmds="stat anim, stat animationparallelevaluationtasks, stat unitgraph, stat startfile"