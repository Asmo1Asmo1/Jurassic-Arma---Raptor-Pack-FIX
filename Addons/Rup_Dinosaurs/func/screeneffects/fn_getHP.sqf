_u = _this select 0;

disableSerialization;

("RUP_GET_HP" call BIS_fnc_rscLayer) cutRsc ["RUP_GET_HP","PLAIN"];

_display = uiNamespace getVariable 'RUP_GET_HP';

_ctrl = _display displayCtrl 12;

_x = safezoneX + safezoneW - (0.05  * safezoneW * 2);
_y = safezoneY + safezoneH - (0.075  * safezoneH * 2);
_w = 0.05  * safezoneW;
_h = 0.075  * safezoneH;

_ctrl ctrlSetPosition [_x, _y, _w, _h];

_ctrl ctrlCommit 1;

