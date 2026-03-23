params ["_dino","_dist","_sel"];

_victims = nearestobjects [(_dino modelToWorld (_dino selectionPosition _sel)),["CaManBase"],_dist];
_i = _victims findif {
    alive _x && {
    _x isNotEqualTo _dino && {
    !(_x isKindOf "Raptor")}}
};
if (_i == -1) exitWith {nil};
_victim = _victims select _i;//Just in case somwhere down the road this var is used
_victim