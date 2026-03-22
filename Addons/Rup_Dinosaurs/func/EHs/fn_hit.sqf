_unit = _this select 0;

_cause = _this select 1;

_dam = _this select 2;


_ran = round (random 10);

_dino setvariable ["rup_dino_busy", true];

switch (true) do
{
   case (_ran > 8):
   {

   };
   case (_ran >= 6 && _ran <= 8):
   {
      _anims = ["RaptorHitGesture1", "RaptorHitGesture2", "RaptorHitGesture3"];
      _anim = _anims select (floor (random (count _anims)));
      _unit playactionNow _anim;
   };
   case (_ran <= 6):
   {
      //nix
   };
};

_dino setvariable ["rup_dino_busy", false];
