
_dino = _this select 0;

  switch (typeOf _dino) do
  {
     case ("RaptorF1"):
     {
        _ids = ["RaptorF1_ID1"];
        _id = _ids select floor(random(count _ids));
        0 = [[_dino, _id], "rup_fnc_setIdentity", 1, 1, _dino, true, true] call rup_fnc_MP;
     };
     case ("RaptorF2"):
     {
        _ids = ["RaptorF2_ID1"];
        _id = _ids select floor(random(count _ids));
        0 = [[_dino, _id], "rup_fnc_setIdentity", 1, 1, _dino, true, true] call rup_fnc_MP;
     };
     case ("RaptorM"):
     {
        _ids = ["RaptorM1_ID1"];
        _id = _ids select floor(random(count _ids));
        0 = [[_dino, _id], "rup_fnc_setIdentity", 1, 1, _dino, true, true] call rup_fnc_MP;
     };
     case ("RaptorF1_E"):
     {
        _ids = ["RaptorF1_ID1"];
        _id = _ids select floor(random(count _ids));
        0 = [[_dino, _id], "rup_fnc_setIdentity", 1, 1, _dino, true, true] call rup_fnc_MP;
     };
     case ("RaptorF2_E"):
     {
        _ids = ["RaptorF2_ID1"];
        _id = _ids select floor(random(count _ids));
        0 = [[_dino, _id], "rup_fnc_setIdentity", 1, 1, _dino, true, true] call rup_fnc_MP;
     };
     case ("RaptorM_E"):
     {
        _ids = ["RaptorM1_ID1"];
        _id = _ids select floor(random(count _ids));
        0 = [[_dino, _id], "rup_fnc_setIdentity", 1, 1, _dino, true, true] call rup_fnc_MP;
     };
     case ("RaptorF1_W"):
     {
        _ids = ["RaptorF1_ID1"];
        _id = _ids select floor(random(count _ids));
        0 = [[_dino, _id], "rup_fnc_setIdentity", 1, 1, _dino, true, true] call rup_fnc_MP;
     };
     case ("RaptorF2_W"):
     {
        _ids = ["RaptorF2_ID1"];
        _id = _ids select floor(random(count _ids));
        0 = [[_dino, _id], "rup_fnc_setIdentity", 1, 1, _dino, true, true] call rup_fnc_MP;
     };
     case ("RaptorM_W"):
     {
        _ids = ["RaptorM1_ID1"];
        _id = _ids select floor(random(count _ids));
        0 = [[_dino, _id], "rup_fnc_setIdentity", 1, 1, _dino, true, true] call rup_fnc_MP;
     };
     default {};
  };

