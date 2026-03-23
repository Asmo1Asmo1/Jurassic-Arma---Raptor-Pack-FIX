_dino = _this select 0;

//////////////Identity/////////////////////////////////

_dino setSpeaker "NoVoice";
_id = switch (typeOf _dino) do {
    case "RaptorF1";
    case "RaptorF1_E";
    case "RaptorF1_W": {"RaptorF1_ID1"};
    case "RaptorF2";
    case "RaptorF2_E";
    case "RaptorF2_W": {"RaptorF2_ID1"};
    case "RaptorM";
    case "RaptorM_E";
    case "RaptorM_W":  {"RaptorM1_ID1"};
    default {"RaptorF1_ID1"};
};
_dino setIdentity _id;

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

_dino addEventHandler ["explosion",{_this call RUP_fnc_explosion}];
_dino addEventHandler ["Killed",{_this call RUP_fnc_Killed}];
_dino addEventHandler ["handledamage",{_this call RUP_fnc_handledamage}];
_dino addEventHandler ["Respawn",{_this spawn RUP_fnc_init_AI}];
_dino addEventHandler ["InventoryOpened",{true}];
_dino addEventHandler ["AnimChanged",{_this spawn RUP_fnc_AnimChanged}];
_dino addEventHandler ["Hit",{_this call RUP_fnc_hit}];

///////////////////FSM////////////////////////////////////////////////////////////

_dino execFSM 'Rup_Dinosaurs_FIX\Scripts\Raptor\AI.fsm';