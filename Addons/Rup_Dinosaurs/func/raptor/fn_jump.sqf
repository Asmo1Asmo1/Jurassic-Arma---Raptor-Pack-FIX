
_unit = _this select 0;

(velocity _unit) params ["_velX", "_velY", "_velZ"];
_sp = (abs _velX) + (abs _velY) + (abs _velZ);

_ya = (positionCameraToWorld [0,0,0]) select 2;
_yb = (positionCameraToWorld [0,0,5]) select 2;

_unit setVariable ["rup_dino_busy", true];

_py = if (_yb > _ya) then {_yb - _ya} else {0};
if (cameraView == "External") then {_py = _py * 2};

_vel = [(_sp/3+1.5-_py/2)*sin (getdir _unit), (_sp/3+1.5-_py/2)*cos (getdir _unit), (_sp/3+1.5)+_py];//I'll leave it 'as is' [Asmo]
_unit playMoveNow "Raptor_SprungStart";
[[_unit,"RaptorScream16"],"rup_fnc_say3d",1,1,nil,true,false] call rup_fnc_MP;

if (_sp == 0)
    then {_unit setvelocity [0,0,5]}/*Jump stand*/
    else {_unit setvelocity _vel};

_unit spawn {
    waituntil {sleep 0.05; !alive _this || {isTouchingGround _this}};
    sleep 2;
    if (isNull _this) exitWith {};
    _this setVariable ["rup_dino_busy", false];
};