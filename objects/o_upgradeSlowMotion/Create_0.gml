/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
cx = room_width/2;
cy = room_height/2;
nameUp = "SlowMo\nPress L2 to use.\nConsume energy"
bossSpin = global.vinylSpin;
totalPush = 0;
totalMaxSpeed = 3;
r = 100;
theta = 0;

checkPos = false;
contPick = 50;
contAlpha = 6;
canBePicked = false;
instance_create_layer(x,y,"BulletsDown", o_upgradeEffect);