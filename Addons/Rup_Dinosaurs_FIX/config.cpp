class DefaultEventhandlers;
class CfgPatches
{
	class RUP_Dinosaurs_FIX
	{
		units[]={};
		weapons[]={};
		requiredVersion=0.1;
		requiredAddons[]=
		{
			"RUP_Dinosaurs",
			"RUP_FUNC",
			"Dinosaurs_UI",
			"RUP_Dinosaurs_Sides_E",
			"RUP_Dinosaurs_Sides_W"
		};
	};
};
class CfgFunctions
{
	class RUP
	{
		tag="RUP";
		class core
		{
			file="\Rup_Dinosaurs_FIX\func\core";
			class init_vars
			{
				postinit=1;
			};
		};
		class mp
		{
			file="\Rup_Dinosaurs_FIX\func\mp";
			class init_mp
			{
				postinit=1;
			};
			class mp
			{
			};
			class exec_JIP
			{
			};
			class command_ab
			{
			};
			class command_abc
			{
			};
			class addaction
			{
			};
			class switchMove
			{
			};
			class say3d
			{
			};
			class setIdentity
			{
			};
		};
		class mat
		{
			file="\Rup_Dinosaurs_FIX\func\mat";
			class diff
			{
			};
		};
		class misc
		{
			file="\Rup_Dinosaurs_FIX\func\misc";
			class inbbr
			{
			};
		};
		class screeneffects
		{
			file="\Rup_Dinosaurs_FIX\func\screeneffects";
			class hiteffect_1
			{
			};
			class getHP
			{
			};
		};
		class EHs
		{
			file="\Rup_Dinosaurs_FIX\func\EHs";
			class AnimChanged
			{
			};
			class Fired
			{
			};
			class Init
			{
			};
			class Init_AI
			{
			};
			class Killed
			{
			};
			class hit
			{
			};
			class handledamage
			{
			};
			class explosion
			{
			};
		};
		class raptor
		{
			file="\Rup_Dinosaurs_FIX\func\raptor";
			class deal_damage
			{
			};
			class deal_damage_veh
			{
			};
			class eat
			{
			};
			class get_victim
			{
			};
			class jump
			{
			};
			class jumpattack
			{
			};
			class scream
			{
			};
			class set_id
			{
			};
		};
	};
};
class RscTitles
{
	class RUP_Rapt_HUD
	{
		idd=-1;
		duration=1e+6;
		fadeIn=0;
		fadeOut=0;
		name="";
		onLoad="uiNamespace setVariable ['RUP_Rapt_HUD', _this select 0];";
		class Controls
		{
			class RUP_HP
			{
				x="safezoneX + safezoneW - (0.05  * safezoneW * 2)";
				y="safezoneY + safezoneH - (0.075  * safezoneH * 2)";
				w="0.05  * safezoneW";
				h="0.075  * safezoneH";
				text="Rup_Dinosaurs\Data\Raptor\HP\HP_ca.paa";
				sizeEx=1;
				type=0;
				idc=12;
				style=48;
				colorBackground[]={0,0,0,0};
				colorText[]={1,1,1,1};
				font="EtelkaNarrowMediumPro";
			};
			class RUP_WEAP
			{
				x="safezoneX + (0.05  * safezoneW)";
				y="safezoneY + safezoneH - (0.075  * safezoneH * 2)";
				w="0.05  * safezoneW";
				h="0.075  * safezoneH";
				text="";
				sizeEx=1;
				type=0;
				idc=13;
				style=48;
				colorBackground[]={0,0,0,0};
				colorText[]={1,1,1,1};
				font="EtelkaNarrowMediumPro";
			};
			class RUP_FAT
			{
				x="(safezoneW + safezoneX)/2";
				y="safezoneY + safezoneH - (0.0156  * safezoneH * 7)";
				w="0.15  * safezoneW";
				h="0.0156  * safezoneH";
				text="Rup_Dinosaurs\Data\Raptor\FATIGUE\fatigue_ca.paa";
				sizeEx=5;
				type=0;
				idc=14;
				style=48;
				colorBackground[]={1,1,1,0.5};
				colorText[]={1,1,1,0.5};
				font="EtelkaNarrowMediumPro";
			};
		};
	};
	class RUP_HIT_1
	{
		idd=-1;
		duration=1;
		fadeIn=0;
		fadeOut=1;
		name="";
		onLoad="uiNamespace setVariable ['RUP_HIT_1', _this select 0];";
		class Controls
		{
			class RUP_SCRATCH
			{
				x="(0.5 * safezoneW + safezoneX)-(0.25  * safezoneW)/2";
				y="(0.5 * safezoneH + safezoneY)-(0.375  * safezoneH)/2";
				w="0.25  * safezoneW";
				h="0.375  * safezoneH";
				idc=181818;
				text="Rup_Dinosaurs\Data\All\blood_screen_L_B_ca.paa";
				sizeEx=1;
				type=0;
				style=48;
				colorBackground[]={0,0,0,0};
				colorText[]={1,1,1,1};
				font="EtelkaNarrowMediumPro";
			};
		};
	};
	class RUP_GET_HP
	{
		idd=-1;
		duration=1;
		fadeIn=1;
		fadeOut=1;
		name="";
		onLoad="uiNamespace setVariable ['RUP_GET_HP', _this select 0];";
		class Controls
		{
			class RUP_GLOW
			{
				x="safezoneX + safezoneW - (0.125  * safezoneW)";
				y="safezoneY + safezoneH - (0.2  * safezoneH)";
				w="0.1  * safezoneW";
				h="0.15  * safezoneH";
				text="Rup_Dinosaurs\Data\Raptor\HP\HP_ca.paa";
				sizeEx=1;
				type=0;
				idc=12;
				style=48;
				colorBackground[]={0,0,0,0};
				colorText[]={0,1,0,1};
				font="EtelkaNarrowMediumPro";
			};
		};
	};
};
class CfgVehicles
{
	class Man;
	class CaManBase : Man
	{
		armor				= 2;	// total hit points (meaning global "health") of the object.
									// keep constant among various soldiers so that the hit points armor coefficients remains on the same scale
		armorStructural		= 0.4;	// divides all damage taken to total hit point, either directly or through hit point passThrough coefficient.
									// must be adjusted for each model to achieve consistent total damage results
		explosionShielding	= 0.04; // for consistent explosive damage after adjusting = ( armorStructural / 10 )
		minTotalDamageThreshold	= 0.001;	// minimalHit for total damage
		impactDamageMultiplier	= 0.5;		// multiplier for falling damage

