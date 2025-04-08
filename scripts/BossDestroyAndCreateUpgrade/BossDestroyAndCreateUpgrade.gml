// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BossDestroyAndCreateUpgrade()
{
	SaveGame();
	
	//--- CREATE UPGRADE VINYL ---//
	upgradeVinyl = instance_create_layer(x,y,"Vinyl", o_viniloUpgrades);
	upgradeGalleta = instance_create_layer(x,y,"Boss", o_upgrades);
	upgradeGalleta.image_xscale = 0.12;
	upgradeGalleta.image_yscale = 0.12;
	
	//--- DESTROY BOSS ---//
	instance_destroy(o_vinilo);
	instance_destroy(oViniloFake);
	instance_destroy();
}