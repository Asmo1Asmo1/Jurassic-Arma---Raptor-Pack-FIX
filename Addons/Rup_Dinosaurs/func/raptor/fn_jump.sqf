
      _unit = _this select 0;

      _sp = abs(velocity _unit select 0) + abs (velocity _unit select 1) + abs (velocity _unit select 2);

      _ya = (positionCameraToWorld [0,0,0]) select 2;

      _yb = (positionCameraToWorld [0,0,5]) select 2;

      _py = 0;

      _unit setvariable ["rup_dino_busy", true];

      if (_yb > _ya) then
      {
         _py = _yb - _ya;
      } else {_py = 0};

      if (cameraView == "External") then {_py = _py*2};

      _maxy = _yb max _ya;

      _vel = [(_sp/3+1.5-_py/2)*sin (getdir _unit), (_sp/3+1.5-_py/2)*cos (getdir _unit), (_sp/3+1.5)+_py];

      _unit playMoveNow "Raptor_SprungStart";

      0 = [[_unit, "RaptorScream16"], "rup_fnc_say3d", 1, 1, nil, true, false] call rup_fnc_MP;

      if (_sp == 0) then
      {	
         _unit setvelocity [0,0,5]; //jump stand
      } else
      {
         _unit setvelocity _vel;
      };

      0 = _unit spawn 
      {
         waituntil {isTouchingGround _this};

         //_this playmoveNow "";

         //_this setvelocity [0,0,0];

         sleep 2;

         _this setvariable ["rup_dino_busy", false];
      };

