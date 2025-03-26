/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
event_inherited();
cx = room_width/2;
cy = room_height/2;
alias = "RecoverLives";
upgradeName = "2 Lives"
upgradeDesc = "Recover\nup to\n2 Lives";
bossSpin = global.vinylSpin;
totalPush = 0;
totalMaxSpeed = 3;
r = 100;
theta = 0;
image_xscale = 2;
image_yscale = 2;

checkPos = false;
contPick = 50;
contAlpha = 6;
canBePicked = false;
instance_create_layer(x,y,"BulletsDown", o_upgradeEffect);
thisUpgrade = instance_nearest(x,y,o_upgradesFather);