/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


global.misilGreenPart_sys = part_system_create();

part_system_depth(global.misilGreenPart_sys,layer_get_depth("BulletsPlayer"));	


//Particle
global.misilGreenPart = part_type_create();
part_type_scale(global.misilGreenPart,1,1);


part_type_size(global.misilGreenPart, 1.25,1.75,-0.075,0);

part_type_sprite(global.misilGreenPart, s_misilPartGreen,true,false,false)
part_type_orientation(global.misilGreenPart,0,359,0,0,0)
part_type_alpha2(global.misilGreenPart, 1 ,0.5);
part_type_speed(global.misilGreenPart,0,0,0,0);
part_type_direction(global.misilGreenPart,140,160,0,1);
part_type_life(global.misilGreenPart, 80,120);







//Particle Emitter
misil_emit = part_emitter_create(global.balaP_sys);
part_emitter_region(global.balaP_sys, misil_emit, x-40,x+40,y-40,y+40, ps_shape_diamond,ps_distr_gaussian);
part_emitter_stream(global.balaP_sys, misil_emit,global.balaP,1)


