/// @description Inserte aquí la descripción
// Puede escribir su código en este editor



if (warning)
{
	var _alphaWarning = random_range(0.3, 0.5)
	draw_sprite_ext(rotoSprite,0,x,y,random_range(0.99,1.01),1,angleRotoBoss, c_red, _alphaWarning);
}

//if instance_exists(o_bossHP)
//{
//	draw_text(x,y+50, string(bossToCreate.step))
//}
//draw_text_color(x,y+100,string(warning),c_white,c_white,c_white,c_white,1)
//draw_text_color(x,y+120,string(global.bossDemonCollection),c_white,c_white,c_white,c_white,1)
//draw_text_color(x,y+140,string(global.bossNachoCollection),c_white,c_white,c_white,c_white,1)
//draw_text_color(x,y+150,string(distDemon),c_white,c_white,c_white,c_white,1)


if alias = "bossOblong"
{
	BossOblongDraw();
}

if alias = "bossRomboss"
{
	BossRombossDraw();
}


if (alias = "bossBigEye")
{
	BossBigEyeDraw();
}

draw_self();

if (alertMiniDemons)
{
	dangerImg+=0.75;
	draw_sprite_ext(s_danger,dangerImg,x+lengthdir_x(distDemon, angleDemon),y+lengthdir_y(distDemon, angleDemon),0.8,0.8,0, c_white, 1);
}


