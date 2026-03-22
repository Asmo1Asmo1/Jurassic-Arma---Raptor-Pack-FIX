_dino = _this select 0;
_dam = _this select 1;

if (_dam > 0.2 && animationstate _dino != "Unconscious") then
{
      0 = [[_dino, "Unconscious"], "rup_fnc_switchMove", 1, 1, _dino, true, false] call rup_fnc_MP;
};