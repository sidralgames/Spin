
if (global.smartBulletUpgrade = true) && (tocado = false)
{
	_hp -= (1 + global.superShot);
	tocado = true;
	alarm[0] = 10;
}

if (global.smartBulletUpgrade = false) 
{
	instance_destroy(other);
	_hp -= (1 + global.superShot);
}

