waituntil {!IsNull player};

_dino = _this select 0;

_dino setSpeaker "NoVoice";

//////////////scripts/////////////////////////////////


_HUD = [] execVM "Rup_Dinosaurs\ui\HUD\HUD.sqf";


0 = [_dino] call rup_fnc_set_id;

////////////////////X-MAS/////////////////////////////

_date = date;
_month = _date select 1; 
_day = _date select 2;

if (_month == 12 && _day == 24) then
{

   _hats = ["Rup_ChristmasHat", "Rup_ChristmasHat2"];

   _hat = _hats select floor(random(count _hats));

   _dino addHeadgear _hat;

};

/////////////variables////////////////////////////////

_busy = _dino getvariable "rup_dino_busy";
_uncon = _dino getvariable "rup_dino_uncon";

if (IsNil "_busy") then
{
   _dino setvariable ["rup_dino_busy", false];
};
if (IsNil "_uncon") then
{
   _dino setvariable ["rup_dino_uncon", false];
};

///////////////////Unit - EHs////////////////////////////////////////////////////////////

_dino addeventhandler ["handledamage", 
{
   _this call RUP_fnc_handledamage;
}];

_dino addeventhandler ["Fired", 
{
   _this spawn RUP_fnc_Fired;
}];

_dino addeventhandler ["Respawn", 
{
   _this spawn RUP_fnc_init;
}];

_dino addeventhandler ["Killed", 
{
   _this call RUP_fnc_Killed;
}];


_dino addeventhandler ["InventoryOpened", 
{
   true
}];

_dino addeventhandler ["take", 
{
   removeallweapons (_this select 0); (_this select 0) addmagazine 'RaptorAttack_Mag'; (_this select 0) addweapon 'RaptorAttack'
}];

_dino addeventhandler ["AnimChanged", 
{
   _this spawn RUP_fnc_AnimChanged;
}];

_dino addeventhandler ["Hit", 
{
   _this call RUP_fnc_hit;
}];

///////////////////UI - EHs////////////////////////////////////////////////////////////

waitUntil {!isNull findDisplay 46};

(findDisplay 46) displaySetEventHandler ["KeyDown","_nul = [_this, player] execVM 'Rup_Dinosaurs\Scripts\Raptor\controls_down.sqf'"];
(findDisplay 46) displaySetEventHandler ["KeyUP","_nul = [_this, player] execVM 'Rup_Dinosaurs\Scripts\Raptor\controls_up.sqf'"];