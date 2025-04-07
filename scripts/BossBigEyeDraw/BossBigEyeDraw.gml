// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BossBigEyeDraw()
{
	if instance_exists(o_player)
	{
		var a = point_direction(x,y,o_player.x, o_player.y)
		anglePlayer += sign(dsin(a - anglePlayer)) * (precision * min(1, global.relativeSpeed+0.2));
	}
	if (attack = "BulletSpread")
	{
		distEye = lerp(distEye, 20, 0.5)
		draw_sprite_ext(s_bigEye,0,x+lengthdir_x(distEye, anglePlayer),y+lengthdir_y(distEye, anglePlayer),scaleEye,scaleEye,anglePlayer, image_blend, 1);
		draw_sprite_ext(s_Eye,0,x+lengthdir_x(distEye+8, anglePlayer),y+lengthdir_y(distEye+8, anglePlayer),scaleEye,scaleEye,anglePlayer, image_blend, 1);

	}
	else if (attack = "Pattern1")
	{
		distEye = lerp(distEye, 0, 0.04)
		draw_sprite_ext(s_bigEye,0,x+lengthdir_x(distEye, anglePlayer),y+lengthdir_y(distEye, anglePlayer),scaleEye,scaleEye,anglePlayer, image_blend, 1);
		draw_sprite_ext(s_Eye,0,x+lengthdir_x(distEye, anglePlayer),y+lengthdir_y(distEye, anglePlayer),scaleEye,scaleEye,anglePlayer, image_blend, 1);
	}
	else 
	{
		distEye = lerp(distEye, 10, 0.04)
		draw_sprite_ext(s_bigEye,0,x+lengthdir_x(distEye, anglePlayer),y+lengthdir_y(distEye, anglePlayer),scaleEye,scaleEye,anglePlayer, image_blend, 1);
		draw_sprite_ext(s_Eye,0,x+lengthdir_x(distEye+5, anglePlayer),y+lengthdir_y(distEye+5, anglePlayer),scaleEye,scaleEye,anglePlayer, image_blend, 1);
	}
}