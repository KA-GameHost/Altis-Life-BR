/*
	Author: MrKraken
	filename: fn_surrender.sqf
	Description: places player into a surrendered state!
	
	We're going to be telling the game to animate the player that calls life_fnc_surrender like so:
surrender anim, hands above head: amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon
surrender anim out, hands back down to the side: AmovPercMstpSsurWnonDnon_AmovPercMstpSnonWnonDnon
	
*/

player setVariable ["surrender", true, true]; //Set surrender to true

while { player getVariable ["surrender", false] }  do { 
	player playMove "amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon"; //Animation in
	
	// Check if player is alive.
	if (!alive player) then {
		player setVariable ["surrender", false, true];
	};
};

player playMoveNow "AmovPercMstpSsurWnonDnon_AmovPercMstpSnonWnonDnon"; //Animation out