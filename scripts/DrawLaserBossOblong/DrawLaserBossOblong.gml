// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function DrawLaserBossOblong(argument0)
{
	if instance_exists(o_boss)
	{
		warning --;
		
		height = sin(random(1));
		colorWarning = make_color_rgb(255,0,68);
		colorLaser = global.orange;
		blanco = c_white;
	
		if (o_boss.isWarningLaser)
		{
			
			draw_set_alpha(0.4+random(0.3))
			draw_circle_colour(x+lengthdir_x(10,argument0), y-1+lengthdir_y(10, argument0),(height*2)+blueWidht-3,colorWarning, colorWarning, false)
			draw_circle_colour(x+lengthdir_x(maxLenght,argument0), y-1+lengthdir_y(maxLenght, argument0),(height*2)+blueWidht-2,colorWarning, colorWarning, false)
			draw_set_color(colorWarning);
			draw_set_alpha(0.3+random(0.2))
			draw_line_width( x+lengthdir_x(5,argument0), y-1+lengthdir_y(5, argument0), x+lengthdir_x(maxLenght,argument0), y-1+lengthdir_y(maxLenght, argument0),(height * 3) + blueWidht-4);

			draw_set_alpha(1)
		}
		
		if instance_exists(o_boss)
		{
			if (o_boss.isLaser)
			{
				if (drawflash=true)
				{
					draw_set_alpha(0.1)
					draw_set_color(c_white)
					draw_rectangle(__view_get( e__VW.XView, 0 )+0,__view_get( e__VW.YView, 0 )+0,__view_get( e__VW.XView, 0 )+640,__view_get( e__VW.YView, 0 )+360,false)
					drawflash=false;
				}
			
				blueWidht = lerp(blueWidht, 9, 0.1*global.relativeSpeed);
				whiteWidht =  lerp(whiteWidht, 5, 0.2*global.relativeSpeed);
	
				draw_set_alpha(0.8+random(0.6))
				draw_circle_colour(x+lengthdir_x(10,argument0), y-1+lengthdir_y(10, argument0),(height*2)+blueWidht+0.5,colorLaser, colorLaser, false)
				draw_circle_colour(x+lengthdir_x(10,argument0), y-1+lengthdir_y(10, argument0),(height*1)+whiteWidht,blanco, blanco, false)
	
				draw_circle_colour(x+lengthdir_x(maxLenght,argument0), y-1+lengthdir_y(maxLenght, argument0),(height*2)+blueWidht+1.5,colorLaser, colorLaser, false)
				draw_circle_colour(x+lengthdir_x(maxLenght,argument0), y-1+lengthdir_y(maxLenght, argument0),(height*1)+whiteWidht,blanco, blanco, false)
	
				draw_set_color(colorLaser);
				draw_set_alpha(0.2+random(0.4))
				draw_line_width( x+lengthdir_x(13,argument0), y-1+lengthdir_y(13, argument0), x+lengthdir_x(maxLenght,argument0), y-1+lengthdir_y(maxLenght, argument0),(height * 5) + blueWidht+3);
				draw_set_alpha(0.8+random(0.6))
				draw_line_width(x+lengthdir_x(13,argument0), y-1+lengthdir_y(13, argument0), x+lengthdir_x(maxLenght,argument0), y-1+lengthdir_y(maxLenght, argument0), (height * 3) + blueWidht);
		
				draw_set_color(blanco);
				draw_line_width( x+lengthdir_x(13,argument0), y-1+lengthdir_y(13, argument0), x+lengthdir_x(maxLenght,argument0), y-1+lengthdir_y(maxLenght, argument0),(height * 1) + whiteWidht);
				draw_set_alpha(1)
			}
		}
	}
}