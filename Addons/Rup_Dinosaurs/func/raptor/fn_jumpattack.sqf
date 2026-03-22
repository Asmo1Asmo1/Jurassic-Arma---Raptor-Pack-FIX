   _dino = _this select 0;

   _dino setvariable ["rup_dino_busy", true];

    sleep 0.8;

   _victim = [_dino, 3, "jt_Head_C"] call rup_fnc_get_victim;

   if (IsNil "_victim") exitwith {_dino setvariable ["rup_dino_busy", false];};
   if (IsNull _victim) exitwith {_dino setvariable ["rup_dino_busy", false];};
   if ((typeOf _victim) iskindof "Raptor") exitwith {_dino setvariable ["rup_dino_busy", false];};
   if (!alive _victim) exitwith {detach _victim; _dino setvariable ["rup_dino_busy", false];};

   if (!IsNil "_victim") then
   {
      0 = [[_victim, "RaptorJumpHitHuman"], "rup_fnc_say3d", 1, 1, nil, true, false] call rup_fnc_MP;

      0 = [[_victim, "RaptorMenschUmfall"], "rup_fnc_switchMove", 1, 1, _victim, true, false] call rup_fnc_MP;

      _victim attachTo [_dino,[0,0.5,0]];

      _victim setDir 180;	  

      while {_dino getvariable "rup_dino_busy"} do
      {
         if (!alive _victim) exitWith                
         {
	    detach _victim;

            _dino setvariable ["rup_dino_busy", false];

            0 = [[_victim, "RaptorMenschKill"], "rup_fnc_switchMove", 1, 1, _victim, true, false] call rup_fnc_MP;

            _anim = "Raptor_JumpAttackEatKILL";

            if (!IsPlayer _dino) then {_anim = "AI_Attack_JumpAttackEatKILL"};

            0 = [[_dino, _anim], "rup_fnc_switchMove", 1, 1, _dino, true, false] call rup_fnc_MP; 

            0 = [[_dino, "HumanNeckBreak"], "rup_fnc_say3d", 1, 1, nil, true, false] call rup_fnc_MP; 
  
         };
         if (!alive _dino) exitWith                
         {
            detach _victim;

            _dino setvariable ["rup_dino_busy", false];

            0 = [[_victim, "RaptorMenschAufstehen"], "rup_fnc_switchMove", 1, 1, _victim, true, false] call rup_fnc_MP; 

            0 = [[_victim, "RaptorDeath"], "rup_fnc_say3d", 1, 1, nil, true, false] call rup_fnc_MP; 

            _anim = "Raptor_JumpAttackEatDEATH";

            if (!IsPlayer _dino) then {_anim = "AI_Attack_JumpAttackEatDEATH"};

            0 = [[_dino, _anim], "rup_fnc_switchMove", 1, 1, _dino, true, false] call rup_fnc_MP; 

	    sleep 2; 
	
         };
         if (!alive _victim) exitwith {detach _victim; _dino setvariable ["rup_dino_busy", false];};

         _anim = "Raptor_JumpAttack";

         if (!IsPlayer _dino) then {_anim = "AI_Attack_JumpAttack"};

         waituntil {animationState _dino != _anim};

         _anim = "Raptor_JumpAttackEat";

         if (!IsPlayer _dino) then {_anim = "AI_Attack_JumpAttackEat"};

         0 = [[_dino, _anim], "rup_fnc_switchMove", 1, 1, _dino, true, false] call rup_fnc_MP; 

         0 = [[_victim, "RaptorMenschZappeln"], "rup_fnc_switchMove", 1, 1, _victim, true, false] call rup_fnc_MP; 

         0 = [[_dino, "RaptorZerfleischen"], "rup_fnc_say3d", 1, 1, nil, true, false] call rup_fnc_MP;

        _Ddir = [_victim, _dino] call BIS_fnc_relativeDirTo;

        _rdam = 1*rup_raptor_dam_maul;

        [_victim, _rdam, false, "", _Ddir, ""] call rup_fnc_deal_damage;

        sleep 1.35;
       
      };
   };
   _dino setvariable ["rup_dino_busy", false];
