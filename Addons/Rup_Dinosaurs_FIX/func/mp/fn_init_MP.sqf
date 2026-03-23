private _initJipArray = {
    if (isNil "RUP_JIP_array") then {RUP_JIP_array = []};//Fix init issue
};
if (!isMultiplayer) exitWith {call _initJipArray};
if (isServer) then {call _initJipArray};

"rup_mp" addPublicVariableEventHandler {
    (_this select 1) params ["_para","_fnc","_type"];
    private _fncCode = missionNamespace getVariable [_fnc,{}];
    switch (_type) do {
        case 1: {_para call _fncCode};
        case 2: {_para spawn _fncCode};
    };
};

"rup_set_JIP_array" addPublicVariableEventHandler {
    (_this select 1) params ["_para","_fnc","_type"];
    if (isNil "RUP_JIP_array") then {RUP_JIP_array = []};//Fix init issue
    RUP_JIP_array = RUP_JIP_array + [[_para, _fnc, _type]];
};

"rup_get_JIP_array" addPublicVariableEventHandler {
    (_this select 1) params ["_unit"];
    private _owner = owner _unit;
    _owner publicVariableClient "RUP_JIP_array";
};