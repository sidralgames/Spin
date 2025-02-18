/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
vibrationRotoTime = 10;
vibrationRoto = 0.4;
contEnemies = 200;
spritePurple = -1;
changeSongCollection = false;
drawLocked = false;
selectedVinyl = 0;
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
//global.level = 4
switch(global.level)
{
	case 1:
	{
		if (global.song != snd_song1)
		{
			audio_stop_sound(global.song);
			global.song = snd_song1;
			audio_play_sound_on(global.audioEmitter,global.song, true, 100,,65);
		}
		
		spriteBoss = s_bossNacho;
		bossNumber = 0;
		
		bossIsInCollection = global.bossNachoCollection;
		
		_hpMax = 90;
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
		if (global.song != snd_songDemon)
		{
			audio_stop_sound(global.song);
			global.song = snd_songDemon;
			audio_play_sound_on(global.audioEmitter,global.song, true, 100,,1);
		}
		
		spriteBoss = choose(s_bossDemon);
		bossNumber = 1;
		bossIsInCollection = global.bossDemonCollection;
		_hpMax = 130;
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
		bossNumber = 2;
		
		if (global.song != snd_tribal)
		{
			audio_stop_sound(global.song);
			global.song = snd_tribal;
			audio_play_sound_on(global.audioEmitter,global.song, true, 100,,135);
		}
		
		bossIsInCollection = global.bossTribalCollection;
		_hpMax = 170;
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
	
	case 4:
	{
		spriteBoss = choose(s_bossGirl);
		bossNumber = 3;
		
		if (global.song != snd_e4u)
		{
			audio_stop_sound(global.song);
			global.song = snd_e4u;
			audio_play_sound_on(global.audioEmitter,global.song, true, 100,,40);
		}
		
		bossIsInCollection = global.bossGirlCollection;
		_hpMax = 210;
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
	
	case 5:
	{
		spriteBoss = choose(s_bossRata);
		image_speed = 0;
		image_index = 1;
		bossNumber = 4;
		
		if (global.song != snd_chino)
		{
			audio_stop_sound(global.song);
			global.song = snd_chino;
			audio_play_sound_on(global.audioEmitter,global.song, true, 100,,5);
		}
		
		bossIsInCollection = global.bossRataCollection;
		_hpMax = 260;
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
	
	//case 4:
	//{
	//	spriteBoss = choose(s_bossCantando);
	//	bossNumber = 3;
		
	//	bossIsInCollection = global.bossTribalCollection;
	//	_hpMax = 16;
	//	rotSpeedBoss = 0.5;
	//	_hp = _hpMax;

	//	alarm[0] = 60;
	//	fireRateSingleBullet =  irandom_range(60,120);
		
	//	fireRatePattern1 = irandom_range(60,180);
	//	TotBulletsP1 = irandom_range(4,8);
	//	offsetPattern1 = 0;

	//	needleAttack = false
	//	dir=0;
	//	totWall = 4
	//	offset = 0;
	//	contAttack = 60;
	//	attack = choose("SingleBullet", "Pattern1")
	//}break;
	
	default:
	{
		if (global.song != snd_song1)
		{
			audio_stop_sound(global.song);
			global.song = snd_song1;
			audio_play_sound_on(global.audioEmitter,global.song, true, 100,,65);
		}
		
		spriteBoss = choose(s_bossGirl, s_bossNacho, s_bossDemon, s_bossTribal);
		bossNumber = 0;
		
		bossIsInCollection = global.bossNachoCollection;
		
		_hpMax = 250 + global.level*30;
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
	}break;
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
global.vinylSpin = -0.6;
global.spriteBoss = spriteBoss;

if instance_exists(o_aguja)
{
		with(o_aguja)
		{
			songDuration = audio_sound_length(global.song);

			framesSong = songDuration * room_speed;

			initialDist = 250;
			angleAguja = initialAngleAguja;

			dist = initialDist;

			distToCenter = dist - 10;

			fac = (distToCenter / framesSong) * angleFac

			nearDisc = instance_nearest(x,y,o_boss);
			nearBoss = instance_nearest(x,y,o_boss);


			canBeTouched= true;
			contCanBeTouched = 200;

			x = nearDisc.x + lengthdir_x(dist, 35);
			y = nearDisc.y + lengthdir_y(dist, 35);

			xIni = x;
			yIni = y;
		}
}

