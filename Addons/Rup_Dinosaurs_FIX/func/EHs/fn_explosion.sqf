params ["_dino","_dam"];
if (!alive _dino) exitWith {};
if (_dam <= 0.2) exitWith {};
if ((animationState _dino) == "Unconscious") exitWith {};

[[_dino,"Unconscious"],"rup_fnc_switchMove",1,1,_dino,true,false] call rup_fnc_MP;