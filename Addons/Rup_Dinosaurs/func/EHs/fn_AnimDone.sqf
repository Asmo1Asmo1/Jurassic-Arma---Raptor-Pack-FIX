_dino = _this select 0;
_anm = _this select 1;

if (!alive _dino) exitwith {};

if (_anm == "Unconscious") then
{
   sleep (random 6)+2;
   
   0 = [[_dino, "Unconscious2"], "rup_fnc_switchMove", 1, 1, _dino, true, false] call rup_fnc_MP;
   0 = _dino spawn 
   {
      waituntil {animationstate _this != "Unconscious2"};
      0 = [[_this, "AI_Attack_WalkF"], "rup_fnc_switchMove", 1, 1, _this, true, false] call rup_fnc_MP;
   };
   //0 = [[_dino, "RaptorGetUp"], "rup_fnc_say3d", 1, 1, nil, true, false] call rup_fnc_MP;
};
