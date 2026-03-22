   _victim = _this select 0;
   _dam = _this select 1;
   _overall = _this select 2;
   _part = _this select 3;
   _Ddir = _this select 4;
   _snd = _this select 5;
   _ssource = _this select 6;

   if (IsNil "_ssource") then {_ssource = _victim};

   if !(_overall) then
   {
      _victim setdamage (damage _victim)+_dam;

      if (_snd != "") then
      {
         0 = [[_ssource, _snd], "rup_fnc_say3d", 1, 1, _ssource, true, false] call rup_fnc_MP;
      };

   } else
   {
      _part = _this select 3;

      _dam_part = _victim getHitPointDamage _part;

      _victim setHitPointDamage [_part, (_dam_part + _dam)];
   };
   if (IsPlayer _victim) then
   {
      if (IsMultiplayer) then
      {
         0 = [[_victim, _Ddir, _snd], "rup_fnc_hiteffect_1", 1, 3, _victim, false, false] call rup_fnc_MP;
      } else
      {
         [_victim, _Ddir] call rup_fnc_hiteffect_1;
      };
   };