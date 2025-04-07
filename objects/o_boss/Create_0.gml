/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
x = room_width/2;
y = room_height/2;


//----boss big eye & oblong ---//
scaleEye = 1.15;
contScaleEye = random_range(30,90);
contMisil = 90;
misilRacimoOdds = 3;
misilToCreate = -1;
lasersCreated = false;
laserCont = 700;
isAttackingLaser = false;
isWarningLaser = false;
angleLaserChoose = false;
_angleLaser_L = irandom(360)
_angleLaser_R = irandom(360)
isLaser = false;
laserNum = 1 + irandom(5);

for (var i=0; i<laserNum; i++)
{
	_angleLaser_L[i] = irandom(360)
}



isBreakingVinyl = false;

canCreateNewBoss = true;



createBossRomboss = false;
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
contWarning = 120;
angleRotoBoss = irandom(360)
warning = false;
anglePicked = 0;
contRotoTime = 0;
angleOff = random_range(-10,10);
distOff = random_range(-20,60);
canRoto = true;

cocoSpawner = false;
contCoco = 0;
distCoco = irandom_range(60, 160);
angleCoco = irandom(359)
precision = 1.5;
anglePlayer = 0
contMiniDemonsInitial = 20;
contMiniDemons = contMiniDemonsInitial;
creatingMiniDemons = true;
miniDemonsTotalInitial = 5;
miniDemonsTotal = miniDemonsTotalInitial;
miniDemonsCreated = 0
contToNextDemons = 500;
sDist = random_range(60,70);
mDist = random_range(90,110);
lDist = random_range(140,160);
distDemon = choose(sDist,mDist,lDist);
distPrev = 0;
angleDemon = irandom(360);
alertMiniDemons = false;
dangerImg = 0;
distEye = 5;

if (global.level <= global.totalNumberOfVinyls)
{
	for (var i = 0; i < global.totalNumberOfVinyls; i++)
	{

		bossToCreate = ds_map_find_value(global.collectionList, global.level -1);
		if (global.playing)
		{
			if (global.song != bossToCreate.song) 
			{
				audio_stop_sound(global.song);
				global.song = bossToCreate.song;
				audio_play_sound_on(global.audioEmitter,global.song, true, 100,,bossToCreate.offsetSong);
			}
		}
	
		//spriteBoss = choose(bossToCreate.sprite, bossToCreate.bside);
		alias = bossToCreate.alias;
		spriteBoss = bossToCreate.sprite
		bossNumber = bossToCreate.number;
		bossIsInCollection = bossToCreate.unlocked;
		_hpMax = bossToCreate.hpMax;
		_hp = _hpMax;
		bossStep = bossToCreate.step;
		spriteVinyl = bossToCreate.spriteVinyl;
	}
}
else
{
	bossToCreate = ds_map_find_value(global.collectionList, irandom(global.totalNumberOfVinyls-1));
	
	if (global.playing)
	{
		if (global.song != bossToCreate.song) 
		{
			audio_stop_sound(global.song);
			global.song = bossToCreate.song;
			audio_play_sound_on(global.audioEmitter,global.song, true, 100,,bossToCreate.offsetSong);
		}
	}
	
	alias = bossToCreate.alias;
	spriteBoss = bossToCreate.sprite;
	bossNumber = bossToCreate.number;
	bossIsInCollection = bossToCreate.unlocked;
	_hpMax = bossToCreate.hpMax + 20*global.level;
	_hp = _hpMax
	bossStep = bossToCreate.step;
	spriteVinyl = bossToCreate.spriteVinyl;
	
	
}

alarm[0] = 60;
alarm[1] = 60;

firstAttack = false;

bulletsToCreate = 5
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
global.haveEye = false;


checkVinylForm = false;

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
image_speed = 0.4;
