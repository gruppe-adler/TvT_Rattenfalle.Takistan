// 0 spawn at ground,
// 1 spawn with chute,
// 2 spawn with heli carrier,
// 3 spawn with civilian driving it
// 4 spawn at water marker

suppliesBlufor = [
      "suppliesBlufor",
      [
	      [
                  ["I_C_Boat_Transport_02_F"],
                  [],
                  14,
                  100,
                  1,
                  [],
                  {
                  clearWeaponCargoGlobal (_this select 0);
                  clearItemCargoGlobal (_this select 0);
                  clearBackpackCargoGlobal (_this select 0);
                  clearMagazineCargoGlobal (_this select 0);
                  (_this select 0) addItemCargoGlobal ["U_B_Wetsuit",6];
                  (_this select 0) addItemCargoGlobal ["V_RebreatherB",6];
                  (_this select 0) addItemCargoGlobal ["G_B_Diving",6];
                  },
                  format[''],
                  4,
                  0
            ],
            [
                  ["B_T_LSV_01_unarmed_F"],
                  [],
                  12,
                  200,
                  1,
                  [],
                  {
                  clearWeaponCargoGlobal (_this select 0);
                  clearItemCargoGlobal (_this select 0);
                  clearBackpackCargoGlobal (_this select 0);
                  clearMagazineCargoGlobal (_this select 0);
                  },
                  format[''],
                  2,
                  0
            ],
            [
                  ["rhsusf_m1025_w_m2"],
                  [],
                  6,
                  1000,
                  1,
                  [],
                  {
                  clearWeaponCargoGlobal (_this select 0);
                  clearItemCargoGlobal (_this select 0);
                  clearBackpackCargoGlobal (_this select 0);
                  clearMagazineCargoGlobal (_this select 0);
                  (_this select 0) addItemCargoGlobal ['ItemGPS',1];
                  ['AddCargoByClass', _this select 0, ['ACE_wheel', _this select 0, 2]] call ace_common_fnc_targetEvent;
                  },
                  format[''],
                  2,
                  0
            ],
            [
                  ["RHS_UH1Y_UNARMED"],
                  [],
                  4,
                  2500,
                  1,
                  ["DoorRB",0,"DoorLB",0,"hide_mg",1,"mainRotor_folded",0],
                  {
                  clearWeaponCargoGlobal (_this select 0);
                  clearItemCargoGlobal (_this select 0);
                  clearBackpackCargoGlobal (_this select 0);
                  clearMagazineCargoGlobal (_this select 0);
                  (_this select 0) addItemCargoGlobal ['ItemGPS',1];
                  [(_this select 0)] call ace_fastroping_fnc_equipFRIES;
                  (_this select 0) disableTIEquipment true;
                  (_this select 0) addItemCargoGlobal ["ACE_NVG_Wide",2];
                  },
                  format[''],
                  2,
                  0
            ],
            [
                  ["rhsusf_m113_usarmy"],
                  [],
                  3,
                  1500,
                  1,
                  [],
                  {
                  clearWeaponCargoGlobal (_this select 0);
                  clearItemCargoGlobal (_this select 0);
                  clearBackpackCargoGlobal (_this select 0);
                  clearMagazineCargoGlobal (_this select 0);
                  (_this select 0) addItemCargoGlobal ['ItemGPS',1];
                  ['AddCargoByClass', _this select 0, ['ACE_track', _this select 0, 2]] call ace_common_fnc_targetEvent;
                  },
                  format[''],
                  1,
                  0
            ],
            [
                  ["rhsusf_m109_usarmy"],
                  [],
                  1,
                  2500,
                  1,
                  [],
                  {
                  clearWeaponCargoGlobal (_this select 0);
                  clearItemCargoGlobal (_this select 0);
                  clearBackpackCargoGlobal (_this select 0);
                  clearMagazineCargoGlobal (_this select 0);
                  (_this select 0) addItemCargoGlobal ['ItemGPS',1];
                  ['AddCargoByClass', _this select 0, ['ACE_track', _this select 0, 2]] call ace_common_fnc_targetEvent;
                  },
                  format[''],
                  2,
                  0
            ],
            [
                  ["RHS_AH1Z_wd_CS"],
                  [],
                  2,
                  3000,
                  1,
                  ["mainRotor_folded",0],
                  {
                  clearWeaponCargoGlobal (_this select 0);
                  clearItemCargoGlobal (_this select 0);
                  clearBackpackCargoGlobal (_this select 0);
                  clearMagazineCargoGlobal (_this select 0);
                  (_this select 0) addItemCargoGlobal ["ACE_NVG_Wide",2];
                  },
                  format[''],
                  2,
                  0
            ]
      ]
];

publicVariable "suppliesBlufor";
