/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
image_angle+=.5
if (_hp <= 0)
{
	instance_destroy();
}

if (alarm[0] <= 0) && instance_exists(o_player) && (_hp < 50)
{
	anticipatedOffset = o_player.totalPush*30;
	
	fireRate = random_range(5,30);
	dir = point_direction(x,y,o_player.x, o_player.y) + anticipatedOffset + random_range(-10,10)
	bullet = instance_create_layer(x,y,"Bullets", o_bulletBoss);
	bullet.speed = 2;
	bullet.direction = dir;
	alarm[0] = fireRate;
}

if keyboard_check_pressed(vk_space)
{
	game_restart()
}


if (alarm[1] <=0) && instance_exists(o_player)
{
	anticipatedOffset = o_player.totalPush*30;
	
	dir =random_range(0,359)
	bullet = instance_create_layer(x + lengthdir_x(20, dir),y + lengthdir_y(20, dir),"Bullets", o_wall);
	bullet.speed = random_range(0.5, 0.7);
	bullet.direction = dir;
	bullet.image_angle = dir-90;
	bullet._hpush = hspeed;
	bullet._vpush = vspeed;
	alarm[1] = 100;
}
	