params ["_dino","_anim"];
if (!alive _dino) exitWith {};
if (_anim != "Unconscious") exitWith {};

sleep ((random 6)+2);
if (!alive _dino) exitWith {};

[[_dino,"Unconscious2"],"rup_fnc_switchMove",1,1,_dino,true,false] call rup_fnc_MP;
waituntil {sleep 0.05; !alive _dino || {(animationState _dino) != "Unconscious2"}};
if (!alive _dino) exitWith {};
[[_dino,"AI_Attack_WalkF"],"rup_fnc_switchMove",1,1,_dino,true,false] call rup_fnc_MP;