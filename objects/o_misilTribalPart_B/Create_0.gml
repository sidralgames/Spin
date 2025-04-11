/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


global.misilTribalPart_B_sys = part_system_create();

part_system_depth(global.misilTribalPart_B_sys,layer_get_depth("BulletsPlayer"));	


//Particle
global.misilTribalPart_B = part_type_create();
part_type_scale(global.misilTribalPart_B,1.1,1.1);


part_type_size(global.misilTribalPart_B, 0.9,1.25,-0.042,0);

part_type_sprite(global.misilTribalPart_B, s_misilPartTribal_B,true,true,false)
part_type_orientation(global.misilTribalPart_B,0,359,0,0,0)
part_type_alpha2(global.misilTribalPart_B, 1 ,0.95);
part_type_speed(global.misilTribalPart_B,0,0,0,0);
part_type_direction(global.misilTribalPart_B,140,160,0,1);
part_type_life(global.misilTribalPart_B, 10,30);







//Particle Emitter
misil_emit = part_emitter_create(global.balaP_sys);
part_emitter_region(global.balaP_sys, misil_emit, x-40,x+40,y-40,y+40, ps_shape_diamond,ps_distr_gaussian);
part_emitter_stream(global.balaP_sys, misil_emit,global.balaP,1)


