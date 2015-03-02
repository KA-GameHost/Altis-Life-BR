//Recupera a lista de crimes e add o player na lista de procurados ao se logar no servidor.

private["_uid"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
_name = [_this,1,"",[""]] call BIS_fnc_param; //bugfix para WL

_query = format["SELECT bounties FROM players WHERE playerid = '%1'",_uid];	
waitUntil{!DB_Async_Active};
_queryResult = [_query,2] call DB_fnc_asyncCall;
_queryResult = _queryResult select 0;
_queryResult = [_queryResult] call DB_fnc_mresToArray; //fix para a WL

//novo metodo
if(typeName _queryResult == "STRING") then {_queryResult = call compile format["%1", _queryResult];};
if(count _queryResult == 0) exitWith {};
//if(isNil "_queryResult") exitWith {}; //teste 1
if(_queryResult in life_wanted_list) exitWith {}; //teste 2
_queryResult set[0,_name];
life_wanted_list pushBack _queryResult;

/* //antigo
if(count _queryResult == 0) exitWith {};
if(isNil "_queryResult") exitWith {}; //Don't add them to the wanted list if they're not wanted
if(_queryResult in life_wanted_list) exitWith {}; //Don't re-add them to the wanted list if they are already on it.

life_wanted_list pushBack _queryResult;

*/