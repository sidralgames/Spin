/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

iconsInLine = 4;
//---- VIRTUAL JOYSTICK ----//
//vstick_init(0, __view_get( e__VW.XView, 0 )+80 ,__view_get( e__VW.YView, 0 )+305,40,true,noone,Sprite1_1)


//----- FONT ----//
display_reset(0, false);
global.customFont16= font_add("chubby-choo-semi-bold.ttf", 16, false, false, 32, 128);
global.customFont14= font_add("chubby-choo-semi-bold.ttf", 14, false, false, 32, 128);
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

global.oddsStrongConnection = 3;
global.luckAuxUpgrade = 1;

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
global.level = 1;

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

global.song = snd_song1;

audio_play_sound_on(global.audioEmitter,global.song, true, 100,,65)


//--- PARTS ---//
instance_create_layer(0,0,"Main", o_bulletPart);
instance_create_layer(0,0,"Main", o_bulletBossPart);

load = false
//---- COLLECTION TRACKS - BOSSES ----//
global.collectionList = ds_map_create();

global.totalNumberOfVinyls = 0;
AddBossNachoCollection();
AddBossDemonCollection();
AddBossTribalCollection();
AddBossGirlCollection();
AddBossRataCollection();
AddBossMixtapeCollection();
AddBossPentagovonCollection();
AddBossUpgradesCollection();


//---- UPGRADES LIST----//
global.upgradesList = ds_map_create();
global.totalNumberOfUpgrades = 0;

AddUpgradeEnergy();
AddUpgradeShotgun();
AddUpgradeFireRate();
AddUpgradeSpeed();
AddUpgradeWalls();//5
AddUpgradeSlowMo();
AddUpgradeSuperShot();
AddUpgradeMaxHP();
AddUpgradeCheaperDash();
AddUpgradeBossLimiter();//10
AddUpgradeLuckyShot();
AddUpgradeRecoverLives();
AddUpgradeStrongConnection();
AddUpgradeFasterCharge();
AddUpgradeShield();//15
AddUpgradeHalo();
AddUpgradeSmartBullets();
AddUpgradeDobleShot();
AddUpgradeMoreLuck();
AddUpgradeFasterDash();//20
AddUpgradeCable();


//------ UPGRADES PLAYER LIST -------//
global.playerUpgradesList = ds_map_create();
global.numberOfUpgradesPlayer = 0;

//------ CABLES PLAYER LIST -------//
global.cablePlayerList = ds_map_create();
global.numberOfCablesPlayer = 0;
AddCableWhite();
AddCableYellow();
AddCableRed();
//AddCablePurple(); -> UPGRADE
