/*
	File: fn_wantedAdd.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Adds or appends a unit to the wanted list.
*/
private["_uid","_type","_index","_data","_crimes","_val","_customBounty","_name"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
_name = [_this,1,"",[""]] call BIS_fnc_param;
_type = [_this,2,"",[""]] call BIS_fnc_param;
_customBounty = [_this,3,-1,[0]] call BIS_fnc_param;
if(_uid == "" OR _type == "" OR _name == "") exitWith {}; //Bad data passed.

//What is the crime?
switch(_type) do
{
	case "187V": {_type = ["Homicídio por atropelamento",65000]};
	case "187": {_type = ["Homicídio",150000]};
	case "901": {_type = ["Fuga da prisão",45000]};
	case "261": {_type = ["Estupro",50000]}; //What type of sick bastard would add this?
	case "261A": {_type = ["Tentativa de etupro",30000]};
	case "215": {_type = ["Tentativa de furto de veículo",20000]};
	case "213": {_type = ["Uso ilegal de explosivos",100000]};
	case "211": {_type = ["Roubo ou Assalto",50000]};
	case "207": {_type = ["Sequestro",35000]};
	case "207A": {_type = ["Tentativa de sequestro",20000]};
	case "487": {_type = ["Furto de veículo",15000]};
	case "488": {_type = ["Roubo leve",7000]};
	case "480": {_type = ["Fuga de acidente veicular",15000]};
	case "481": {_type = ["Posse de drogas",30000]};
	case "482": {_type = ["Intenção de tráfico",50000]};
	case "483": {_type = ["Tráfico de drogas",120000]};
	case "459": {_type = ["Assalto a residência",65000]};
	default {_type = [];};
};

if(count _type == 0) exitWith {}; //Not our information being passed...
//Is there a custom bounty being sent? Set that as the pricing.
if(_customBounty != -1) then {_type set[1,_customBounty];};
//Search the wanted list to make sure they are not on it.
_index = [_uid,life_wanted_list] call TON_fnc_index;

if(_index != -1) then
{
	_data = life_wanted_list select _index;
	_crimes = _data select 2;
	_crimes pushBack (_type select 0);
	_val = _data select 3;
	life_wanted_list set[_index,[_name,_uid,_crimes,(_type select 1) + _val]];
	[[_name,_uid,_crimes,(_type select 1) + _val],_uid] spawn TON_fnc_saveBounties; //persistencia WL
}
	else
{
	life_wanted_list pushBack [_name,_uid,[(_type select 0)],(_type select 1)];
	[[_name,_uid,[(_type select 0)],(_type select 1)],_uid] spawn TON_fnc_saveBounties; //persistencia WL
};