#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Departamento de Policia"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
			if(__GETC__(life_coplevel) > 0) then
		{
		_ret pushBack ["U_Rangemaster",nil,500];
		};
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret pushBack ["U_B_CombatUniform_mcam_tshirt",nil,1000];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret pushBack ["U_B_CombatUniform_mcam",nil,1500];
		};

				if(__GETC__(life_coplevel) > 4) then
		{
			_ret pushBack ["U_I_OfficerUniform",nil,2500];
		};
				if(__GETC__(life_coplevel) > 5) then
		{
			_ret pushBack ["U_B_SpecopsUniform_sgg",nil,3000];
		};
				if(__GETC__(life_coplevel) > 6) then
		{
			_ret pushBack ["U_B_CombatUniform_mcam_worn",nil,3500];
		};
	};
	
	//Hats
	case 1:
	{
		if(__GETC__(life_coplevel) > 0) then
		{
			_ret pushBack ["H_Booniehat_indp",nil,100];
			_ret pushBack ["H_Cap_tan_specops_US",nil,100];
		};			
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret pushBack ["H_HelmetB_plain_mcamo",nil,200];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret pushBack ["H_HelmetIA",nil,300];
		};				
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret pushBack ["H_HelmetB_grass",nil,400];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret pushBack ["H_HelmetB_sand",nil,500];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_ret pushBack ["H_HelmetB_light_snakeskin",nil,600];
		};		
		if(__GETC__(life_coplevel) > 6) then
		{
			_ret pushBack ["H_HelmetB_camo",nil,700];
			_ret pushBack ["H_HelmetB_light_sand",nil,700];
		};
	};
	
	//Glasses
	case 2:
	{
		_ret = 
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Aviator",nil,75],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		if(__GETC__(life_coplevel) > 0) then
		{
			_ret pushBack ["V_Rangemaster_belt",nil,1000];
			_ret pushBack ["V_BandollierB_oli",nil,1100];
		};
					if(__GETC__(life_coplevel) > 1) then
		{
			_ret pushBack ["V_PlateCarrier1_rgr",nil,1200];
		};
					if(__GETC__(life_coplevel) > 2) then
		{
			_ret pushBack ["V_PlateCarrier2_rgr",nil,1300];
		};
					if(__GETC__(life_coplevel) > 3) then
		{
			_ret pushBack ["V_PlateCarrier3_rgr",nil,1400];
		};
				if(__GETC__(life_coplevel) > 4) then
		{
			_ret pushBack ["V_PlateCarrierGL_rgr",nil,1500];
		};	
			if(__GETC__(life_coplevel) > 5) then
		{
			_ret pushBack ["V_PlateCarrierIA1_dgtl",nil,1600];
		};
				if(__GETC__(life_coplevel) > 6) then
		{
			_ret pushBack ["V_PlateCarrierIAGL_dgtl",nil,1700];
		};
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_Kitbag_cbr",nil,800],
			["B_Kitbag_mcamo",nil,800],
			["B_FieldPack_cbr",nil,500],
			["B_AssaultPack_cbr",nil,700],
			["B_Bergen_sgg",nil,2500],
			["B_Bergen_mcamo",nil,2500],
			["B_Carryall_cbr",nil,3500],
			["B_Carryall_oli",nil,3500],
			["B_Carryall_mcamo",nil,3500],
			["B_Carryall_ocamo",nil,3500]
		];
	};
};

_ret;