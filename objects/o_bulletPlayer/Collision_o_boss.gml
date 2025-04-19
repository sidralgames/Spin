/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (global.playing)
{
	if (canUnlockAch) && (global.moreThan100Damage = 0)
	{
		for (var i = 0; i<global.totalNumberOfAchievements; i++)
		{
			ach = ds_map_find_value(global.achievementList, i)
			if (ach.alias = "MoreThan100")
			{
				ach.unlocked = 1;
			}
		}
		
		ini_open("SpinData.ini");
		ini_write_real("achievements","MoreThan100", 1);
		ini_close();
	}
	
	other._hp -= bulletDamage;
	
	instance_destroy();
	
	if (isLucky) && instance_exists(o_player)
	{
		global.luckyBullets +=1;
		lucky = instance_create_layer(x,y,"Menu", o_lucky);
	}
	
	
	//other.spinCreateHole = true;
	//other.bullethole = point_distance(x,y,other.x, other.y);
	//other.angleHole = point_direction(other.x, other.y, x, y);
}