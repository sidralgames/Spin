/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


global.balaPLucky_sys = part_system_create();

part_system_depth(global.balaPLucky_sys,layer_get_depth("BulletsPlayer"));	


//Particle
global.balaPLucky = part_type_create();
part_type_scale(global.balaPLucky,1,1);


part_type_size(global.balaPLucky, max(0.89,0.89+global.superShot/1.5-0.65), max(1,1+global.superShot/1.5-0.5),-0.075,0);

part_type_sprite(global.balaPLucky, s_bulletPlayerLucky_1,true,false,true)
part_type_orientation(global.balaPLucky,0,359,0,0,0)
part_type_alpha2(global.balaPLucky, 1 ,0.5);
part_type_speed(global.balaPLucky,0,0,0,0);
part_type_direction(global.balaPLucky,140,160,0,1);
part_type_life(global.balaPLucky, 8,10);







//Particle Emitter
misil_emit = part_emitter_create(global.balaP_sys);
part_emitter_region(global.balaP_sys, misil_emit, x-40,x+40,y-40,y+40, ps_shape_diamond,ps_distr_gaussian);
part_emitter_stream(global.balaP_sys, misil_emit,global.balaP,1)


