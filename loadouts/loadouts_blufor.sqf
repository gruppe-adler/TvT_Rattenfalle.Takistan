blufor_uniform = [
	"U_TKLocalUni_A",
	"U_TKLocalUni_B",
	"U_TKLocalUni_C",
	"U_TKLocalUni_D",
	"U_TKLocalUni_E",
	"U_TKLocalUni_F",
	"U_TKLocalCombat_A",
	"U_TKLocalCombat_B",
	"U_TKLocalCombat_C",
	"U_TKLocalCombat_D",
	"U_TKLocalCombat_E"
];


// woodland camo?
blufor_random_helmet = [
	"H_Hat_Face_Wrap_Black",
	"H_Hat_Taqiyah_A",
	"H_Hat_Taqiyah_B",
	"H_Hat_Taqiyah_C",
	"H_Hat_Taqiyah_D",
	"H_Hat_Taqiyah_E",
	"H_Hat_Pagri",
	"H_Hat_Pagri_B",
	"H_Hat_Pagri_C",
	"H_Hat_Turban_A",
	"H_Hat_Turban_B",
	"H_Hat_Turban_C",
	"H_Hat_Turban_D",
	"H_Hat_Turban_E",
	"H_Hat_Pakol","H_Hat_Pakol","H_Hat_Pakol","H_Hat_Pakol","H_Hat_Pakol","H_Hat_Pakol"
];



blufor_random_primaryweapon = [
	"rhs_weap_akm"
];

set_akm_ammo = {
	this = _this select 0;
	[this, "rhs_30Rnd_762x39mm", 5] call addMagazinesToVest; // 5 (1 in der waffe)
	[this, "rhs_30Rnd_762x39mm_tracer", 5] call addMagazinesToVest; // 3
};


blufor_random_mg = [
	"rhs_weap_m249_pip_L",
	"rhs_weap_m249_pip_L_para",
	"rhs_weap_m249_pip_L_vfg",
	"rhs_weap_m249_pip_S",
	"rhs_weap_m249_pip_S_para",
	"rhs_weap_m249_pip_S_vfg"
];

blufor_basic = {
	this = _this select 0;

	[this, "ACE_Earplugs", 1] call addItemsToUniform;
	[this, "ACE_fieldDressing", 6] call addItemsToUniform;
	[this, "ACE_Morphine", 2] call addItemsToUniform;
	[this, "ACE_epinephrine", 1] call addItemsToUniform;

	[this, "ACE_Flashlight_KSF1", 1] call addItemsToUniform;
	[this, "ACE_key_west", 1] call addItemsToUniform;
	[this, "ACE_MapTools", 1] call addItemsToUniform;
	[this, "Chemlight_blue", 2] call addItemsToUniform;


	[this, "rhsusf_mag_17Rnd_9x19_JHP", 3] call addItemsToUniform;

	this addPrimaryWeaponItem "acc_flashlight";
	this addWeapon "rhsusf_weap_glock17g4";

	comment "Add items";
	this linkItem "ItemMap";
	this linkItem "ItemCompass";
	this linkItem "ItemWatch";
	this linkItem "tf_anprc148jem";
};

blufor_default = {

	this = _this select 0;

	comment "Remove existing items";
	removeAllWeapons this;
	removeAllItems this;
	removeAllAssignedItems this;
	removeUniform this;
	removeVest this;
	removeBackpack this;
	removeHeadgear this;
	removeGoggles this;

	comment "Add containers";

	this forceAddUniform (blufor_uniform call BIS_fnc_selectRandom);
	this addVest "rhsusf_spc";
	this addHeadgear (blufor_random_helmet call BIS_fnc_selectRandom);
	this addBackpack "rhsusf_assault_eagleaiii_coy";

	[this, "rhs_mag_30Rnd_556x45_M855A1_Stanag", 7] call addMagazinesToBackpack;
	[this, "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Yellow", 7] call addMagazinesToBackpack;

	[this, "SmokeShell", 1] call addMagazinesToVest;
	[this, "SmokeShellRed", 1] call addMagazinesToVest;
	[this, "HandGrenade", 2] call addMagazinesToVest;



	this addWeapon "Binocular";
	this addWeapon (blufor_random_primaryweapon call BIS_fnc_selectRandom);
	this addPrimaryWeaponItem "optic_Aco";

	[this] call blufor_basic;
};

