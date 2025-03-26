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
//draw_text_color(x,y+160,string(global.bossTribalCollection),c_white,c_white,c_white,c_white,1)
draw_self();
draw_set_font(global.customFont16)

