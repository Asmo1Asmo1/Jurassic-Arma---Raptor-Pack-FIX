disableSerialization;

("RUP_GET_HP" call BIS_fnc_rscLayer) cutRsc ["RUP_GET_HP","PLAIN"];

_display = uiNamespace getVariable ["RUP_GET_HP",displayNull];
if (isNull _display) exitWith {};
_ctrl = _display displayCtrl 12;
if (isNull _ctrl) exitWith {};

_x = safezoneX + safezoneW - (0.05  * safezoneW * 2);
_y = safezoneY + safezoneH - (0.075 * safezoneH * 2);
_w = 0.05  * safezoneW;
_h = 0.075  * safezoneH;

_ctrl ctrlSetPosition [_x,_y,_w,_h];
_ctrl ctrlCommit 1;