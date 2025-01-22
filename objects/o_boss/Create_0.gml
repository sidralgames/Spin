/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
surfaceGalleta =-1
surfaced = false;
createHP = false
offsetRound = 0;
spriteBoss = choose(s_bossNacho,s_bossDemon);
sprite_index = spriteBoss;
image_speed = 0;
bulletsCreated = 0;
canChangeAttack = true;
spinCreateHole = false
getImage = false;
spr_custom = -1;
x = room_width/2;
y = room_height/2;
_angle = image_angle;
//galletaFake = instance_create_layer(x,y,"Boss",oBossFake);
//galletaFake.depth = depth - 1;
global.vinylSpin = -0.6
switch(spriteBoss)
{
	case s_bossNacho:
	{
		rotSpeedBoss = 0.5;
		_hp = 2;

		alarm[0] = 60;

		fireRateSingleBullet =  irandom_range(60,120);
		
		fireRatePattern1 = irandom_range(60,180);
		TotBulletsP1 = irandom_range(4,8);
		offsetPattern1 = 0;

		needleAttack = false
		dir=0;
		totWall = 4
		offset = 0;
		contAttack = 60;
		attack = choose("SingleBullet")
	
	
	}
	break;
	
	case s_bossDemon:
	{
		rotSpeedBoss = 0.5;
		_hp = 250;

		alarm[0] = 60;
			fireRateSingleBullet =  irandom_range(60,120);
		
		fireRatePattern1 = irandom_range(60,180);
		TotBulletsP1 = irandom_range(4,8);
		offsetPattern1 = 0;

		needleAttack = false
		dir=0;
		totWall = 4
		offset = 0;
		contAttack = 60;
		attack = choose("SingleBullet", "Pattern1")

		
	}
	break;
}
