/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
contCoco--;

if (contCoco <= 0)
{
		instance_create_layer(x+lengthdir_x(distCoco, angleCoco),y+lengthdir_y(distCoco, angleCoco), "BulletsDown", o_coco)
		contCoco = 100;
		distCoco = irandom_range(60, 160);
		angleCoco = irandom(359)
}