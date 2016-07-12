//define the paths to your loadout init for each side (e.g. bluforLoadoutPath = "loadouts\bluforInit.sqf"; if you use one init for all sides, enter the same value for each variable)
//define params for loadout init for each side (e.g. "[roleDescription player]"; if you use one init for all sides, enter the same value for each variable)
//leave empty if you are not using custom loadouts
bluforLoadoutPath = "";
bluforLoadoutParams = "[]";
opforLoadoutPath = "";
opforLoadoutParams = "[]";
indepLoadoutPath = "";
indepLoadoutParams = "[]";



if (isMultiplayer) then {
	joinTime = serverTime;
} else {
	joinTime = time;
};

// exclude independents from wave respawn
if (side player != independent) then {
	[] execVM "initWaveRespawn.sqf";
} else {
	setplayerrespawntime 999999;
};

0 = execVM "player\animations\addWavingInteraction.sqf";
mcd_fnc_strToLoadout = compile preprocessFileLineNumbers "loadouts\fnc_strToLoadout.sqf";
