_dino = _this select 0;

_dino setSpeaker "NoVoice";

  switch (typeOf _dino) do
  {
     case ("RaptorF1"):
     {
        _ids = ["RaptorF1_ID1"];
        _id = _ids select floor(random(count _ids));
        _dino setIdentity _id;
     };
     case ("RaptorF2"):
     {
        _ids = ["RaptorF2_ID1"];
        _id = _ids select floor(random(count _ids));
        _dino setIdentity _id;
     };
     case ("RaptorM"):
     {
        _ids = ["RaptorM1_ID1"];
        _id = _ids select floor(random(count _ids));
        _dino setIdentity _id;
     };
     case ("RaptorF1_E"):
     {
        _ids = ["RaptorF1_ID1"];
        _id = _ids select floor(random(count _ids));
        _dino setIdentity _id;
     };
     case ("RaptorF2_E"):
     {
        _ids = ["RaptorF2_ID1"];
        _id = _ids select floor(random(count _ids));
        _dino setIdentity _id;
     };
     case ("RaptorM_E"):
     {
        _ids = ["RaptorM1_ID1"];
        _id = _ids select floor(random(count _ids));
        _dino setIdentity _id;
     };
     case ("RaptorF1_W"):
     {
        _ids = ["RaptorF1_ID1"];
        _id = _ids select floor(random(count _ids));
        _dino setIdentity _id;
     };
     case ("RaptorF2_W"):
     {
        _ids = ["RaptorF2_ID1"];
        _id = _ids select floor(random(count _ids));
        _dino setIdentity _id;
     };
     case ("RaptorM_W"):
     {
        _ids = ["RaptorM1_ID1"];
        _id = _ids select floor(random(count _ids));
        _dino setIdentity _id;
     };
     default {};
  };
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

_dino addeventhandler ["explosion", 
{
   _this call RUP_fnc_explosion;
}];

_dino addeventhandler ["Killed", 
{
   _this call RUP_fnc_Killed;
}];

_dino addeventhandler ["handledamage", 
{
   _this call RUP_fnc_handledamage;
}];


_dino addeventhandler ["Respawn", 
{
   _this spawn RUP_fnc_init_AI;
}];

_dino addeventhandler ["InventoryOpened", 
{
   true
}];



_dino addeventhandler ["AnimChanged", 
{
   _this spawn RUP_fnc_AnimChanged;
}];

_dino addeventhandler ["Hit", 
{
   _this call RUP_fnc_hit;
}];

_dino execFSM 'Rup_Dinosaurs\Scripts\Raptor\AI.fsm';