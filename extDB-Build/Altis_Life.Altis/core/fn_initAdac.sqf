#include <macro.h>
/*
  File: fn_initAdac.sqf
  Author: Bryan "Tonic" Boardwine
  Description:
  Initializes the PMC
*/

private["_end"];
player addRating 99999999;
waitUntil {!(isNull (findDisplay 46))};

if((FETCH_CONST(life_adaclevel)) < 1) exitWith {
  ["Notwhitelisted",FALSE,TRUE] call BIS_fnc_endMission;
  sleep 35;
};

// set paycheck for adac
switch (FETCH_CONST(life_adaclevel)) do
{
  case 1: { life_paycheck = 1200 };
  case 2: { life_paycheck = 1350 };
  case 3: { life_paycheck = 1500 };
  case 4: { life_paycheck = 1650 };
  case 5: { life_paycheck = 1800 };
};

[] call life_fnc_spawnMenu;
  waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
  waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done. 
