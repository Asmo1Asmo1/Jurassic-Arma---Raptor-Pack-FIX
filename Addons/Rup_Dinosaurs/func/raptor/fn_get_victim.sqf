   _dino = _this select 0;
   _dist = _this select 1;
   _sel = _this select 2;

   _victims = [];
   _victims = nearestobjects [(_dino modeltoworld (_dino selectionPosition _sel)), ["CaManBase"], _dist];

   {
      if ((typeOf _x) iskindof "Raptor" or _x == _dino) then
      {
         _victims = _victims - [_x];
      };
   } foreach _victims;


   if (count _victims == 0) exitwith {};

   _victim = _victims select 0;
   _victim

