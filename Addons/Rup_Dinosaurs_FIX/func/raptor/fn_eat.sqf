_dino = _this select 0;
_victim = [_dino,3,"jt_Head_C"] call rup_fnc_get_victim;
if (isNil "_victim" || {isNull _victim}) exitWith {[_dino] call rup_fnc_scream};
if (alive _victim) exitWith {[_dino] call rup_fnc_scream};

_dino setVariable ["rup_dino_busy", true];
_dino playMoveNow "Raptor_Fressen";

waituntil {sleep 0.05; !alive _dino || {(animationState _dino) == "Raptor_Fressen"}};
if (!alive _dino) exitWith {_dino setVariable ["rup_dino_busy", false]};

[[_dino,"RaptorFressen"],"rup_fnc_say3d",1,1,_dino,true,false] call rup_fnc_MP;

waituntil {sleep 0.05; !alive _dino || {(animationState _dino) != "Raptor_Fressen"}};
if (!alive _dino) exitWith {_dino setVariable ["rup_dino_busy", false]};

_dino setdamage (damage _dino)-0.2;
call rup_fnc_getHP;
sleep 1;
if (isNull _dino) exitWith {};
_dino setVariable ["rup_dino_busy", false];