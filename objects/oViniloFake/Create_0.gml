_angle = image_angle;
depth = depth -2


if instance_exists(o_boss)
{
	switch(o_boss.spriteBoss)
	{
		case s_bossNacho:
		{
			global.vinylAlpha = 0.8;
			global.vinylColor = global.pink;
		}break;
		
		case s_bossDemon:
		{
			global.vinylAlpha = 0.85;
			global.vinylColor = global.pink;
		}break;
		
		case s_bossTribal:
		{
			global.vinylAlpha = 0.85;
			global.vinylColor = global.pink;
		}break;
				
	}
}
image_alpha = global.vinylAlpha
image_blend = global.vinylColor;