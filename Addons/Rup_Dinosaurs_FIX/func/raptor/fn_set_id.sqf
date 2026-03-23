_dino = _this select 0;
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
[[_dino,_id],"rup_fnc_setIdentity",1,1,_dino,true,true] call rup_fnc_MP;