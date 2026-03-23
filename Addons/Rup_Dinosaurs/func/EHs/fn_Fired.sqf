_dino = _this select 0;

if ((currentWeaponMode _dino) == "Attack") then {
    _anim = selectRandom ["RaptorBiteGesture1","RaptorBiteGesture2","RaptorBiteGesture3"];
    _dino playactionNow _anim;
    sleep 0.3;
    if (!alive _dino) exitWith {};

    _victim = [_dino,2,"jt_Head_C"] call rup_fnc_get_victim;
    if (isNil "_victim" || {isNull _victim}) exitWith {};

    _Ddir = [_victim, _dino] call BIS_fnc_relativeDirTo;
    _rdam = if (!isNil "rup_raptor_dam") then {rup_raptor_dam} else {0.5};
    [_victim,_rdam,false,"",_Ddir,"RaptorHit1"] call rup_fnc_deal_damage;
};

if ((currentWeaponMode _dino) == "JumpAttack") then {
    _anim = if (isPlayer _dino)
        then {"Raptor_JumpAttack"}
        else {"rup_ai_JumpAttack"};
    _dino playmovenow _anim;

    waituntil {sleep 0.05; !alive _dino || {(animationState _dino) == _anim}};
    if (!alive _dino) exitWith {};

    [[_dino,"RaptorJumpAttack"],"rup_fnc_say3d",1,1,nil,true,false] call rup_fnc_MP;
    [_dino] spawn rup_fnc_jumpattack;
};