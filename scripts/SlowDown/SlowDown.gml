// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function SlowDown(_slowSpeed, _slowFactor)
{
	global.relativeSpeed = lerp(global.relativeSpeed, _slowSpeed, _slowFactor);
	
	o_aguja.angleAguja-= o_aguja.fac * global.relativeSpeed;
	
	songPitchOff = 0.2
	pitch = min(1,global.relativeSpeed + songPitchOff);
	
	audio_emitter_pitch(global.audioEmitter, pitch);
	
	global.slowed = true;
}