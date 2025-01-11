/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
songDuration = audio_sound_length(global.song);

dist = 170;

distToCenter = dist - 30;

fac = 0.0062

nearDisc = instance_nearest(x,y,sp1);
nearBoss = instance_nearest(x,y,o_boss);


canBeTouched= true;
contCanBeTouched = 200;

x = nearDisc.x + lengthdir_x(dist, 45);
y = nearDisc.y + lengthdir_y(dist, 45);