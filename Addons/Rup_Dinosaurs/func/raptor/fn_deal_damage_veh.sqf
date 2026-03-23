params ["_dino","_car"];

_hitVehPart = {
    _hitPoints = configFile >> "CfgVehicles" >> typeOf _car >> "Hitpoints";
    _parts = [];

    for "_i" from 0 to ((count _hitPoints)-1) do {
        _part = configName (_hitPoints select _i);
        if (_part != "HitFuel") then {_parts pushback _part};
    };
    if (_parts isEqualTo []) exitWith {};

    _part = selectRandom _parts;
    _damage = ((_car getHitPointDamage _part) + 0.5) min 1;

    if (local _car)
        then {_car setHitPointDamage [_part,_damage]}
        else {[_car,[_part,_damage]] remoteExecCall ["setHitPointDamage",_car]};

    _sound = selectRandom ["RaptorHitCar1", "RaptorHitCar2", "RaptorHitCar3"];
    [[_dino,_sound],"rup_fnc_say3d",1,1,_dino,true,false] call rup_fnc_MP;
};

_isOpenVehicle = (getText(configFile >> "CfgVehicles" >> typeOf _car >> "attenuationEffectType")) == "OpenCarAttenuation";
if (!_isOpenVehicle) exitWith {call _hitVehPart};

_minDist = 10000;
_closestCrew = objNull;

{
    _dist = (_x modelToWorld (_x selectionPosition "Head")) distance (_dino modelToWorld (_dino selectionPosition "jt_Head_C"));
    if (_dist < _minDist) then {
        _minDist = _dist;
        _closestCrew = _x;
    };
} foreach ((crew _car) select {alive _x});

if (isNull _closestCrew) exitWith {call _hitVehPart};
if (_minDist > 1.5) exitWith {call _hitVehPart};

_Ddir = [_closestCrew,_dino] call BIS_fnc_relativeDirTo;
_rdam =  if (!isNil "rup_raptor_dam_AI") then {rup_raptor_dam_AI} else {0.2};
[_closestCrew,_rdam,_Ddir,"RaptorHit1",_dino] call rup_fnc_deal_damage;