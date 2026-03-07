#include <open.mp>

#undef MAX_PLAYERS
#define MAX_PLAYERS 200

#undef MAX_NPCS
#define MAX_NPCS 100

#include <dependencies/foreach>
#include <dependencies/easyDialog>
#include <dependencies/a_mysql>
#include <dependencies/Pawn.CMD>
#include <dependencies/Pawn.RakNet>
#include <dependencies/PawnPlus>
#include <dependencies/streamer>
#include <dependencies/sscanf2>
#include <dependencies/samp_bcrypt>

#define OPCORE_DISABLE_DYNAMIC_SERVER_INFO
#include <op-framework/op-core>
#include <op-framework/op-player>

main(){
}

public OnGameModeInit()
{
    return 1;
}

public OnGameModeExit()
{
    return 1;
}