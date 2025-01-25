/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
rotoSprite = choose(s_rotoBoss1,s_rotoBoss2,s_rotoBoss3);
surfaceGalleta =-1
surfaced = false;
createHP = false
offsetRound = 0;
contToStart = 200;
scale =1;
angleRotoBoss = 270;
createRoto = false;
pickAngle = false;
contWarning = 100;
angleRotoBoss = irandom(360)
warning = false;
anglePicked = 0;
contRotoTime = 0;
angleOff = random_range(-10,10);
distOff = random_range(-20,60);
canRoto = true;
switch(global.level)
{
	case 1:
	{
		spriteBoss = choose(s_bossNacho);

		_hpMax = 50;
		rotSpeedBoss = 0.5;
		_hp = _hpMax;

		alarm[0] = 60;

		fireRateSingleBullet =  irandom_range(60,120);
		
		fireRatePattern1 = irandom_range(60,180);
		TotBulletsP1 = irandom_range(4,8);
		offsetPattern1 = 0;

		needleAttack = false
		dir=0;
		totWall = 2
		offset = 0;
		contAttack = 60;
		attack = choose("SingleBullet")
	}break
	
	case 2:
	{
		spriteBoss = choose(s_bossDemon);

		_hpMax = 70;
		rotSpeedBoss = 0.5;
		_hp = _hpMax;

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
	}break;
	
	case 3:
	{
		spriteBoss = choose(s_bossTribal);
		_hpMax = 150;
		rotSpeedBoss = 0.5;
		_hp = _hpMax;

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
}
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
