_u = _this select 0;

_dir = _this select 1;

disableSerialization;

enableCamShake true;
addCamShake [5, 1, 25];

_ran = str(random 10);
_str = "RUP_HIT_1"+_ran;

(_str call BIS_fnc_rscLayer) cutRsc ["RUP_HIT_1","PLAIN"];

_display = uiNamespace getVariable "RUP_HIT_1";
_ctrl = _display displayCtrl 181818;

_w = (safezoneX+safezoneW);
_h = (safezoneY+safezoneH);

switch (true) do
{
   case (_dir < 90 && _dir >= 0):
   {
      _ctrl ctrlsetText "Rup_Dinosaurs\Data\All\blood_screen_R_T_ca.paa";

      _ctrl ctrlSetPosition [safezoneX+safezoneW-_w, safezoneY, _w, _h];

      _ctrl ctrlcommit 0;
   };
   case (_dir < 180 && _dir >= 90):
   {
      _ctrl ctrlsetText "Rup_Dinosaurs\Data\All\blood_screen_R_B_ca.paa";

      _ctrl ctrlSetPosition [safezoneX+safezoneW-_w, safezoneY+safezoneH-_h, _w, _h];

      _ctrl ctrlcommit 0;
   };
   case (_dir <= 360 && _dir >= 270):
   {
      _ctrl ctrlsetText "Rup_Dinosaurs\Data\All\blood_screen_L_T_ca.paa";

      _ctrl ctrlSetPosition [safezoneX, safezoneY, _w, _h];

      _ctrl ctrlcommit 0;
   };
   case (_dir < 270 && _dir >= 180):
   {
      _ctrl ctrlsetText "Rup_Dinosaurs\Data\All\blood_screen_L_B_ca.paa";

      _ctrl ctrlSetPosition [safezoneX, safezoneY+safezoneH-_h, _w, _h];

      _ctrl ctrlcommit 0;
   };
};
