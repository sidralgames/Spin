/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (creatingUpgrades = false)
{
	creatingUpgrades = true;
	instance_create_layer(x+100, y+20, "BulletsDown", o_upgradeGun);
	instance_create_layer(x-100, y, "BulletsDown", o_upgradeEnergy);
}

if instance_exists(o_viniloUpgrades)
{
	image_angle = o_viniloUpgrades.image_angle;
}