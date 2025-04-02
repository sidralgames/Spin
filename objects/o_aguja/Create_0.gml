/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
initialAngleAguja = 32;
angleAguja = initialAngleAguja
image_angle = angleAguja;
songDuration = audio_sound_length(global.song);

framesSong = songDuration * room_speed;

initialDist = 250;

dist = initialDist;

distToCenter = dist - 10;
angleFac = 0.075
fac = (distToCenter / framesSong) * angleFac

nearDisc = instance_nearest(x,y,o_vinilo);
nearBoss = instance_nearest(x,y,o_boss);


canBeTouched= true;
contCanBeTouched = 200;

x = nearDisc.x + lengthdir_x(dist, 35);
y = nearDisc.y + lengthdir_y(dist, 35);

xIni = x;
yIni = y;