		class HitPoints
		{
			class HitFace
			{
				armor				=  1;	// "Healthpoints" of this hitpoint is armor value (of hitpoint) * armor value (coefficient of the total armor defined below for the whole object)
				material			= -1;	// damage material (-1 means "unused")
				name				= "face_hub"; // selection name from hit points LOD in object
				passThrough			= 0.1;	// coefficient defining how much damage will pass into total damage when this hit point is damaged
				radius				= 0.08;	// size of the hit point sphere, this is how it works: https://community.bistudio.com/wiki/Arma_3_Damage_Description
				explosionShielding	= 0.1;	// multiplier of explosive damage (parameter: explosive > 0 in ammunition type)
				minimalHit			= 0.01;	// minimal damage value that can be applied (based on armor value), damage below this threshold is ignored
											// example: total hit point armor = 2 and hitpoint class armor = 10 and minimalHit = 0.04
											// -> all damage below a hit value of 2*10*0.04 = 0.8 is ignored
			}
			class HitNeck : HitFace
			{
				armor				=  1;
				material			= -1;
				name				= "neck";
				passThrough			= 0.1;
				radius				= 0.1;
				explosionShielding	= 0.5;
				minimalHit			= 0.01;
			}
			class HitHead : HitNeck
			{
				armor				=  1;
				material			= -1;
				name				= "head";
				passThrough			= 0.1;
				radius				= 0.2;
				explosionShielding	= 0.5;
				minimalHit			= 0.01;
				depends				= "HitFace max HitNeck"; // returns the greater of HitFace and HitNeck.
				// for depends to work, HitHead must be inheriting from HitFace and HitNeck.
				// "max" is not the only operator you can use. + and * are confirmed working.
				// Other operators from the https://community.bistudio.com/wiki/Simple_Expression list may be usable as well.
			};
			class HitPelvis
			{
				armor				=  1;
				material			= -1;
				name				= "pelvis";
				passThrough			= 0.1;
				radius				= 0.2;
				explosionShielding	= 1;
				visual				= "injury_body";
				minimalHit			= 0.01;
			};
			class HitAbdomen : HitPelvis
			{
				armor				=  1;
				material			= -1;
				name				= "spine1";
				passThrough			= 0.1;
				radius				= 0.15;
				explosionShielding	= 1;
				visual				= "injury_body";
				minimalHit			= 0.01;
			};
			class HitDiaphragm : HitAbdomen
			{
				armor				=  1;
				material			= -1;
				name				= "spine2";
				passThrough			= 0.1;
				radius				= 0.15;
				explosionShielding	= 6;
				visual				= "injury_body";
				minimalHit			= 0.01;
			}
			class HitChest : HitDiaphragm
			{
				armor				=  1;
				material			= -1;
				name				= "spine3";
				passThrough			= 0.1;
				radius				= 0.15;
				explosionShielding	= 6;
				visual				= "injury_body";
				minimalHit			= 0.01;
			};
			class HitBody : HitChest
			{
				armor				= 1000; // not supposed to take damage directly
				material			= -1;
				name				= "body";
				passThrough			= 0.1;
				radius				= 0.16;
				explosionShielding	= 6;
				visual				= "injury_body";
				minimalHit			= 0.01;
				depends				= "HitPelvis max HitAbdomen max HitDiaphragm max HitChest"; // depends work only for hit points defined in inheritance chain
				// arbitrary example for different operator usage: = "(2* (HitPelvis + HitAbdomen) * HitDiaphragm) max HitChest";

			};
			class HitArms
			{
				armor				=  1;
				material			= -1;
				name				= "arms";
				passThrough			= 1;
				radius				= 0.1;
				explosionShielding	= 1;
				visual				= "injury_hands";
				minimalHit			= 0.01;
			};
			class HitHands : HitArms
			{
				armor				=  1;
				material			= -1;
				name				= "hands";
				passThrough			= 1;
				radius				= 0.1;
				explosionShielding	= 1;
				visual				= "injury_hands";
				minimalHit			= 0.01;
				depends				= "HitArms";
			};
			class HitLegs
			{
				armor				=  1;
				material			= -1;
				name				= "legs";
				passThrough			= 1;
				radius				= 0.12;
				explosionShielding	= 1;
				visual				= "injury_legs";
				minimalHit			= 0.01;
			};
		};
	};
	class SoldierWB: CaManBase
	{
	};
};
