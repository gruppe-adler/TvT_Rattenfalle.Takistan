//define the paths to your loadout init for each side (e.g. bluforLoadoutPath = "loadouts\bluforInit.sqf"; if you use one init for all sides, enter the same value for each variable)
//define params for loadout init for each side (e.g. "[roleDescription player]"; if you use one init for all sides, enter the same value for each variable)
//leave empty if you are not using custom loadouts
bluforLoadoutPath = "";
bluforLoadoutParams = "[]";
opforLoadoutPath = "";
opforLoadoutParams = "[]";
indepLoadoutPath = "";
indepLoadoutParams = "[]";

[] execVM "initWaveRespawn.sqf";


_identity = format ["%1",player];

// if player already spawned once, dont do anything
if (player_respawned > 1) exitWith {};

// CRASHPILOT

if (_identity == "crashpilot") exitWith {

	

	switch (player_respawned) do {

		case 0: {
			cutText ["Bitte warten, Spawnplätze werden berechnet...","PLAIN"];
			waitUntil {SETUP_DONE};
			cutText ["Missionssetup abgeschlossen, starte...","PLAIN",5];
		};
		
		default {};
	};
};


// CREW OF CRASHPILOT

if (_identity == "crew1" || _identity == "crew2" || _identity == "crew3") exitWith {

	switch (player_respawned) do {

		case 0: { 
			0 = execVM "spawn\crew.sqf";
			while {!CRASH_SITE_SELECTED} do {
				cutText ["Bitte warten. Pilot wählt Startpunkt.","BLACK FADED"];
			sleep 1;
			};	
			player_respawned = 1;
			setPlayerRespawnTime 1;
			forceRespawn player;
		};
		
		case 1: {
			cutText ["Bitte warten, Spawnplätze werden berechnet...","BLACK"];
			while {!SETUP_DONE} do {
					cutText ["Bitte warten, Spawnplätze werden berechnet...","BLACK FADED"];
					sleep 1;
				};
			player_respawned = 2;
			cutText ["Missionssetup abgeschlossen!","BLACK IN",5];
			setPlayerRespawnTime mudschahedinRespawnTime;
			
		};

		default {};
	};
};


// INDEPENDENTS

if (side player == west || side player == east) exitWith {
	switch (player_respawned) do {

		case 0: { 
				//[] execVM "spawn\checkPlayerClass.sqf";
				while {!CRASH_SITE_SELECTED} do {
					cutText ["Bitte warten. Pilot wählt Startpunkt.","BLACK FADED"];
					sleep 1;
				};
				player_respawned = 1;
				setPlayerRespawnTime 1;
				forceRespawn player;
			};
			
		case 1: {
				//[] execVM "spawn\checkPlayerClass.sqf";
				while {!SETUP_DONE} do {
					cutText ["Bitte warten, Spawnplätze werden berechnet...","BLACK FADED"];
					sleep 1;
				};
				player_respawned = 2;
				cutText ["Missionssetup abgeschlossen!","BLACK IN",5];
				setPlayerRespawnTime mudschahedinRespawnTime;
			};

		default {}; // [] execVM "spawn\checkPlayerClass.sqf"; };
	};
};