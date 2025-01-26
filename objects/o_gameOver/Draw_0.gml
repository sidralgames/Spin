/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
initialGameOver = lerp(initialGameOver, 80, factor);
global.relativeSpeed = 0.5;

draw_set_alpha(0.86)
draw_set_color(global.darkPalette)
draw_rectangle(__view_get( e__VW.XView, 0 )+0,__view_get( e__VW.YView, 0 )+0,__view_get( e__VW.XView, 0 )+640,__view_get( e__VW.YView, 0 )+360,false)	

draw_set_alpha(1)
draw_sprite_ext(s_gameOver, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialGameOver,1,1,0,image_blend, image_alpha)