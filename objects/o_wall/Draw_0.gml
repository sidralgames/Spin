/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

draw_sprite_ext(sprite_index,image_index, x,y,scale,scale,image_angle, image_blend, 1);

if (global.hpWallUpgrade > 0)
{	
	if (_hp <= _hpMax / 2)
	{
		draw_sprite_ext(s_wallDegradation,1, x,y,scale,scale,image_angle, image_blend, 0.7)
	
	}
	else 
	{
		draw_sprite_ext(s_wallDegradation,0, x,y,scale,scale,image_angle, image_blend, 0.7)
	}
}
else
{
	if (_hp <= _hpMax / 2) && (_hp > _hpMax / 4)
	{
		draw_sprite_ext(s_wallDegradation,0, x,y,scale,scale,image_angle, image_blend, 0.7)
	
	}
	else if (_hp <= _hpMax / 4)
	{
		draw_sprite_ext(s_wallDegradation,1, x,y,scale,scale,image_angle, image_blend, 0.7)
	}
}



	




//draw_text(x,y-20,string(_hp))