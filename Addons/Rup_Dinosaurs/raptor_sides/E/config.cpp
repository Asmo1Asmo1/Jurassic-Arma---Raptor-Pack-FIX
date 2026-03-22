class DefaultEventhandlers;
class CfgPatches
{
	class RUP_Dinosaurs_Sides_E
	{
		units[]=
		{
			"RaptorAIM1_E",
			"RaptorAIF2_E",
			"Raptor2_E",
			"RaptorM_E",
			"RaptorF1_E",
			"RaptorF2_E"
		};
		weapons[]={};
		requiredVersion=0.1;
		requiredAddons[]=
		{
			"RUP_Dinosaurs",
			"A3_Characters_F_BLUFOR",
			"A3_Characters_F",
			"A3_Sounds_F",
			"A3_Data_F",
			"A3_Sounds_F",
			"A3_Anims_F"
		};
	};
};
class cfgFactionClasses
{
	class Dinos_E
	{
		displayName="Dinosaurs";
		priority=2;
		side=1;
		icon="\Rup_Dinosaurs\Data\All\Icon.paa";
	};
};
class CfgVehicleClasses
{
	class Raptor
	{
		displayName="Raptor (Player ONLY!)";
	};
	class RaptorAI
	{
		displayName="Raptor (AI ONLY!)";
	};
};
class CfgVehicles
{
	class Land;
	class Man;
	class CaManBase: Man
	{
		class ViewPilot;
		class HeadLimits;
	};
	class Raptor;
	class Raptor_E: Raptor
	{
		faction="Dinos_E";
		scope=1;
		side=1;
	};
	class RaptorF1_E: Raptor_E
	{
		scope=2;
		displayName="Raptor Female";
	};
	class RaptorF2_E: Raptor_E
	{
		scope=2;
		displayName="Raptor Female 2";
		identityTypes[]=
		{
			"RaptorF2_ID1",
			"RaptorF2_ID2",
			"RaptorF2_ID3",
			"RaptorF2_ID4"
		};
	};
	class RaptorM_E: Raptor_E
	{
		scope=2;
		displayName="Raptor Male";
		model="\Rup_Dinosaurs\Model\Raptor\RaptorM.p3d";
		nakedUniform="RaptorM_Uniform_Base";
		uniformClass="RaptorM_Uniform_Base";
		identityTypes[]=
		{
			"RaptorM1_ID1",
			"RaptorM1_ID2",
			"RaptorM1_ID3",
			"RaptorM1_ID4"
		};
	};
	class Raptor2_E: Raptor_E
	{
		scope=2;
		displayName="Raptor Female AI";
		vehicleClass="RaptorAI";
		gestures="CfgGesturesRaptor";
		magazines[]={};
		weapons[]=
		{
			"RaptorAttack"
		};
		respawnMagazines[]={};
		respawnWeapons[]=
		{
			"RaptorAttack"
		};
		fsmFormation="";
		fsmDanger="";
		class EventHandlers
		{
			Init="_this spawn RUP_fnc_init_AI";
		};
		identityTypes[]=
		{
			"RaptorF2_ID1",
			"RaptorF2_ID2",
			"RaptorF2_ID3",
			"RaptorF2_ID4"
		};
	};
	class RaptorAIF2_E: Raptor2_E
	{
		scope=2;
		displayName="Raptor Female2 AI";
	};
	class RaptorAIM1_E: Raptor2_E
	{
		scope=2;
		displayName="Raptor Male AI";
		model="\Rup_Dinosaurs\Model\Raptor\RaptorM.p3d";
		nakedUniform="RaptorM_Uniform_Base";
		uniformClass="RaptorM_Uniform_Base";
		identityTypes[]=
		{
			"RaptorM1_ID1",
			"RaptorM1_ID2",
			"RaptorM1_ID3",
			"RaptorM1_ID4"
		};
	};
};
class cfgMods
{
	author="76561197989118212";
	timepacked="1461434963";
};
