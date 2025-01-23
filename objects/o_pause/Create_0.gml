/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
depth = -200
pause = false;
pauseSurf = -1;
pauseSurfBuffer = -1;

pausedByCinematic = false;
goToMenu = false;
image_speed = 0.25;

resW = display_get_width();
resH = display_get_height();
alarm[1] = 20;
showControls = false;

const = 640 / 1920;

timesToDraw = 0;
w = surface_get_width(application_surface)
quit = false;

selected = 0;
selectedCross = 0;
spriteBack = 0;

firstSized = false;
graphicsResized = false;
