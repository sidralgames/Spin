/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

global.vinylSpin = -0.2;
sprite_index = s_discoVinilo;
x = room_width/2;
y = room_height/2
discImage = 0
scaleRoto = 1;
contGetImage = 20
scale = 1;
nearDisc = instance_nearest(x,y,o_vinilo);

surface =-1
surfaced = false;
cont = 1;
_angle = 0;
angleReal = image_angle;
spinCreateHole = false;
angleHole = 0;
distHole = 0;
holeImage = 0;
getImage = false
changed = false
blank = -1;
spr_custom=-1;
image_speed = 0;
image_index=discImage
bullet = -1

//viniloFake = instance_create_layer(x,y,"Vinyl",oViniloFake)
//viniloFake.sprite_index = sprite_index;
//viniloFake.image_speed = 0;
//viniloFake.image_index = discImage;