/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
goToBossHp = false;
image_speed = 0.5;

cx = room_width/2;
cy = room_height/2;

bossSpin = global.vinylSpin;
totalPush = 0;
totalMaxSpeed = 3;
r = 100;
theta = 0;
checkPos = false;
canBePicked = false;
contPick = 240;
contAlpha = 20;

cableFake = false;
bounced = false;
parCol = -1;
dying = false