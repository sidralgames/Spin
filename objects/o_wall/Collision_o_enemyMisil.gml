/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
instance_destroy();

exploBullet = instance_create_layer(other.x+lengthdir_x(5,other.direction - 180),other.y+lengthdir_y(5,other.direction - 180),"Bullets", o_explosion);
exploBullet.image_xscale = 0.3;
exploBullet.image_yscale = 0.3;
exploBullet.image_speed = 0.9;
exploBullet.sprite_index = s_exploBlue;
other._hp -= 2;