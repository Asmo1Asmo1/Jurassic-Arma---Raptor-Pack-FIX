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
