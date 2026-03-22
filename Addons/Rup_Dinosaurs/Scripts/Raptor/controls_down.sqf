///https://community.bistudio.com/wiki/ListOfKeyCodes

_key = (_this select 0) select 1;
_shift = (_this select 0) select 2;
_ctrl = (_this select 0) select 3;
_alt = (_this select 0) select 4;

_user = actionKeys "User1";
_inv = actionKeys "Gear";

if (_key == 57) then /// Space
{

   if (((typeof player) isKindOf "Raptor") && !(player getvariable "rup_dino_busy")) then
   {
      [player, 0.7] call rup_fnc_jump;
   };

};

if (_key in _inv && player isKindOf "Raptor") then
{
   waituntil {dialog};
   closeDialog 0;
};


if (_key == 34) then /// G
{

   if (((typeof player) isKindOf "Raptor") && !(player getvariable "rup_dino_busy")) then
   {
      [player, 0.7] call rup_fnc_eat;
   };

};




if (_key == 33) then /// F
{

};

if (_key == 17) then /// W
{

};
