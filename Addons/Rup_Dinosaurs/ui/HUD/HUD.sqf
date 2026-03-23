RUP_Rapt_HP_REFRESH = {
   _display = uinamespace getVariable 'RUP_Rapt_HUD';
   _ctrlHP = _display displayCtrl 12;
   _ctrlWEAP = _display displayCtrl 13;
   _ctrlFAT = _display displayCtrl 14;
   _weap = currentWeaponMode player;
   _dam = damage player;

   _ctrlHP ctrlSetTextColor [_dam,(1-_dam),0,1];

   _stringWEAP = switch (true) do {
      case (_weap == "Attack"): {"Rup_Dinosaurs\Data\Raptor\WAFFEN\1_ca.paa"};
      case (_weap == "JumpAttack"): {"Rup_Dinosaurs\Data\Raptor\WAFFEN\2_ca.paa"};
      default {""};
   };
   _ctrlWEAP ctrlSetText _stringWEAP;

   _fat = (0.8 * safezoneW) * (getFatigue player);
   (ctrlPosition _ctrlFAT) params ["","_y","","_h"];
   _ctrlFAT ctrlSetPosition [(0.5 - (_fat/2)),_y,_fat,_h];
   _ctrlFAT ctrlSetTextColor [_fat,(1 - _fat),0,0.5];
   _ctrlHP ctrlCommit 0;
   _ctrlWEAP ctrlCommit 0;
   _ctrlFAT ctrlCommit 0;
};

RUP_Rapt_HUD_Loop = {
   if !(player isKindOf "Raptor") exitWith {};
   disableSerialization;
   ("RUP_Rapt_HUD" call BIS_fnc_rscLayer) cutRsc ["RUP_Rapt_HUD","PLAIN"];
   while {!isNull (uiNamespace getVariable ["RUP_Rapt_HUD",displayNull])} do {
      call RUP_Rapt_HP_REFRESH;
      sleep 0.5;
   };
};

sleep 0.05;
[] spawn RUP_Rapt_HUD_Loop;