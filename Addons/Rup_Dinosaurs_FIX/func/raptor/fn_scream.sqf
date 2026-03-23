_dino = _this select 0;
_dino setVariable ["rup_dino_busy",true];

_anim = selectRandom ["Raptor_Scream1","Raptor_Scream2","Raptor_Scream3"];
_dino playmovenow _anim;

waituntil {sleep 0.05; !alive _dino || {(animationState _dino) == _anim}};
if (!alive _dino) exitWith {_dino setVariable ["rup_dino_busy",false]};
[[_dino,_anim],"rup_fnc_say3d",1,1,_dino,true,false] call rup_fnc_MP;//_anim has the same name as the sound file

sleep 5;
if (isNull _dino) exitWith {};
_dino setVariable ["rup_dino_busy",false];