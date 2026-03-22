RUP_Rapt_HP_REFRESH =
{
            _display = uinamespace getvariable 'RUP_Rapt_HUD';

            _ctrlHP = _display displayCtrl 12;

            _ctrlWEAP = _display displayCtrl 13;

            _ctrlFAT = _display displayCtrl 14;

            _weap = currentWeaponMode player;

            _dam = damage player;

            //_stringHP1 = "Rup_Dinosaurs\Data\Raptor\HP\d_";

            //_stringHP2 = format ["%1", round ((damage player)*10)];

            //_stringHP3 = ".paa";

            //_stringHP = _stringHP1+_stringHP2+_stringHP3;


            //_ctrlHP ctrlSetText _stringHP;

            _ctrlHP ctrlSetTextColor [_dam, 1-_dam, 0, 1];

            _stringWEAP = "";

            switch (true) do
            {
               case (_weap == "Attack"):
               {
                  _stringWEAP = "Rup_Dinosaurs\Data\Raptor\WAFFEN\1_ca.paa";
               };       
               case (_weap == "JumpAttack"):
               {
                  _stringWEAP = "Rup_Dinosaurs\Data\Raptor\WAFFEN\2_ca.paa";
               }; 
            };

            _ctrlWEAP ctrlSetText _stringWEAP;

            _fatPos = ctrlPosition _ctrlFAT;

            _def = 0.8*safezoneW;

            _x = _fatPos select 0;
            _y = _fatPos select 1;
            _w = _fatPos select 2;
            _h = _fatPos select 3;

            _fat = _def*(getFatigue player);

            _ctrlFAT CtrlsetPosition [0.5-_fat/2, _y, _fat, _h];

            _ctrlFAT ctrlSetTextColor [_fat, 1-_fat, 0, 0.5];

            _ctrlHP ctrlCommit 0;
            _ctrlWEAP ctrlCommit 0;
            _ctrlFAT ctrlCommit 0;
};


RUP_Rapt_HUD_Loop = 
{
      If !((typeOf player) isKindOf "Raptor") ExitWith {};
      disableSerialization; 
      //cutRsc ["RUP_Rapt_HUD", "PLAIN"];
      ("RUP_Rapt_HUD" call BIS_fnc_rscLayer) cutRsc ["RUP_Rapt_HUD","PLAIN"];

    
  
      _display = uiNamespace getVariable "RUP_Rapt_HUD"; 

      while {!isNull _display} do 
      {
         [] call RUP_Rapt_HP_REFRESH; 
         sleep 0.5;
      }; 
      


};

sleep 0.005;
[]Spawn RUP_Rapt_HUD_Loop; 

