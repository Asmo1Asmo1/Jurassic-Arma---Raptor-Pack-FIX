params ["_victim","_dam","_Ddir","_snd","_ssource"];
if (isNil "_ssource") then {_ssource = _victim};

/*<NWGS compatibility patch>*/
if (alive _victim && {isPlayer _victim && {!isNil "NWG_fnc_medDamage"}}) then {
    //Limit damage to already wounded players
    private _chanceOk = if (!isNil "NWG_fnc_medIsWounded" && {_victim call NWG_fnc_medIsWounded}) then {
        if (!isNil "NWG_DINO_HIT_CHANCE")
            then {(random 100) < NWG_DINO_HIT_CHANCE}
            else {(random 100) < 20}
    } else {true};
    if (!_chanceOk) exitWith {};
    //Apply damage
    [_victim,((damage _victim) + _dam),_ssource] call NWG_fnc_medDamage;
} else {
    _victim setdamage ((damage _victim) + _dam);
};
/*</NWGS compatibility patch>*/

if (_snd isNotEqualTo "") then {[[_ssource,_snd],"rup_fnc_say3d",1,1,_ssource,true,false] call rup_fnc_MP};

if (!isPlayer _victim) exitWith {};
if (isMultiplayer)
    then {[[_victim,_Ddir,_snd],"rup_fnc_hiteffect_1",1,3,_victim,false,false] call rup_fnc_MP}
    else {[_victim,_Ddir] call rup_fnc_hiteffect_1};