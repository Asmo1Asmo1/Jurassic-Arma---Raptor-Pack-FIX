params ["_dino","_anim"];
if (!alive _dino) exitWith {};
if (_anim != "Unconscious") exitWith {};
if (_dino getVariable ["rup_dino_uncon",false]) exitWith {};

_dino setVariable ["rup_dino_uncon", true];
sleep ((random 6)+2);
if (!alive _dino) exitWith {};


_anim = if (isPlayer _dino)
    then {"Unconscious2"}
    else {"AI_Attack_Unconscious2"};

[[_dino,_anim],"rup_fnc_switchMove",1,1,_dino,true,false] call rup_fnc_MP;
[[_dino,"RaptorGetUp"],"rup_fnc_say3d",1,1,nil,true,false] call rup_fnc_MP;

waituntil {sleep 0.05; !alive _dino || {(animationState _dino) != _anim}};
if (!alive _dino) exitWith {};
_dino setVariable ["rup_dino_uncon", false];