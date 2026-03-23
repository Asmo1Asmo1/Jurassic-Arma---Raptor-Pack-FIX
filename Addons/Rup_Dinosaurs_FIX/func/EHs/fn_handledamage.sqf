/*Note: I'm not entirely sure what this function is supposed to do, return overall damage in specific case? [Asmo]*/
params ["_dino","","","_source","_projectile"];
_damage = damage _dino;
if (_dino == _source || {_projectile isEqualTo ""}) then {_damage};