blufor_sql = {

	this = _this select 0;

	comment "Remove existing items";
	removeAllWeapons this;
	removeAllItems this;
	removeAllAssignedItems this;
	removeUniform this;
	removeVest this;
	removeBackpack this;
	removeHeadgear this;
	removeGoggles this;

	comment "Add containers";

	this forceAddUniform (blufor_uniform call BIS_fnc_selectRandom);
	this addVest "rhsusf_spc_squadleader";
	this addHeadgear (blufor_random_helmet call BIS_fnc_selectRandom);
	this addBackpack "tf_rt1523g_big_bwmod_tropen";



	[this, "rhs_mag_30Rnd_556x45_M855A1_Stanag", 6] call addMagazinesToVest;

	[this, "SmokeShell", 4] call addMagazinesToVest;
	[this, "SmokeShellRed", 2] call addMagazinesToVest;

	[this, "HandGrenade", 2] call addMagazinesToVest;

	[this] call set_akm_ammo;

	[this, "rhs_mag_M585_white", 4] call addMagazinesToBackpack;
	[this, "rhs_mag_m662_red", 3] call addMagazinesToBackpack;
	[this, "rhs_mag_m661_green", 3] call addMagazinesToBackpack;



	this addWeapon "Binocular";
	this addWeapon "rhs_weap_m4a1_m203";
	this addPrimaryWeaponItem "optic_Aco";
	this addPrimaryWeaponItem "acc_flashlight";
	this linkItem "ItemGPS";
	this linkItem "ItemMap";

	[this] call blufor_basic;

	player addAction["Open Buy Menu", {		0 = [] execVM "grad_buymenu\openMenu.sqf";	}];
};

blufor_ftl = {

	this = _this select 0;

	comment "Remove existing items";
	removeAllWeapons this;
	removeAllItems this;
	removeAllAssignedItems this;
	removeUniform this;
	removeVest this;
	removeBackpack this;
	removeHeadgear this;
	removeGoggles this;

	comment "Add containers";

	this forceAddUniform (blufor_uniform call BIS_fnc_selectRandom);
	this addVest "rhsusf_spc_teamleader";
	this addHeadgear (blufor_random_helmet call BIS_fnc_selectRandom);
	this addBackpack "tf_rt1523g_big_bwmod_tropen";

	[this] call set_akm_ammo;

	[this, "SmokeShell", 4] call addMagazinesToVest;
	[this, "SmokeShellRed", 2] call addMagazinesToVest;

	[this, "HandGrenade", 2] call addMagazinesToVest;

	this addWeapon "Binocular";
	this addWeapon "rhs_weap_m4a1_m203s";
	this addPrimaryWeaponItem "optic_Aco";
	this addPrimaryWeaponItem "acc_flashlight";
	this linkItem "ItemGPS";

	[this] call blufor_basic;
	player addAction["Open Buy Menu", {		0 = [] execVM "grad_buymenu\openMenu.sqf";	}];

};

