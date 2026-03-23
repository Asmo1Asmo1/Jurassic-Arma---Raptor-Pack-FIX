private _initJipArray = {
   if (isNil "RUP_JIP_array") then {RUP_JIP_array = []};//Fix init issue
};
if (!isMultiplayer) exitwith {call _initJipArray};
if (isServer) then {call _initJipArray};

"rup_mp" addPublicVariableEventHandler {
   (_this select 1) params ["_para","_fnc","_type"];

   switch (_type) do {
      case 1: {
         _code = format["_para call %1",_fnc];
         call compile _code;
      };
      case 2: {
         _code = format["_para spawn %1",_fnc];
         call compile _code;
      };
   };
};

"rup_set_JIP_array" addPublicVariableEventHandler {
   (_this select 1) params ["_para","_fnc","_type"];
   if (isNil "RUP_JIP_array") then {RUP_JIP_array = []};//Fix init issue
   RUP_JIP_array = RUP_JIP_array + [[_para, _fnc, _type]];
};

"rup_get_JIP_array" addPublicVariableEventHandler {
   (_this select 1) params ["_unit"];
   private _owner = owner _unit;
   _owner publicVariableClient "RUP_JIP_array";
};