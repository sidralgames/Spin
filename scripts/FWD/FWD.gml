// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function FWD()
{
	global.relativeSpeed = lerp(global.relativeSpeed, 1.5, 0.03)
	
	o_aguja.angleAguja-= o_aguja.fac * (global.relativeSpeed-0.25);
	pitch = max(1,global.relativeSpeed-0.25);
	audio_emitter_pitch(global.audioEmitter, pitch);
	global.fwd = true;
}