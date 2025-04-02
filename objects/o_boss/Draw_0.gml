/// @description Inserte aquí la descripción
// Puede escribir su código en este editor



if (warning)
{
	var _alphaWarning = random_range(0.3, 0.5)
	draw_sprite_ext(rotoSprite,0,x,y,random_range(0.99,1.01),1,angleRotoBoss, c_red, _alphaWarning);
}

//draw_text_color(x,y+100,string(warning),c_white,c_white,c_white,c_white,1)
//draw_text_color(x,y+120,string(global.bossDemonCollection),c_white,c_white,c_white,c_white,1)
//draw_text_color(x,y+140,string(global.bossNachoCollection),c_white,c_white,c_white,c_white,1)
//draw_text_color(x,y+150,string(distDemon),c_white,c_white,c_white,c_white,1)

if alias = "bossBigEye"
{
	
	if instance_exists(o_player)
	{
		var a = point_direction(x,y,o_player.x, o_player.y)
		anglePlayer += sign(dsin(a - anglePlayer)) * (precision * min(1, global.relativeSpeed+0.2));
	}
	if (attack = "BulletSpread")
	{
		distEye = lerp(distEye, 20, 0.5)
		draw_sprite_ext(s_bigEye,0,x+lengthdir_x(distEye, anglePlayer),y+lengthdir_y(distEye, anglePlayer),1,1,anglePlayer, c_white, 1);
		draw_sprite_ext(s_Eye,0,x+lengthdir_x(distEye+8, anglePlayer),y+lengthdir_y(distEye+8, anglePlayer),1,1,anglePlayer, c_white, 1);

	}
	else if (attack = "Pattern1")
	{
		distEye = lerp(distEye, 0, 0.04)
		draw_sprite_ext(s_bigEye,0,x+lengthdir_x(distEye, anglePlayer),y+lengthdir_y(distEye, anglePlayer),1,1,anglePlayer, c_white, 1);
		draw_sprite_ext(s_Eye,0,x+lengthdir_x(distEye, anglePlayer),y+lengthdir_y(distEye, anglePlayer),1,1,anglePlayer, c_white, 1);
	}
	else 
	{
		distEye = lerp(distEye, 10, 0.04)
		draw_sprite_ext(s_bigEye,0,x+lengthdir_x(distEye, anglePlayer),y+lengthdir_y(distEye, anglePlayer),1,1,anglePlayer, c_white, 1);
		draw_sprite_ext(s_Eye,0,x+lengthdir_x(distEye+5, anglePlayer),y+lengthdir_y(distEye+5, anglePlayer),1,1,anglePlayer, c_white, 1);
	}
}

draw_self();
draw_set_font(global.customFont16)
if instance_exists(o_bossHP)
{
	draw_text(x,y+50, string(bossToCreate.step))
}
if (alertMiniDemons)
{
	dangerImg+=0.75;
	draw_sprite_ext(s_danger,dangerImg,x+lengthdir_x(distDemon, angleDemon),y+lengthdir_y(distDemon, angleDemon),0.8,0.8,0, c_white, 1);
}


