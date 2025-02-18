/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
//vstick_init(0, __view_get( e__VW.XView, 0 )+80 ,__view_get( e__VW.YView, 0 )+305,40,true,noone,Sprite1_1)


global._hpUpgradeWall = 0;
global.slowmotionPicked = false;

global.initialLives = 3;
global.collection = false;
gameOverCreated = false;
global.spriteBoss = -1;
global.playing = false;
global.vinylAlpha = 1;
global.vinylColor = c_white;
global.howToPlay = false;

display_reset(0, false);
global.customFont16= font_add("ChubbyChoo-SemiBold.ttf", 16, false, false, 32, 128);
global.fireRateAux = 0;

drawflash = false;
drawflashRoto = false;
drawflashPlayerHitted = false;

drawflashCont = 3;
global.autoPitch = false;
isPaused = false;
global.bossesDefeatedInRun = 0;
global.lives = 3;
lastX = x;
lastY = y;
newPosX = lastX+random_range(40,-40)
newPosY = lastY+random_range(40,-40)
global.tempoCorrupted = false;
global.vinylSpin = -0.2;
global.weapon = "Gun";
global.energyTotal = 200;
global.superShot = 0;
global.level = 1;
//-------COLORS--------//
global.red = make_color_rgb(228, 59, 68); 
global.brightRed = make_colour_rgb(255,0,68);
global.yellow = make_color_rgb(254,231, 97);
global.lightBlue = make_color_rgb(44,232, 245);
global.blue = make_color_rgb(0,149,233);
global.dark = make_color_rgb(38,43,68);
global.darkPalette = make_color_rgb(38,43,68);// 
global.pink = make_color_rgb(255,0,203);// 


global.darkBlueArray = [1/255,19/255,143/255,1]
//DemonColor
global.yellowArray = [254/255, 255/255, 1/255, 1]; 
global.BlueArray = [0/255, 106/255, 244/255, 1];

//NachoColor
global.pinkArray = [255/255, 0/255, 203/255, 1]; 
global.lightBlueArray = [0/255, 199/255, 255/255, 1];

global.lighPinkArray = [255/255, 0/255, 203/255, 1];
global.brightArray = [255/255, 255/255, 255/255, 1];

global.yellowArray2 = [255/255, 255/255 ,1/255,1];
global.purpleArray = [195/255, 53/255 ,225/255,1];

global.yellowGirlArray = [224/255, 205/255, 64/255, 1]

global.greenRatArray = [139/255, 255/255, 164/255, 1] 

global.greenOscRatArray = [32/255, 153/255, 164/255, 1] 
global.greenRat= make_color_rgb(32, 153, 164)
global.greenOscRat= make_color_rgb(139, 255, 164)

changingLevel = true;




// Store the FX struct, and its parameters struct, in variables
color_fx = layer_get_fx("EffectColor");
color_fx_params = fx_get_parameters(color_fx);

noise_fx = layer_get_fx("Noise");
noise_fx_params = fx_get_parameters(noise_fx);
//15 235 247
//0 106 244
//254 255 1

alarm[0] = 20;








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
global.standardAngleShake = 0.5;
global.screenshakeIsOn = true;

global.vibration=0;
instance_create_layer(0,0,"Main", o_bulletPart);
instance_create_layer(0,0,"Main", o_bulletBossPart);

global.collectionList = ds_map_create();

global.totalNumberOfVinyls = 0;
AddBossNachoCollection();
AddBossDemonCollection();
AddBossTribalCollection();
AddBossGirlCollection();
AddBossRataCollection();
AddBossUpgradesCollection();
