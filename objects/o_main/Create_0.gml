/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


//-------COLORS--------//
global.red = make_color_rgb(228, 59, 68); 
global.brightRed = make_colour_rgb(255,0,68);
global.yellow = make_color_rgb(254,231, 97);
global.lightBlue = make_color_rgb(44,232, 245);
global.blue = make_color_rgb(0,149,233);
global.dark = make_color_rgb(38,43,68);
global.darkPalette = make_color_rgb(38,43,68);// 





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

audio_play_sound_on(global.audioEmitter,global.song, false, 100,,65)
global.standardAngleShake = 0.5;
global.screenshakeIsOn = true;

global.superShot = 1;
instance_create_layer(0,0,"Main", o_bulletPart);