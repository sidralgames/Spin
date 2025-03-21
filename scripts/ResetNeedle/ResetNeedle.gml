// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function ResetNeedle()
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

		nearDisc = instance_nearest(x,y,o_vinilo);
		nearBoss = instance_nearest(x,y,o_boss);


		canBeTouched= true;
		contCanBeTouched = 200;

		x = nearDisc.x + lengthdir_x(dist, 35);
		y = nearDisc.y + lengthdir_y(dist, 35);

		xIni = x;
		yIni = y;
	}
}