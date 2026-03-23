params ["_victim","_dam","_Ddir","_snd","_ssource"];
if (isNil "_ssource") then {_ssource = _victim};

_victim setdamage ((damage _victim) + _dam);
if (_snd isNotEqualTo "") then {[[_ssource,_snd],"rup_fnc_say3d",1,1,_ssource,true,false] call rup_fnc_MP};

if (!isPlayer _victim) exitWith {};
if (isMultiplayer)
    then {[[_victim,_Ddir,_snd],"rup_fnc_hiteffect_1",1,3,_victim,false,false] call rup_fnc_MP}
    else {[_victim,_Ddir] call rup_fnc_hiteffect_1};