class DefaultEventhandlers;
class CfgPatches
{
	class RUP_FUNC
	{
		units[]={};
		weapons[]={};
		requiredVersion=0.1;
		requiredAddons[]={};
	};
};
class CfgFunctions
{
	class RUP
	{
		tag="RUP";
		class core
		{
			file="\Rup_Dinosaurs\func\core";
			class init_vars
			{
				postinit=1;
			};
		};
		class mp
		{
			file="\Rup_Dinosaurs\func\mp";
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
			file="\Rup_Dinosaurs\func\mat";
			class diff
			{
			};
		};
		class misc
		{
			file="\Rup_Dinosaurs\func\misc";
			class inbbr
			{
			};
		};
		class screeneffects
		{
			file="\Rup_Dinosaurs\func\screeneffects";
			class hiteffect_1
			{
			};
			class getHP
			{
			};
		};
		class EHs
		{
			file="\Rup_Dinosaurs\func\EHs";
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
			file="\Rup_Dinosaurs\func\raptor";
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
class cfgMods
{
	author="76561197989118212";
	timepacked="1461434963";
};
