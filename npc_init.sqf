//Vehicle-Shop / Garage / Store Vehicle: 
init="this enableSimulation false; this allowDamage false; this addAction[""Vehicle Shop"",life_fnc_vehicleShopMenu,[""adac_shop"",east,""adac_car"",""adac"",""ADAC""]]; this addAction[""Vehicle Garage"", { [[getPlayerUID player,playerSide,""Car"",player],""TON_fnc_getVehicles"",false,false] call life_fnc_MP; createDialog ""Life_impound_menu""; disableSerialization; ctrlSetText[2802,""Fetching Vehicles....""]; life_garage_sp = ""adac_car""; life_garage_type = ""Car""; },"""",0,false,false,"""",'playerSide == east ']; this addAction[""Store Vehicle"",life_fnc_storeVehicle,"""",0,false,false,"""",'!life_garage_store'];";

//Air-Shop / garage / Store Vehicle:
init="this enableSimulation false; this allowDamage false; this addAction[""Helicopter Shop"",life_fnc_vehicleShopMenu,[""adac_air"",east,""adac_air"",""adac"",""ADAC""]]; this addAction[""Helicopter Garage"", { [[getPlayerUID player,playerSide,""Air"",player],""TON_fnc_getVehicles"",false,false] call life_fnc_MP; createDialog ""Life_impound_menu""; disableSerialization; ctrlSetText[2802,""Fetching Vehicles....""]; life_garage_sp = ""adac_ir""; life_garage_type = ""Air""; },"""",0,false,false,"""",'playerSide == east ']; this addAction[""Store Vehicle"",life_fnc_storeVehicle,"""",0,false,false,"""",'!life_garage_store'];";

//Market / Clothing / GenStore
init="this enableSimulation false; this allowDamage false; this addAction[""Market"",life_fnc_virt_menu,""market""];";
init="this enableSimulation false; this allowDamage false; this addAction[""Clothing Store"",life_fnc_clothingMenu,""adac""];";
init="this enableSimulation false; this allowDamage false; this addAction[""Equipment"",life_fnc_weaponShopMenu,""adac_basic""];";
