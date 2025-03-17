/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
scale = 0.5;
scale1 = false;
scale2= false;
scale3= false;
_hp = 5 + (global.level * 2) - global._hpUpgradeWall;
scaled = false;
_hpTime = 600;
image_xscale = scale;
image_yscale = scale;
image_speed = 0;

type = collisionType.custom;

switch(o_boss.spriteBoss)
{
	case s_bossNacho:
	{
		sprite_index = s_wallNacho;
	}
	break;
	
	case s_bossDemon:
	{
		sprite_index = s_wallDemon;
	}
	break;
	
	case s_bossTribal:
	{
		sprite_index = s_wallTribal;
	}
	break;
	
	case s_bossGirl:
	{
		sprite_index = s_wallGirl;
	}
	break;
	
	case s_bossRata:
	{
		sprite_index = s_wallRata;
	}
	break;
	
	case s_bossMixtape:
	{
		sprite_index = s_wallMixtape;
	}
	break;
	
	default:
	{
		sprite_index = s_wallNacho;
	}break;
	
}