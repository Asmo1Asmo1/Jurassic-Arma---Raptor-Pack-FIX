_dino = _this select 0;
_dino setVariable ["rup_dino_busy", true];
_ran = round (random 10);
/*Left original randomization logic here. I guess author wanted to have more variations but stopped at this [Asmo]*/
if (_ran >= 6 && _ran <= 8) then {
    _dino playactionNow (selectRandom ["RaptorHitGesture1","RaptorHitGesture2","RaptorHitGesture3"]);
};
_dino setVariable ["rup_dino_busy", false];