/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
exploBullet = instance_create_layer(x+lengthdir_x(5,direction - 180),y+lengthdir_y(5,direction - 180),"Bullets", o_explosion);
exploBullet.image_xscale = 0.1 + (global.superShot * 0.1);
exploBullet.image_yscale = 0.1 + (global.superShot * 0.1);
exploBullet.image_speed = 0.9;
exploBullet.sprite_index = s_exploBlue;