params ["_para","_fnc","_type","_receiver","_client","_local","_perst"];

rup_mp = [_para,_fnc,_type];

switch (_receiver) do
{
   case (1): {publicVariable "rup_mp"};
   case (2): {publicVariableServer "rup_mp"};
   case (3):
   {
      if (typeName _client == "SCALAR") then
      {
         //forEach nearby units that are players and not the player
         {
            _owner = owner _x;
            if (_owner == 0)
               then {publicVariableServer "rup_mp"}
               else {_owner publicVariableClient "rup_mp"};
         } foreach (((player nearEntities [["CaManBase"], _client]) - [player]) select {isPlayer _x});
      } else {
         _owner = owner _client;
         if (_owner == 0)
            then {publicVariableServer "rup_mp"}
            else {_owner publicVariableClient "rup_mp"};
      };
   };
};

if (_perst) then
{
   if (isServer) then {
      if (isNil "RUP_JIP_array") then {RUP_JIP_array = []};
      RUP_JIP_array = RUP_JIP_array + [[_para, _fnc, _type]];
   } else {
      rup_set_JIP_array = [_para,_fnc,_type];
      publicVariableServer "rup_set_JIP_array";
   };
};

if (_local) then
{
   private _fncCode = missionNamespace getVariable [_fnc,{}];
   switch (_type) do {
      case (1): {_para call _fncCode};
      case (2): {_para spawn _fncCode};
   };
};