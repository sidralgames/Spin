
if (vinylSet = false)
{
	if instance_exists(o_boss)
	{
		for (var i = 0; i < global.totalNumberOfVinyls; i++)
		{
			bossToCreate = ds_map_find_value(global.collectionList, global.level -1);
			global.vinylColor = bossToCreate.vinylColor;
			global.vinylAlpha = bossToCreate.vinylAlpha;
		}
	}
	
	vinylSet = true;
}

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

image_alpha = global.vinylAlpha;
image_blend = global.vinylColor;

