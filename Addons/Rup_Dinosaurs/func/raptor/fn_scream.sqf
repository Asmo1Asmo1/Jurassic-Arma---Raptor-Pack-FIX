      _dino = _this select 0;

      _dino setvariable ["rup_dino_busy", true];

      _anims = ["Raptor_Scream1", "Raptor_Scream2", "Raptor_Scream3"];
      _anim = _anims select (floor (random (count _anims)));

      _snd = _anim;

      _dino playmovenow _anim;

      waituntil {animationState _dino == _anim};

      0 = [[_dino, _snd], "rup_fnc_say3d", 1, 1, _dino, true, false] call rup_fnc_MP;

      sleep 5;

      _dino setvariable ["rup_dino_busy", false];

