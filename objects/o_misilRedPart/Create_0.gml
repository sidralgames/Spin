/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


global.misilRedPart_sys = part_system_create();

part_system_depth(global.misilRedPart_sys,layer_get_depth("BulletsPlayer"));	


//Particle
global.misilRedPart = part_type_create();
part_type_scale(global.misilRedPart,1,1);


part_type_size(global.misilRedPart, 1.25,1.75,-0.075,0);

part_type_sprite(global.misilRedPart, s_misilPartRed,true,false,false)
part_type_orientation(global.misilRedPart,0,359,0,0,0)
part_type_alpha2(global.misilRedPart, 1 ,0.5);
part_type_speed(global.misilRedPart,0,0,0,0);
part_type_direction(global.misilRedPart,140,160,0,1);
part_type_life(global.misilRedPart, 80,120);







//Particle Emitter
misil_emit = part_emitter_create(global.balaP_sys);
part_emitter_region(global.balaP_sys, misil_emit, x-40,x+40,y-40,y+40, ps_shape_diamond,ps_distr_gaussian);
part_emitter_stream(global.balaP_sys, misil_emit,global.balaP,1)


