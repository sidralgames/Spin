_angle = image_angle;
depth = depth -2


if instance_exists(o_boss)
{
	for (var i = 0; i < global.totalNumberOfVinyls; i++)
	{
		bossToCreate = ds_map_find_value(global.collectionList, global.level -1);
		global.vinylColor = bossToCreate.vinylColor;
		global.vinylAlpha = bossToCreate.vinylAlpha;
	}
}

vinylSet = false;

image_alpha = global.vinylAlpha
image_blend = global.vinylColor;

drawAlert = false;
drawAlertSprite = -1;