_dino = _this select 0;
_dino setVariable ["rup_dino_busy", true];

sleep 0.8;
if (!alive _dino) exitWith {_dino setVariable ["rup_dino_busy", false]};

_victim = [_dino,3,"jt_Head_C"] call rup_fnc_get_victim;
if (isNil "_victim" || {isNull _victim}) exitWith {_dino setVariable ["rup_dino_busy", false];};
if (!alive _victim) exitWith {detach _victim; _dino setVariable ["rup_dino_busy", false]};
if (_victim isKindOf "Raptor") exitWith {_dino setVariable ["rup_dino_busy", false];};

[[_victim,"RaptorJumpHitHuman"],"rup_fnc_say3d",1,1,nil,true,false] call rup_fnc_MP;
[[_victim,"RaptorMenschUmfall"],"rup_fnc_switchMove",1,1,_victim,true,false] call rup_fnc_MP;
_victim attachTo [_dino,[0,0.5,0]];
_victim setDir 180;

waitUntil {
    sleep 0.05;
    if !(_dino getVariable ["rup_dino_busy",false]) exitWith {true};
    if (!alive _victim) exitWith {
        detach _victim;
        _dino setVariable ["rup_dino_busy", false];
        [[_victim,"RaptorMenschKill"],"rup_fnc_switchMove",1,1,_victim,true,false] call rup_fnc_MP;

        _anim = if (isPlayer _dino)
            then {"Raptor_JumpAttackEatKILL"}
            else {"AI_Attack_JumpAttackEatKILL"};

        [[_dino,_anim],"rup_fnc_switchMove",1,1,_dino,true,false] call rup_fnc_MP;
        [[_dino,"HumanNeckBreak"],"rup_fnc_say3d",1,1,nil,true,false] call rup_fnc_MP;
        true
    };
    if (!alive _dino) exitWith {
        detach _victim;
        _dino setVariable ["rup_dino_busy", false];

        [[_victim,"RaptorMenschAufstehen"],"rup_fnc_switchMove",1,1,_victim,true,false] call rup_fnc_MP;
        [[_victim,"RaptorDeath"],"rup_fnc_say3d",1,1,nil,true,false] call rup_fnc_MP;

        _anim = if (isPlayer _dino)
            then {"Raptor_JumpAttackEatDEATH"}
            else {"AI_Attack_JumpAttackEatDEATH"};

        [[_dino,_anim],"rup_fnc_switchMove",1,1,_dino,true,false] call rup_fnc_MP;
        sleep 2;
        true
    };

    _anim = if (isPlayer _dino)
        then {"Raptor_JumpAttack"}
        else {"AI_Attack_JumpAttack"};
    waituntil {sleep 0.05; !alive _dino || {(animationState _dino) != _anim}};

    _anim = if (isPlayer _dino)
        then {"Raptor_JumpAttackEat"}
        else {"AI_Attack_JumpAttackEat"};

    [[_dino,_anim],"rup_fnc_switchMove",1,1,_dino,true,false] call rup_fnc_MP;
    [[_victim,"RaptorMenschZappeln"],"rup_fnc_switchMove",1,1,_victim,true,false] call rup_fnc_MP;
    [[_dino,"RaptorZerfleischen"],"rup_fnc_say3d",1,1,nil,true,false] call rup_fnc_MP;

    _Ddir = [_victim, _dino] call BIS_fnc_relativeDirTo;
    _rdam = if (!isNil "rup_raptor_dam_maul") then {rup_raptor_dam_maul} else {0.2};
    [_victim,_rdam,false,"",_Ddir,""] call rup_fnc_deal_damage;
    sleep 1.35;
    false
};

_dino setVariable ["rup_dino_busy", false];