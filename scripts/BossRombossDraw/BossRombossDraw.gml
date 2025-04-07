// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BossRombossDraw()
{
	if instance_exists(o_player)
	{
		var a = point_direction(x,y,o_player.x, o_player.y)
		anglePlayer += sign(dsin(a - anglePlayer)) * (precision * min(1, global.relativeSpeed+0.2));
		distEye = 3;
	}
	
	draw_sprite_ext(s_bossRombossEye,0,x+lengthdir_x(distEye, anglePlayer),y+lengthdir_y(distEye, anglePlayer),scale-0.1,scale-0.1,0, image_blend, 1);
}