blufor_medic = {

	this = _this select 0;

	comment "Remove existing items";
	removeAllWeapons this;
	removeAllItems this;
	removeAllAssignedItems this;
	removeUniform this;
	removeVest this;
	removeBackpack this;
	removeHeadgear this;
	removeGoggles this;

	comment "Add containers";

	this forceAddUniform (blufor_uniform call BIS_fnc_selectRandom);
	this addVest "rhsusf_spc_corpsman";
	this addHeadgear (blufor_random_helmet call BIS_fnc_selectRandom);
	this addBackpack "rhsusf_assault_eagleaiii_coy";

	[this] call set_akm_ammo;

	[this, "SmokeShell", 4] call addMagazinesToVest;
	[this, "SmokeShellRed", 2] call addMagazinesToVest;

	[this, "HandGrenade", 2] call addMagazinesToBackpack;


	[this, "ACE_fieldDressing", 40] call addMagazinesToBackpack;
	[this, "ACE_Morphine", 20] call addMagazinesToBackpack;
	[this, "ACE_epinephrine", 20] call addMagazinesToBackpack;
	[this, "ACE_bloodIV_250", 12] call addMagazinesToBackpack;



	this addWeapon "Binocular";
	this addWeapon (blufor_random_primaryweapon call BIS_fnc_selectRandom);
	this addPrimaryWeaponItem "optic_Aco";


	[this] call blufor_basic;

};

blufor_marksman = {

	this = _this select 0;

	comment "Remove existing items";
	removeAllWeapons this;
	removeAllItems this;
	removeAllAssignedItems this;
	removeUniform this;
	removeVest this;
	removeBackpack this;
	removeHeadgear this;
	removeGoggles this;

	comment "Add containers";

	this forceAddUniform (blufor_uniform call BIS_fnc_selectRandom);
	this addVest "rhsusf_spc_marksman";
	this addHeadgear (blufor_random_helmet call BIS_fnc_selectRandom);

	[this, "SmokeShell", 1] call addMagazinesToVest;
	[this, "SmokeShellRed", 1] call addMagazinesToVest;
	[this, "HandGrenade", 1] call addMagazinesToVest;

	this addWeapon "Binocular";
	this addWeapon "Leupold_Mk4";
	this addPrimaryWeaponItem "rhsusf_acc_ACOG_d";
	this addPrimaryWeaponItem "rhsusf_acc_harris_bipod";


	[this] call blufor_basic;
	this linkItem "rhs_scarf";

};

blufor_AT = {

	this = _this select 0;

	comment "Remove existing items";
	removeAllWeapons this;
	removeAllItems this;
	removeAllAssignedItems this;
	removeUniform this;
	removeVest this;
	removeBackpack this;
	removeHeadgear this;
	removeGoggles this;

	comment "Add containers";

	this forceAddUniform (blufor_uniform call BIS_fnc_selectRandom);
	this addVest "rhsusf_spc_iar";
	this addHeadgear (blufor_random_helmet call BIS_fnc_selectRandom);
	this addBackpack "B_Carryall_khk";

	[this] call set_akm_ammo;

	[this, "SmokeShell", 2] call addMagazinesToVest;
	[this, "SmokeShellRed", 2] call addMagazinesToVest;
	[this, "HandGrenade", 1] call addMagazinesToVest;


	this addWeapon "Binocular";
	this addWeapon (blufor_random_primaryweapon call BIS_fnc_selectRandom);
	this addWeapon "rhs_weap_smaw";
	for "_i" from 1 to 7 do {this addItemToBackpack "rhs_mag_smaw_SR";};
	this addItemToBackpack "rhs_mag_smaw_HEAA";
	this addItemToBackpack "rhs_mag_smaw_HEAA";


	[this] call blufor_basic;

};

blufor_MG = {

	this = _this select 0;

	comment "Remove existing items";
	removeAllWeapons this;
	removeAllItems this;
	removeAllAssignedItems this;
	removeUniform this;
	removeVest this;
	removeBackpack this;
	removeHeadgear this;
	removeGoggles this;

	comment "Add containers";

	this forceAddUniform (blufor_uniform call BIS_fnc_selectRandom);
	this addVest "rhsusf_spc_mg";
	this addHeadgear (blufor_random_helmet call BIS_fnc_selectRandom);
	this addBackpack "rhsusf_assault_eagleaiii_coy";


	[this, "rhs_200rnd_556x45_T_SAW", 1] call addMagazinesToVest;
	[this, "rhs_200rnd_556x45_M_SAW", 2] call addMagazinesToBackpack;

	[this, "SmokeShell", 2] call addMagazinesToVest;
	[this, "SmokeShellRed", 2] call addMagazinesToVest;
	[this, "HandGrenade", 1] call addMagazinesToVest;


	this addWeapon "Binocular";
	this addWeapon (blufor_random_mg call BIS_fnc_selectRandom);

	[this, "rhs_200rnd_556x45_T_SAW", 1] call addMagazinesToBackpack;

	[this] call blufor_basic;

};



