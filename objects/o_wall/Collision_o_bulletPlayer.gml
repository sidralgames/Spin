
if (global.smartBulletUpgrade = true) && (tocado = false)
{
	_hp -= (1 + global.superShot);
	tocado = true;
	alarm[0] = 10;
	exploBullet = instance_create_layer(other.x+lengthdir_x(5,other.direction - 180),other.y+lengthdir_y(5,other.direction - 180),"Bullets", o_explosion);
	exploBullet.image_xscale = 0.1 + (global.superShot * 0.1);
	exploBullet.image_yscale = 0.1 + (global.superShot * 0.1);
	exploBullet.image_speed = 0.9;
	exploBullet.sprite_index = s_exploBlue;
}

if (global.smartBulletUpgrade = false) 
{
	instance_destroy(other);
	_hp -= (1 + global.superShot);
}

