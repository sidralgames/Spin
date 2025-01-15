// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function Die()
{
	if (!collision_circle(x,y,4,o_vinilo,true,true)) && (inDash = false)
	{
		contDie --;
		if (contDie <=0)
		{
			dying = true;
			depth = o_vinilo.depth+3
		}
	}
	else
	{
		contDie = 5;
	}

	if (dying = true)
	{
		if (scaleReset = false)
		{
			image_xscale = 1;
			image_yscale = 1;
			scaleReset = true;
		}
	
		image_xscale -= 0.01;
		image_yscale -= 0.01;	
	
		if (image_xscale <= 0.1)
		{
			instance_destroy();
		}
	}
	
	if (_hp <= 0)
	{
		instance_destroy();
	}
}