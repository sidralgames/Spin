/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
drawflash = false;

drawflashCont = 3;
global.autoPitch = false;
isPaused = false;

global.lives = 3;
lastX = x;
lastY = y;
newPosX = lastX+random_range(40,-40)
newPosY = lastY+random_range(40,-40)
global.tempoCorrupted = false;
global.vinylSpin = -0.2;
global.weapon = "Gun";
global.energyTotal = 150;
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



//DemonColor
global.yellowArray = [254/255, 255/255, 1/255, 1]; 
global.BlueArray = [0/255, 106/255, 244/255, 1];

//NachoColor
global.pinkArray = [255/255, 0/255, 203/255, 1]; 
global.lightBlueArray = [0/255, 199/255, 255/255, 1];

global.lighPinkArray = [255/255, 0/255, 203/255, 1];
global.brightArray = [255/255, 255/255, 255/255, 1];

changingLevel = false;



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

global.superShot = 1;
instance_create_layer(0,0,"Main", o_bulletPart);
instance_create_layer(0,0,"Main", o_bulletBossPart);