blufor_engineer = {

	this = _this select 0;

	comment "Remove existing items";
	removeAllWeapons this;
	removeAllItems this;
	removeAllAssignedItems this;
	removeUniform this;
	removeVest this;
	removeBackpack this;
	removeHeadgear this;
	removeGoggles this;

	comment "Add containers";

	this forceAddUniform (blufor_uniform call BIS_fnc_selectRandom);
	this addVest "rhsusf_spc_crewman";
	this addHeadgear (blufor_random_helmet call BIS_fnc_selectRandom);
	this addBackpack "rhsusf_assault_eagleaiii_coy";


	[this] call set_akm_ammo;

	[this, "SmokeShell", 2] call addMagazinesToVest;
	[this, "SmokeShellRed", 2] call addMagazinesToVest;
	[this, "HandGrenade", 1] call addMagazinesToVest;


	[this, "ACE_wirecutter", 1] call addMagazinesToBackpack;

	this addWeapon "Binocular";
	this addWeapon (blufor_random_primaryweapon call BIS_fnc_selectRandom);
	this addPrimaryWeaponItem "optic_Aco";


	[this] call blufor_basic;
};

blufor_crew = {

	this = _this select 0;

	comment "Remove existing items";
	removeAllWeapons this;
	removeAllItems this;
	removeAllAssignedItems this;
	removeUniform this;
	removeVest this;
	removeBackpack this;
	removeHeadgear this;
	removeGoggles this;

	comment "Add containers";

	this forceAddUniform (blufor_uniform call BIS_fnc_selectRandom);
	this addVest "rhsusf_spc_crewman";
	this addHeadgear blufor_crew_helmet;
	this addBackpack "rhsusf_assault_eagleaiii_coy";

	[this] call set_akm_ammo;

	[this, "SmokeShell", 2] call addMagazinesToVest;
	[this, "SmokeShellRed", 2] call addMagazinesToVest;
	[this, "HandGrenade", 1] call addMagazinesToVest;

	this addWeapon "Binocular";
	this addWeapon (blufor_random_primaryweapon call BIS_fnc_selectRandom);
	this addPrimaryWeaponItem "optic_Aco";


	[this] call blufor_basic;

};


blufor_ammobearer = {
	this = _this select 0;

	comment "Remove existing items";
	removeAllWeapons this;
	removeAllItems this;
	removeAllAssignedItems this;
	removeUniform this;
	removeVest this;
	removeBackpack this;
	removeHeadgear this;
	removeGoggles this;

	comment "Add containers";

	this forceAddUniform (blufor_uniform call BIS_fnc_selectRandom);
	this addVest "rhsusf_spc_crewman";
	this addHeadgear (blufor_random_helmet call BIS_fnc_selectRandom);
	this addBackpack "B_Carryall_khk";


	[this] call set_akm_ammo;

	[this, "SmokeShell", 2] call addMagazinesToVest;
	[this, "SmokeShellRed", 2] call addMagazinesToVest;
	[this, "HandGrenade", 1] call addMagazinesToVest;

	[this, "rhs_200rnd_556x45_T_SAW", 2] call addMagazinesToBackpack;
	[this, "rhs_200rnd_556x45_M_SAW", 6] call addMagazinesToBackpack;

	this addWeapon "Binocular";
	this addWeapon (blufor_random_primaryweapon call BIS_fnc_selectRandom);
	this addPrimaryWeaponItem "optic_Aco";


	[this] call blufor_basic;
};
