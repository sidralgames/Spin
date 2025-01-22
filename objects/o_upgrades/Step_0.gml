/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (image_xscale <=1.2) && (scaled = false)
{
	image_xscale = lerp(image_xscale, 1.4, 0.09);
	image_yscale = lerp(image_yscale, 1.4, 0.09);
}
else
{
	scaled = true;
	
	image_xscale = lerp(image_xscale, 1, 0.1)
	image_yscale = lerp(image_yscale, 1, 0.1);
	
	if (image_xscale <= 1.08)
	{
		image_xscale =1;
		image_yscale =1;
		
		if (creatingUpgrades = false)
		{
			instance_create_layer(x+100, y+20, "BulletsDown", o_upgradeGun);
			instance_create_layer(x-100, y, "BulletsDown", o_upgradeEnergy);
			creatingUpgrades = true;
		}
	}
	
}



if instance_exists(o_viniloUpgrades)
{
	image_angle = o_viniloUpgrades.image_angle;
}

if !instance_exists(o_upgradesFather) && (creatingUpgrades = true)
{
	screenShake(6,120,4)
	exploOrange = instance_create_layer(x, y, "BulletsDown", o_explosion);
	exploOrange.sprite_index = s_exploOrange;
	exploOrange.image_xscale = 1.2;
	exploOrange.image_yscale = 1.2;
	upgradeVinyl = instance_create_layer(x,y,"Vinyl", o_vinilo);
	upgradeGalleta = instance_create_layer(x,y,"Boss", o_boss);
	instance_destroy(o_viniloUpgrades);
	instance_destroy();
}