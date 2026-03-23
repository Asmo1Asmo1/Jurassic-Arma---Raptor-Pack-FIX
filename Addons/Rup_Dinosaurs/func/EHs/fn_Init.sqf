waituntil {sleep 0.1; !isNull player};
_dino = _this select 0;
if !(_dino isKindOf "Raptor") exitWith {};
_dino setSpeaker "NoVoice";

//////////////scripts/////////////////////////////////

_HUD = [] execVM "Rup_Dinosaurs\ui\HUD\HUD.sqf";
[_dino] call rup_fnc_set_id;

////////////////////X-MAS/////////////////////////////

(date) params ["","_month","_day"];
if (_month == 12 && _day in [24,25,26]) then {
    _dino addHeadgear (selectRandom ["Rup_ChristmasHat","Rup_ChristmasHat2"]);
};

/////////////variables////////////////////////////////

_busy = _dino getVariable "rup_dino_busy";
_uncon = _dino getVariable "rup_dino_uncon";
if (isNil "_busy") then {_dino setVariable ["rup_dino_busy",false]; _busy = false};
if (isNil "_uncon") then {_dino setVariable ["rup_dino_uncon",false]; _uncon = false};

///////////////////Unit - EHs////////////////////////////////////////////////////////////

_dino addEventHandler ["handledamage",{_this call RUP_fnc_handledamage}];
_dino addEventHandler ["Fired",{_this spawn RUP_fnc_Fired}];
_dino addEventHandler ["Respawn",{_this spawn RUP_fnc_init}];
_dino addEventHandler ["Killed",{_this call RUP_fnc_Killed}];
_dino addEventHandler ["InventoryOpened",{true}];
_dino addEventHandler ["AnimChanged",{_this spawn RUP_fnc_AnimChanged}];
_dino addEventHandler ["Hit",{_this call RUP_fnc_hit}];

_dino addEventHandler ["take",{
    _dino = _this select 0;
    removeallweapons _dino;
    _dino addmagazine 'RaptorAttack_Mag';
    _dino addweapon 'RaptorAttack';
}];

///////////////////UI - EHs////////////////////////////////////////////////////////////

waitUntil {sleep 0.1; !isNull findDisplay 46};
if !(player isKindOf "Raptor") exitWith {};
(findDisplay 46) displayAddEventHandler ["KeyDown",{
    // params ["","_key","_shift","_ctrl","_alt"];
    private _key = _this select 1;
    switch (true) do {
        case (_key == 57): { /// Space
            if (player isKindOf "Raptor" && {!(player getVariable ["rup_dino_busy",false])}) then {[player,0.7] call rup_fnc_jump};
        };
        case (_key == 34): { /// G
            if (player isKindOf "Raptor" && {!(player getVariable ["rup_dino_busy",false])}) then {[player,0.7] spawn rup_fnc_eat};
        };
        case (_key in (actionKeys "Gear")): {
            if (player isKindOf "Raptor" && {dialog}) then {closeDialog 0};
        };
    };
    false
}];