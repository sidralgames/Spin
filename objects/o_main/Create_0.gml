/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
randomize();

//global._fx_tint = fx_create("_filter_tintfilter");
//fx_set_parameter(global._fx_tint, "g_TintCol", [1, 0, 0, 1]);


//global._fx_distort = fx_create("_filter_heathaze");
//fx_set_single_layer(global._fx_distort, true);
//fx_set_parameter(global._fx_distort, "g_Distort1Speed", 0.1);
//fx_set_parameter(global._fx_distort, "g_Distort2Speed",  0.1);
//fx_set_parameter(global._fx_distort, "g_Distort1Scale",  13.3);
//fx_set_parameter(global._fx_distort, "g_Distort2Scale",  13.3);
//fx_set_parameter(global._fx_distort, "g_Distort1Amount", 12);
//fx_set_parameter(global._fx_distort, "g_Distort2Amount",  14);
//fx_set_parameter(global._fx_distort, "g_ChromaSpreadAmount",  0.5);




iconsInLine = 6;
iconsInLine2 = 5;
iconsInLine3 = 5;

iconsTotal = iconsInLine + iconsInLine2 + iconsInLine3
//---- VIRTUAL JOYSTICK ----//
//vstick_init(0, __view_get( e__VW.XView, 0 )+80 ,__view_get( e__VW.YView, 0 )+305,40,true,noone,Sprite1_1)


//----- FONT ----//
display_reset(0, false);

global.customFont20= font_add("chubby-choo-semi-bold.ttf", 17, false, false, 32, 128);
global.customFont16= font_add("chubby-choo-semi-bold.ttf", 16, false, false, 32, 128);
global.customFont15= font_add("chubby-choo-semi-bold.ttf", 15, false, false, 32, 128);
global.customFont14= font_add("chubby-choo-semi-bold.ttf", 14, false, false, 32, 128);
global.customFont13= font_add("chubby-choo-semi-bold.ttf", 13, false, false, 32, 128);
global.customFont12= font_add("chubby-choo-semi-bold.ttf", 12, false, false, 32, 128);
global.customFont11= font_add("chubby-choo-semi-bold.ttf", 11, false, false, 32, 128);
global.customFont10= font_add("chubby-choo-semi-bold.ttf", 10, false, false, 32, 128);


//---- INIT GLOBALS ----// 
global.warningEnergy = 30;

//--- Upgrade Globals ---//
global.haloUpgrade = false;
global.shieldUpgrade = false;
global.slowmoUpgrade = false;
global.bossHpLimiterUpgrade = false;
global.hpWallUpgrade = 0;
global.smartBulletUpgrade = false;
global.strongConnectionUpgrade = false;
global.cableUpgrade = false;
global.recoverJacksUpgrade = false;

global.oddsStrongConnection = 3;
global.luckAuxUpgrade = 1;

global.bajacktroUpgrade = false;
global.damageAuxUpgrade = 1;

global.energyRecharge = 0.45;
global.speedAux = 0;
global.fireRateAux = 0;
global.dashSpeed = 3.2;

global.dashEnergyMin = 25;
global.shootingEnergyMin = 25;
global.luckyShot = false;
global.luckyShotOdds = 100;

global.dobleShotUpgrade = false;
global.dobleShotOdds = 1;


global.maxLives = 3;
global.lives = global.maxLives;
global.warningEnergy = 30;

global.collection = false;

global.spriteBoss = -1;
global.playing = false;
global.vinylAlpha = 1;
global.vinylColor = c_white;
global.howToPlay = false;

global.autoPitch = false;
global.bossesDefeatedInRun = 0;

global.tempoCorrupted = false;
global.vinylSpin = -0.2;
global.vinylSpinUpgrades = -0.09;
global.weapon = "Gun";
global.energyTotal = 200;
global.superShot = 0;



global.isBossBSide = false;
global.wallSprite = s_wallNacho;

//----- OPTIONS ----//
global.standardAngleShake = 0.5;
global.screenshakeIsOn = true;
global.vibration=0;


gameOverCreated = false;
drawflash = false;
drawflashRoto = false;
drawflashPlayerHitted = false;

drawflashCont = 3;

isPaused = false;


lastX = x;
lastY = y;
newPosX = lastX+random_range(40,-40)
newPosY = lastY+random_range(40,-40)



//-------COLORS--------//
SetColors();


//---- VISUAL EFFECT BG ----//
changingLevel = true;
color_fx = layer_get_fx("EffectColor");
color_fx_params = fx_get_parameters(color_fx);

noise_fx = layer_get_fx("Noise");
noise_fx_params = fx_get_parameters(noise_fx);


alarm[0] = 20;


//----- AUDIO - AUDIO EMITTER ----//
audio_stop_all();
trackpos = 0;
global.audioEmitter = audio_emitter_create();

delay_bus = audio_bus_create();

audio_emitter_bus(global.audioEmitter, delay_bus);

// Delay effect
_delay_effect = audio_effect_create(AudioEffectType.Reverb1);
_delay_effect.size = 0.9;
_delay_effect.mix = 0.5;
_delay_effect.damp = 0.8;
_delay_effect.bypass = true;
delay_bus.effects[0] = _delay_effect;

// Delay effect
LPF2 = audio_effect_create(AudioEffectType.LPF2);
LPF2.cutoff = 80;
LPF2.q = 0;
LPF2.bypass = true;
delay_bus.effects[1] = LPF2;

global.song = snd_obsessionCut;
audio_play_sound_on(global.audioEmitter,global.song, true, 100);


//--- PARTS ---//
instance_create_layer(0,0,"Main", o_bulletPart);
instance_create_layer(0,0,"Main", o_bulletBossPart);
instance_create_layer(0,0,"Main", o_misilYellowPart);
instance_create_layer(0,0,"Main", o_misilBluePart);
instance_create_layer(0,0,"Main", o_misilGreenPart);
instance_create_layer(0,0,"Main", o_misilRedPart);
instance_create_layer(0,0,"Main", o_misilTribalPart);
instance_create_layer(0,0,"Main", o_misilTribalPart_B);


//---- COLLECTION TRACKS - BOSSES ----//
global.collectionList = ds_map_create();

global.totalNumberOfVinyls = 0;
AddCollectionList();


//---- UPGRADES LIST----//
global.upgradesList = ds_map_create();
global.totalNumberOfUpgrades = 0;

AddUpgradesList();


//------ UPGRADES PLAYER LIST -------//
global.playerUpgradesList = ds_map_create();
global.numberOfUpgradesPlayer = 0;

//------ CABLES PLAYER LIST -------//
global.cablePlayerList = ds_map_create();
global.numberOfCablesPlayer = 0;
AddCableWhite();
AddCableYellow();
AddCableRed();
//AddCableBlue(); -> UPGRADE

scaleUpgrade = 1;


load = false;

if (load = false)
{
	//LoadAllLocked();
	//LoadAllUnlocked();
	LoadCollection();
	
	if (global.maxLevelReached > 1)
	{
		global.level = irandom_range(1, global.maxLevelReached)	
	}
	else
	{
		global.level = 1;
	}
	
	load = true;
}