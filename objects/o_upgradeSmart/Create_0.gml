/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
event_inherited();
cx = room_width/2;
cy = room_height/2;
alias = "SmartBullets";
upgradeName = "Sharp B's"
upgradeDesc = "Bullets are\nSmart\nAND\nPiercing"
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