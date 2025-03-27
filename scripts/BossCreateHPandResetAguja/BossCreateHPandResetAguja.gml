// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BossCreateHPandResetAguja()
{
	if (createHP = false)
	{
		createHP = true;
		bossHP = instance_create_layer(x-255,210,"Main", o_bossHP);
			
		with(o_aguja)
		{
			songDuration = audio_sound_length(global.song);

			framesSong = songDuration * room_speed;

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
}