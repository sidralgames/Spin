/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


global.misilTribalPart_sys = part_system_create();

part_system_depth(global.misilTribalPart_sys,layer_get_depth("BulletsPlayer"));	


//Particle
global.misilTribalPart = part_type_create();
part_type_scale(global.misilTribalPart,1.1,1.1);


part_type_size(global.misilTribalPart, 0.9,1.25,-0.042,0);

part_type_sprite(global.misilTribalPart, s_misilPartTribal,true,true,false)
part_type_orientation(global.misilTribalPart,0,359,0,0,0)
part_type_alpha2(global.misilTribalPart, 1 ,0.95);
part_type_speed(global.misilTribalPart,0,0,0,0);
part_type_direction(global.misilTribalPart,140,160,0,1);
part_type_life(global.misilTribalPart, 10,30);







//Particle Emitter
misil_emit = part_emitter_create(global.balaP_sys);
part_emitter_region(global.balaP_sys, misil_emit, x-40,x+40,y-40,y+40, ps_shape_diamond,ps_distr_gaussian);
part_emitter_stream(global.balaP_sys, misil_emit,global.balaP,1)


