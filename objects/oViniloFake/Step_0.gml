
_angle +=  global.vinylSpin*global.relativeSpeed


image_angle = o_vinilo.image_angle;



if (image_angle <= 0)
{
	image_angle +=360;
}

if (_angle <= 0)
{
	_angle+=360;
}

if (image_angle <= 0)
{
	image_angle+=360;
}


if instance_exists(o_boss) && (global.collection = false)
{
	switch(o_boss.spriteBoss)
	{
		case s_bossNacho:
		{
			global.vinylAlpha = 1;
			global.vinylColor = global.pink;
		}break;
		
		case s_bossDemon:
		{
			global.vinylAlpha = 0.85;
			global.vinylColor = global.lightBlue;
		}break;
		
		case s_bossTribal:
		{
			global.vinylAlpha = 0.95;
			global.vinylColor = global.yellow
		}break;
		
		case s_bossGirl:
		{
			global.vinylAlpha = 0.90;
			global.vinylColor = global.pink
		}break;
		
		case s_bossRata:
		{
			global.vinylAlpha = 0.90;
			global.vinylColor = global.greenRat;
		}break;		
		
		case s_bossMixtape:
		{
			global.vinylAlpha = 0.90;
			global.vinylColor = global.lightPink;
		}break;
	}
}

image_alpha = global.vinylAlpha;
image_blend = global.vinylColor;