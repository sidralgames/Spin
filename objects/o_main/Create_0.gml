/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
audio_stop_all();

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

audio_play_sound_on(global.audioEmitter,global.song, true, 100)