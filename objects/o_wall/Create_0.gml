/// @description Inserte aquí la descripción
// Puede escri,bir su código en este editor
tocado = false;
scale = 0.5;
scale1 = false;
scale2= false;
scale3= false;
_hpMax = max(2, 6 + global.level - global.hpWallUpgrade);
_hp =  _hpMax
scaled = false;
_hpTime = 600;
image_xscale = scale;
image_yscale = scale;
image_speed = 0;

type = collisionType.custom;

sprite_index = global.wallSprite;
