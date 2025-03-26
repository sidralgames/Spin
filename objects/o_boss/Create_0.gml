/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
checkLimiter = false;
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

if (global.level < global.totalNumberOfVinyls)
{
	for (var i = 0; i < global.totalNumberOfVinyls; i++)
	{

		bossToCreate = ds_map_find_value(global.collectionList, global.level -1);
	
		if (global.song != bossToCreate.song) 
		{
			audio_stop_sound(global.song);
			global.song = bossToCreate.song;
			audio_play_sound_on(global.audioEmitter,global.song, true, 100,,bossToCreate.offsetSong);
		}
	
		spriteBoss = bossToCreate.sprite;
		bossNumber = bossToCreate.number;
		bossIsInCollection = bossToCreate.collection;
		_hpMax = bossToCreate.hpMax;
		_hp = _hpMax

	}
}
else
{
	bossToCreate = ds_map_find_value(global.collectionList, irandom(global.totalNumberOfVinyls-1));
	
	if (global.song != bossToCreate.song) 
	{
		audio_stop_sound(global.song);
		global.song = bossToCreate.song;
		audio_play_sound_on(global.audioEmitter,global.song, true, 100,,bossToCreate.offsetSong);
	}
	
	spriteBoss = bossToCreate.sprite;
	bossNumber = bossToCreate.number;
	bossIsInCollection = bossToCreate.collection;
	_hpMax = bossToCreate.hpMax + 20*global.level;
	_hp = _hpMax
}

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

global.vinylSpin = -0.6;
bossVinylSpin = global.vinylSpin;
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

