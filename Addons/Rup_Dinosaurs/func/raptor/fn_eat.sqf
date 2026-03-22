      _dino = _this select 0;

      _victim = [_dino, 3, "jt_Head_C"] call rup_fnc_get_victim;

      if (!IsNil "_victim") then 
      {
         if (!alive _victim) then
         {
            _dino setvariable ["rup_dino_busy", true];

            _dino playMoveNow "Raptor_Fressen";

            waituntil {animationState _dino == "Raptor_Fressen"};

            0 = [[_dino, "RaptorFressen"], "rup_fnc_say3d", 1, 1, _dino, true, false] call rup_fnc_MP;

            waituntil {animationState _dino != "Raptor_Fressen"};

            _dino setdamage (damage _dino)-0.2;

            [] call rup_fnc_getHP;

            sleep 1;

            _dino setvariable ["rup_dino_busy", false];
         } else
         {
            [_dino] call rup_fnc_scream;
         };

      } else
      {
         [_dino] call rup_fnc_scream;
      };

