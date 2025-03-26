/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
event_inherited();
cx = room_width/2;
cy = room_height/2;
alias = "Lucky Shot";
upgradeName = "Lucky Shot"
upgradeDesc = "Bullets have\n1/100 odds\nof doing\nx25 damage";
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
thisUpgrade = instance_nearest(x,y,o_upgradesFather);

image_speed = 0.5;