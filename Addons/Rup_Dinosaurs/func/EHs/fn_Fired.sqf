_dino = _this select 0;

//_busy = _dino getvariable "rup_dino_busy";

//if (_busy) exitwith {};


if (currentWeaponMode _dino == "Attack") then 
{
   _anims = ["RaptorBiteGesture1", "RaptorBiteGesture2", "RaptorBiteGesture3"];
   _anim = _anims select (floor (random (count _anims)));
   _dino playactionNow _anim;

   sleep 0.3;

   _victim = [_dino, 2, "jt_Head_C"] call rup_fnc_get_victim;

   if (!IsNil "_victim") then
   {
      _Ddir = [_victim, _dino] call BIS_fnc_relativeDirTo;

      _rdam = 1*rup_raptor_dam;

      [_victim, _rdam, false, "", _Ddir, "RaptorHit1"] call rup_fnc_deal_damage; 
   };
};

if (currentWeaponMode _dino == "JumpAttack") then 
{
   _anim = "Raptor_JumpAttack";

   if (!IsPlayer _dino) then
   {

      _anim = "rup_ai_JumpAttack";

   };

   _dino playmovenow _anim;


   //0 = [[_dino, "Raptor_JumpAttack"], "rup_fnc_switchMove", 1, 1, _dino, true, false] call rup_fnc_MP;

   waituntil {animationState _dino == _anim};

   //_dino say3d "RaptorJumpAttack";

   0 = [[_dino, "RaptorJumpAttack"], "rup_fnc_say3d", 1, 1, nil, true, false] call rup_fnc_MP;

   [_dino] spawn rup_fnc_jumpattack;
};
