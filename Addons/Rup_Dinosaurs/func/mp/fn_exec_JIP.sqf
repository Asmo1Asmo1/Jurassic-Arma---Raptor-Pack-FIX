rup_get_JIP_array = [player];

publicVariableServer "rup_get_JIP_array";
waituntil {sleep 0.05; !isNil "RUP_JIP_array"};

{
    _x params ["_para","_fnc","_type"];
    private _fncCode = missionNamespace getVariable [_fnc,{}];
    switch (_type) do {
        case (1): {_para call _fncCode};
        case (2): {_para spawn _fncCode};
    };
} foreach RUP_JIP_array;