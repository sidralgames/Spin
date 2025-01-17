/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
image_angle-=.5*global.relativeSpeed
if (_hp <= 0)
{
	instance_destroy();
}

if (contAttack > 0)
{
	contAttack --;
}
if (contAttack <= 0)
{
	contAttack = random_range(100,200)
	if (_hp < 100)
	{
		attack = choose("SingleBullet", "Pattern1")
	}
	else 
	{
		attack = choose("SingleBullet")
	}
}

BulletAttack(attack);


WallAttack(0,2,choose(25,50),35);


if (needleAttack) && instance_exists(o_player)
{
	for (var i=0; i<12; i++)
	{
		bullet = instance_create_layer(x,y,"Bullets", o_bulletBoss);
		bullet.speed = 2;
		bullet.initialSpeed = 2;
		bullet.direction = (360 / 12) *i;	
	}
	needleAttack = false;
	
}
	