#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"Você não é um policial!"};
			default
			{
				["Loja de Soldado",
					[
						["arifle_sdar_F","Taser Rifle",7000],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["hgun_P07_F",nil,3500],
						["HandGrenade_Stone","Flashbang",1700],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["muzzle_snds_L",nil,650],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["16Rnd_9x21_Mag",nil,50],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125]
					]
				];
			};
		};
	};
	
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"Você não é um médico!"};
			default {
				["Hospital EMS Shop",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles",nil,1200],
						["B_FieldPack_ocamo",nil,3000]
					]
				];
			};
		};
	};

	case "cop_patrol":
	{
		switch(true) do
		{
			case (playerSide != west): {"Você não é um policial!"};
			case (__GETC__(life_coplevel) < 2): {"Você não é um Cabo!"};
			default
			{
				["Loja de Cabo",
					[
						["arifle_TRG21_F",nil,7000],
						["30Rnd_556x45_Stanag",nil,100],
						["SMG_02_ACO_F",nil,6000],
  					["30Rnd_9x21_Mag",nil,100],
						["HandGrenade_Stone","Flashbang",1700],
						["MineDetector",nil,1000],
						["acc_flashlight",nil,750],
						["optic_Holosight",nil,1200],
						["optic_Arco",nil,2500],
						["muzzle_snds_H",nil,2750],
						["Rangefinder",nil,15000],
						["NVGoggles",nil,2000],
	    			["FirstAidKit",nil,150],
						["ToolKit",nil,250],
						["Medikit",nil,1000],
						["ItemGPS",nil,100]
					]
				];
			};
		};
	};

	case "cop_sergeant":
	{
		switch(true) do
		{
			case (playerSide != west): {"Você não é um policial!"};
			case (__GETC__(life_coplevel) < 3): {"Você não é um Sargento!"};
			default
			{
				["Loja de Sargento",
					[
						["arifle_Katiba_F",nil,7000],
						["30Rnd_65x39_caseless_green",nil,100],
						["hgun_ACPC2_F",nil,3500],
						["9Rnd_45ACP_Mag",nil,200],
						["HandGrenade_Stone","Flashbang",1700],
						["muzzle_snds_H",nil,2750],
						["Rangefinder",nil,15000],
						["NVGoggles",nil,2000],
	    			["FirstAidKit",nil,150],
						["ToolKit",nil,250],
						["Medikit",nil,1000],
						["ItemGPS",nil,100]
					]
				];
			};
		};
	};
	
		case "cop_tenente":
	{
		switch(true) do
		{
			case (playerSide != west): {"Você não é Policial!"};
			case (__GETC__(life_coplevel) < 4): {"Você não é um Tenente"};
			default
			{
				["Loja de Tenente",
					[
						["arifle_MXM_F",nil,8000],
						["30Rnd_65x39_caseless_mag",nil,100],
						["Rangefinder",nil,25000],
						["NVGoggles",nil,2000],
						["FirstAidKit",nil,150],
						["ToolKit",nil,250],
						["Medikit",nil,1000],
						["ItemGPS",nil,100]
					]
				];
			};
		};
	};

		case "cop_capitao":
	{
		switch(true) do
		{
			case (playerSide != west): {"Você não é Policial!"};
			case (__GETC__(life_coplevel) < 5): {"Você não é um Capitão"};
			default
			{
				["Loja de Capitão",
					[
						["arifle_MXC_F",nil,8000],
						["30Rnd_65x39_caseless_mag",nil,100],
						["optic_Hamr",nil,1700],
						["optic_Aco",nil,1300],						
						["Rangefinder",nil,15000],
						["NVGoggles",nil,2000],
						["FirstAidKit",nil,150],
						["ToolKit",nil,250],
						["Medikit",nil,1000],
						["ItemGPS",nil,100]
					]
				];
			};
		};
	};
	
		case "cop_major":
	{
		switch(true) do
		{
			case (playerSide != west): {"Você não é Policial!"};
			case (__GETC__(life_coplevel) < 6): {"Você não é um Major"};
			default
			{
				["Loja de Major",
					[
						["arifle_Mk20_GL_F",nil,8000],
						["30Rnd_556x45_Stanag",nil,100],
						["optic_Hamr",nil,1700],
						["optic_Aco",nil,900],
						["Rangefinder",nil,15000],
						["NVGoggles",nil,2000],
						["FirstAidKit",nil,150],
						["ToolKit",nil,250],
						["Medikit",nil,1000],
						["ItemGPS",nil,100]
					]
				];
			};
		};
	};
	
		case "cop_coronel":
	{
		switch(true) do
		{
			case (playerSide != west): {"Você não é Policial!"};
			case (__GETC__(life_coplevel) < 7): {"Você não é um Coronel"};
			default
			{
				["Loja de Coronel",
					[
						["srifle_EBR_F",nil,11000],
						["20Rnd_762x51_Mag",nil,100],
						["srifle_GM6_F",nil,200000],
						["5Rnd_127x108_Mag",nil,100],
						["optic_LRPS",nil,4500],
						["optic_SOS",nil,3500],
						["optic_Hamr",nil,1700],
						["optic_Arco",nil,2500],
						["optic_NVS",nil,3500],
						["muzzle_snds_B",nil,1000],
						["Rangefinder",nil,15000],
						["NVGoggles_OPFOR",nil,2000],
						["FirstAidKit",nil,150],
						["ToolKit",nil,250],
						["Medikit",nil,1000],
						["ItemGPS",nil,100]
					]
				];
			};
		};
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						["arifle_TRG21_F",nil,25000],
						["arifle_TRG20_F",nil,25000],
						["arifle_SDAR_F",nil,20000],
						["arifle_Mk20_plain_F",nil,30000],
						["arifle_Mk20C_plain_F",nil,32000],
						["arifle_Mk20_GL_F",nil,120000],
						["arifle_Mk20_GL_plain_F",nil,120000],
						["arifle_Katiba_F",nil,42500],
						["arifle_Katiba_C_F",nil,38000],
						["arifle_Katiba_GL_F","Katiba EGLM 6,5 mm",158300],
						["srifle_DMR_01_F",nil,25000],
						["srifle_EBR_F",nil,27000],
						["srifle_GM6_F",nil,550000],
						["srifle_LRR_F",nil,450000],
						["LMG_Mk200_F",nil,55000],
						["LMG_Zafir_F",nil,60000],
						["arifle_MX_SW_F",nil,50000],
						["arifle_MX_F",nil,45000],
						["arifle_MXC_F",nil,42000],
						["arifle_MXM_F",nil,52000],
						["arifle_MX_GL_F",nil,132000],
						["30Rnd_556x45_Stanag","30Tiros STANAG 5.56mm",300],
						["30Rnd_556x45_Stanag_Tracer_Red","30STANAG Tracer Vermelho",300],
						["30Rnd_556x45_Stanag_Tracer_Green","30STANAG Tracer Verde",300],
						["30Rnd_556x45_Stanag_Tracer_Yellow","30STANAG Tracer Amarelo",300],
						["20Rnd_556x45_UW_mag","Pente 5.56 mm Shark",325],
						["30Rnd_65x39_caseless_green","Pente Katiba 6.5mm",275],
						["30Rnd_65x39_caseless_green_mag_Tracer","P. Katiba Tracer Verde",275],
						["10Rnd_762x51_Mag",nil,400],
						["20Rnd_762x51_Mag",nil,400],
						["5Rnd_127x108_Mag",nil,2500],
						["5Rnd_127x108_APDS_Mag",nil,4500],
						["7Rnd_408_Mag",nil,1500],
						["200Rnd_65x39_cased_Box",nil,800],
						["200Rnd_65x39_cased_Box_Tracer",nil,850],
						["150Rnd_762x51_Box",nil,800],
						["150Rnd_762x51_Box_Tracer",nil,850],
						["100Rnd_65x39_caseless_mag",nil,600],
						["100Rnd_65x39_caseless_mag_Tracer",nil,650],
						["30Rnd_65x39_caseless_mag","30 Tiros STANAG 6.5mm",400],
						["30Rnd_65x39_caseless_mag_Tracer","30T STANAG 6.5mm Traçante",450],
						["1Rnd_HE_Grenade_shell","Granada HE EGLM",6500],
						["3Rnd_HE_Grenade_shell","Granada HE 3GL",25350],
						["1Rnd_Smoke_Grenade_shell","Fumaça Branca EGLM",500],
						["1Rnd_SmokeRed_Grenade_shell","Fumaça Vermelha EGLM",500],
						["1Rnd_SmokeGreen_Grenade_shell","Fumaça Verde EGLM",500],
						["1Rnd_SmokeYellow_Grenade_shell","Fumaça Amarela EGLM",500],
						["1Rnd_SmokePurple_Grenade_shell","Fumaça Roxa EGLM",500],
						["1Rnd_SmokeBlue_Grenade_shell","Fumaça Azul EGLM",500],
						["1Rnd_SmokeOrange_Grenade_shell","Fumaça Laranja EGLM",500],
						["3Rnd_Smoke_Grenade_shell","Fumaça Branca 3GL",1800],
						["3Rnd_SmokeRed_Grenade_shell","Fumaça Vermelha 3GL",1800],
						["3Rnd_SmokeGreen_Grenade_shell","Fumaça Verde 3GL",1800],
						["3Rnd_SmokeYellow_Grenade_shell","Fumaça Amarela 3GL",1800],
						["3Rnd_SmokePurple_Grenade_shell","Fumaça Roxa 3GL",1800],
						["3Rnd_SmokeBlue_Grenade_shell","Fumaça Azul 3GL",1800],
						["3Rnd_SmokeOrange_Grenade_shell","Fumaça Laranja 3GL",1800],
						["UGL_FlareWhite_F","Sinalizador Branco EGLM",80],
						["UGL_FlareGreen_F","Sinalizador Verde EGLM",80],
						["UGL_FlareRed_F","Sinalizador Vermelho EGLM",80],
						["UGL_FlareYellow_F","Sinalizador Amarelo EGLM",80],
						["UGL_FlareCIR_F","Sin. Infravermelho EGLM",80],
						["3Rnd_UGL_FlareWhite_F","Sinalizador Branco 3GL",312],
						["3Rnd_UGL_FlareGreen_F","Sinalizador Verde 3GL",312],
						["3Rnd_UGL_FlareRed_F","Sinalizador Vermelho 3GL",312],
						["3Rnd_UGL_FlareYellow_F","Sinalizador Amarelo 3GL",312],
						["3Rnd_UGL_FlareCIR_F","Sin. Infravermelho 3GL",312],
						["optic_MRD","M.R.D. 1x",1500],
						["optic_Hamr","Rifle Combat Optics 10x",1500],
						["optic_Arco", "A.R.C.O. 10x",2200],
						["optic_ACO","A.C.O.(Vermelho)",3500],
						["optic_ACO_grn","A.C.O (Verde)",3500],
						["optic_MRCO","M.R.C.O. 1x-6x",4200],
						["optic_Holosight","MK17 Holográfica 1x-2x",3600],
						["optic_SOS","Sniper Opt. Sights 18x-75x",12000],
						["optic_DMS","D.M.S. 1x-12x",13500],
						["optic_LRPS",nil,23500],
						["optic_NVS","Night Vision Scope 10x",13500],
						["acc_flashlight","Lanterna Tática",1000],
						["acc_pointer_IR","Mira Laser Infravermelho",5000],
						["muzzle_snds_H",nil,5000],
						["muzzle_snds_M",nil,5000],
						["muzzle_snds_B",nil,5000],
						["MineDetector",nil,25000]
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_gun): {"You don't have a Firearms license!"};
			default
			{
				["Loja de Armas do Batata",
					[
						["hgun_Rook40_F",nil,6500],
						["hgun_Pistol_heavy_02_F",nil,9850],
						["hgun_ACPC2_F",nil,11500],
						["hgun_PDW2000_F",nil,20000],
						["optic_Yorris","Yorris J2 1x",1500],
						["optic_ACO_smg","A.C.O. SMG (Vermelho)",2500],
						["optic_ACO_grn_smg","A.C.O. SMG (Verde)",2500],
						["optic_Holosight_smg","MK17 SMG Holográfica",4500],
						["V_Rangemaster_belt",nil,4900],
						["16Rnd_9x21_Mag",nil,125],
						["9Rnd_45ACP_Mag",nil,145],
						["6Rnd_45ACP_Cylinder",nil,150],
						["30Rnd_9x21_Mag",nil,175],
						["muzzle_snds_L",nil,2000],
						["muzzle_snds_acp",nil,4500]
					]
				];
			};
		};
	};
	
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			default
			{
				["Hideout Armament",
					[
						["hgun_Rook40_F",nil,1500],
						["hgun_Pistol_heavy_02_F",nil,2500],
						["hgun_ACPC2_F",nil,4500],
						["hgun_PDW2000_F",nil,9500],
						["optic_Yorris","Yorris J2 1x",500],
						["optic_ACO_smg","A.C.O. SMG (Vermelho)",950],
						["optic_ACO_grn_smg","A.C.O. SMG (Verde)",950],
						["optic_Holosight_smg","MK17 SMG Holográfica",1500],
						["V_Rangemaster_belt",nil,1900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75],
						["muzzle_snds_L",nil,800],
						["muzzle_snds_acp",nil,1500]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,150],
				["Rangefinder",nil,3500],
				["ItemRadio",nil,500],
				["ItemMap",nil,30],
				["ItemGPS",nil,100],
				["ItemCompass",nil,50],
				["ItemWatch",nil,50],
				["ToolKit",nil,5000],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,15350],
				["Chemlight_red",nil,100],
				["Chemlight_yellow",nil,100],
				["Chemlight_green",nil,100],
				["Chemlight_blue",nil,100],
				["hgun_Pistol_Signal_F","Sinalizador",300],
				["6Rnd_GreenSignal_F",nil,30],
				["6Rnd_RedSignal_F",nil,30]
			]
		];
	};
};
