/*
	File: fn_vehicleColorStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for color strings depending on their index location.
*/
private["_vehicle","_color","_index"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
_index = [_this,1,-1,[0]] call BIS_fnc_param;
_color = "";

switch (_vehicle) do
{
	case "I_Heli_Transport_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Ion"};
			case 1: {_color = "Dahoman"};
		};
	};
	
	case "C_Offroad_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Vermelho";};
			case 1: {_color = "Amarelo";};
			case 2: {_color = "Branco";};
			case 3: {_color = "Azul";};
			case 4: {_color = "Vermelho Escuro";};
			case 5: {_color = "Azul e Branco"};
			case 6: {_color = "Viatura Polícia Federal"};
			case 7: {_color = "Viatura Polícia Militar"};
			case 8: {_color = "Taxi"};
			case 9: {_color = "Viatura Resgate SAMU"};
		};
	};
	
	case "C_Hatchback_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Bege";};
			case 1: {_color = "Verde";};
			case 2: {_color = "Azul";};
			case 3: {_color = "Azul Escuro";};
			case 4: {_color = "Amarelo";};
			case 5: {_color = "Branco"};
			case 6: {_color = "Grafite"};
			case 7: {_color = "Preto"};
		};
	};
	
	case "C_Hatchback_01_sport_F":
	{
		switch(_index) do
		{
			case 0: {_color = "Vermelho"};
			case 1: {_color = "Azul Escuro"};
			case 2: {_color = "Laranja"};
			case 3: {_color = "Preto e Branco"};
			case 4: {_color = "Castanho Claro"};
			case 5: {_color = "Verde"};
			case 6: {_color = "Viatura Polícia Militar"};
			case 7: {_color = "Viatura Resgate SAMU"};
		};
	};
	
	case "C_SUV_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Vermelho Escuro";};
			case 1: {_color = "Preto";};
			case 2: {_color = "Prata";};
			case 3: {_color = "Laranja";};
			case 4: {_color = "Viatura Polícia Militar";};
			case 5: {_color = "Viatura Resgate SAMU"};
		};
	};
	
	case "C_Van_01_box_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Branco"};
			case 1: {_color = "Vermelho"};
		};
	};
	
	case "C_Van_01_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Branco"};
			case 1: {_color = "Vermelho"};
		};
	};
	
	case "C_Van_01_fuel_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Branco"};
			case 1: {_color = "Vermelho"};
		};
	};
	
	case "B_Quadbike_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Polícia Militar"};
			case 1: {_color = "Camuflagem Digital Desert"};
			case 2: {_color = "Preto"};
			case 3: {_color = "Azul"};
			case 4: {_color = "Vermelho"};
			case 5: {_color = "Branco"};
			case 6: {_color = "Civil Digital Verde"};
			case 7: {_color = "Civil Camuflado Caçador"};
			case 8: {_color = "Camuflagem MARPAT Woodland"};
		};
	};
	
	case "B_Heli_Light_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Arma 3 - Ion (Preto)"};
			case 1: {_color = "Arma 3 - Azul"};
			case 2: {_color = "Arma 3 - Vermelho"};
			case 3: {_color = "VIP - Digital Green"};
			case 4: {_color = "Arma 3 - Blueline"};
			case 5: {_color = "Arma 3 - Elliptical"};
			case 6: {_color = "Arma 3 - Furious"};
			case 7: {_color = "Arma 3 - Jeans Blue"};
			case 8: {_color = "Arma 3 - Speedy Redline"};
			case 9: {_color = "Arma 3 - Sunset"};
			case 10: {_color = "Arma 3 - Vrana"};
			case 11: {_color = "Arma 3 - Waves Blue"};
			case 12: {_color = "Rebelde Digital Desert"};
			case 13: {_color = "Águia Polícia Militar"};
			case 14: {_color = "Águia Resgate SAMU"};
		};
	};
	
	case "C_Heli_Light_01_civil_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Arma 3 - Ion (Preto)"};
			case 1: {_color = "Arma 3 - Azul e Branco"};
			case 2: {_color = "Arma 3 - Vermelho e Branco"};
			case 3: {_color = "VIP - Digital Green"};
			case 4: {_color = "Arma 3 - Blueline"};
			case 5: {_color = "Arma 3 - Elliptical"};
			case 6: {_color = "Arma 3 - Furious"};
			case 7: {_color = "Arma 3 - Jeans Blue"};
			case 8: {_color = "Arma 3 - Speedy Redline"};
			case 9: {_color = "Arma 3 - Sunset"};
			case 10: {_color = "Arma 3 - Vrana"};
			case 11: {_color = "Arma 3 - Waves Blue"};
			case 12: {_color = "Rebelde Digital Desert"};
			case 13: {_color = "Águia Polícia Militar"};
			case 14: {_color = "Águia Resgate SAMU"};
		};
	};
	
	case "O_Heli_Light_02_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Águia Polícia Federal"};
			case 1: {_color = "Branco e Azul"};
			case 2: {_color = "Digi Green"};
			case 3: {_color = "Rebelde Digital Desert"};
			case 4: {_color = "Águia Resgate SAMU"};
		};
	};
	
	case "B_MRAP_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Hunter BOPE"};
			//case 1: {_color = "Hunter Polícia Federal"};
		};
	};
	
	case "B_MRAP_01_hmg_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Hunter BOPE Armado"};
			//case 1: {_color = "Hunter Polícia Federal"};
		};
	};
	
	case "I_Truck_02_covered_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Laranja"};
			case 1: {_color = "Transporte Polícia Federal"};
		};
	};
	
	case "I_Truck_02_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Laranja"};
			case 1: {_color = "Transporte Polícia Federal"};
		};
	};
	
	case "B_APC_Wheeled_01_cannon_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Blindado Polícia Federal"};
		};
	};
	
	case "O_Heli_Attack_02_black_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Águia de Ataque BOPE"};
		};
	};
	
	case "B_Heli_Transport_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Águia Transporte BOPE"};
		};
	};
	
	case "I_Heli_light_03_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Águia de Ataque BOPE"};
		};
	};
	
	case "I_Heli_light_03_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Águia de Reconhecimento BOPE"};
		};
	};
};

_color;