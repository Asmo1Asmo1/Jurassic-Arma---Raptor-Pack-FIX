class DefaultEventhandlers;
class CfgPatches
{
	class RUP_Dinosaurs_Sides_W
	{
		units[]=
		{
			"RaptorAIM1_W",
			"RaptorAIF2_W",
			"Raptor2_W",
			"RaptorM_W",
			"RaptorF1_W",
			"RaptorF2_W"
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
	class Dinos_W
	{
		displayName="Dinosaurs";
		priority=2;
		side=0;
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
	class Raptor_W: Raptor
	{
		faction="Dinos_W";
		scope=1;
		side=0;
	};
	class RaptorF1_W: Raptor_W
	{
		scope=2;
		displayName="Raptor Female";
	};
	class RaptorF2_W: Raptor_W
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
	class RaptorM_W: Raptor_W
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
	class Raptor2_W: Raptor_W
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
	class RaptorAIF2_W: Raptor2_W
	{
		scope=2;
		displayName="Raptor Female2 AI";
	};
	class RaptorAIM1_W: Raptor2_W
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
