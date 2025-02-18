/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
changeSongCollection = false;




creatingUpgrades = false;
scaled = false;
alarm[0] = 80;
textToDraw ="";
drawText = false;
set = irandom(3);

image_speed = 0;

if (global.level < 5)
{
	image_index = global.level -2;
}
else
{
	image_index = 5
}

if instance_exists(o_aguja)
{
	with(o_aguja)
	{
		angleAguja = initialAngleAguja;
	}
}