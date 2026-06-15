// Copyright Epic Games, Inc. All Rights Reserved.

#include "Modules/ModuleManager.h"


/**
 * FLyraGameModule
 */
class FLyraGameModule : public FDefaultGameModuleImpl
{
	virtual void StartupModule() override
	{
		// #todo: this will be potentially being replaced by a auto-load impementing a plugin
		FModuleManager::Get().LoadModuleChecked<IModuleInterface>(TEXT("LagCompensation"));
	}

	virtual void ShutdownModule() override
	{
	}
};

IMPLEMENT_PRIMARY_GAME_MODULE(FLyraGameModule, LyraGame, "LyraGame");
