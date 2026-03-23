params ["_u","_sel","_o","_off"];


_selPos = _u selectionPosition _sel;
_selPos = _selPos vectorAdd [0,_off,0];
_checkpos = _u modelToWorld _selPos;

_wtm = _o worldToModel _checkpos;
(boundingboxreal _o) params ["_bb1","_bb2"];

//return
((_wtm select 0) > (_bb1 select 0) && {
(_wtm select 0) < (_bb2 select 0) && {
(_wtm select 1) > (_bb1 select 1) && {
(_wtm select 1) < (_bb2 select 1) && {
(_wtm select 2) > (_bb1 select 2) && {
(_wtm select 2) < (_bb2 select 2) }}}}})