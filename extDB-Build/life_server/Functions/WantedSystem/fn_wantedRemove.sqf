/*
	File: fn_wantedRemove.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Removes a person from the wanted list.
*/
private["_uid","_index","_check"]; //add o ultimo index: original: private["_uid","_index"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
_check = [_this,1,0,[0]] call BIS_fnc_param; //verificação de existencia
if(_uid == "") exitWith {}; //Bad data

_index = [_uid,life_wanted_list] call TON_fnc_index;
if(_index == -1) exitWith {};
life_wanted_list set[_index,-1];
life_wanted_list = life_wanted_list - [-1];
if(_check != 0) exitWith{}; //bugfix para WL

[[],_uid] spawn TON_fnc_saveBounties; //persistencia WL