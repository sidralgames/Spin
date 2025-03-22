// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function PlayerDrawGun()
{
	image_angle = aimDir;
	recoilGun = lerp(recoilGun, 0, 0.05)
	
	if (aimDir > 270 || aimDir < 90)
	{
		scaleGunY = 1;
		image_yscale = 1;
	
	}
	else
	{
		scaleGunY = -1;
		image_yscale = -1;
	}
	if gamepad_is_connected(0)
	{
		draw_sprite_ext(gunSprite, 0, x + lengthdir_x(distGun - recoilGun, aimDir), y + lengthdir_y(distGun - recoilGun, aimDir),1,scaleGunY,aimDir,image_blend,image_alpha)
	}
	else
	{
		draw_sprite_ext(gunSprite, 0, x + lengthdir_x(distGun - recoilGun, aimDir), y + lengthdir_y(distGun - recoilGun, aimDir),1,scaleGunY,aimDir,image_blend,image_alpha)
	}
}