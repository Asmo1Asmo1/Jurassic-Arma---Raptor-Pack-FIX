if (!IsMultiplayer) exitwith {RUP_JIP_array = [];};

if (IsServer) then
{
   RUP_JIP_array = [];
};

"rup_mp" addPublicVariableEventHandler 
{ 

   _val = _this select 1;
   _para = _val select 0;
   _fnc = _val select 1;
   _type = _val select 2;

   switch (_type) do
   {
      case (1):
      {
         _code = format["_para call %1",_fnc];
         call compile _code;
      };
      case (2):
      {
         _code = format["_para spawn %1",_fnc];
         call compile _code;
      };
   };
};  

"rup_set_JIP_array" addPublicVariableEventHandler 
{ 

   _val = _this select 1;
   _para = _val select 0;
   _fnc = _val select 1;
   _type = _val select 2;

   RUP_JIP_array = RUP_JIP_array + [[_para, _fnc, _type]];
};

"rup_get_JIP_array" addPublicVariableEventHandler 
{ 

   _val = _this select 1;
   _unit = _val select 0;

   _owner = owner _unit;

   _owner publicVariableClient "RUP_JIP_array";
};