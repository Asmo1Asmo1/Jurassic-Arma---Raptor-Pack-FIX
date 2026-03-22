   _dino = _this select 0;
   _sel = _this select 1;
   _dam = _this select 2;
   _so = _this select 3;
   _pro = _this select 4;

   _damage = damage _dino;
   if (_this select 0 == _this select 3 or (_this select 4) == "") then 
   {
      _damage
   };
