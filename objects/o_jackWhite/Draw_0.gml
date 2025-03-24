/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if instance_exists(o_player)
{
	if (o_player.comeFromDeath)
	{
		image_alpha = 0.4;
	}
	else
	{
		if (cableFake = false)
		{
			image_alpha = 1;
		}
	}
}

//if (canBePicked)
//{
//	spotRad --;
	
//	if (spotRad <=0)
//	{
//		spotRad = spotRadInitial;
//	}
	
//	draw_set_alpha(1);
	
//	draw_circle(x,y,spotRad, true)
//	draw_circle(x,y,spotRad+4, true)
	
//}

draw_self();