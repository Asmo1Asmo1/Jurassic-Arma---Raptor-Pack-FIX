_dino = _this select 0;
_anm = _this select 1;

_uncon = _dino getvariable "rup_dino_uncon";

if (!alive _dino or _uncon) exitwith {};


if (_anm == "Unconscious") then
{
   _dino setvariable ["rup_dino_uncon", true];
   sleep (random 6)+2;

   _anim = "Unconscious2";

   if (!IsPlayer _dino) then
   {
      _anim = "AI_Attack_Unconscious2";
   };

   0 = [[_dino, _anim], "rup_fnc_switchMove", 1, 1, _dino, true, false] call rup_fnc_MP;

   0 = [[_dino, "RaptorGetUp"], "rup_fnc_say3d", 1, 1, nil, true, false] call rup_fnc_MP;

   waituntil {animationstate _dino != _anim};

   _dino setvariable ["rup_dino_uncon", false];
};
