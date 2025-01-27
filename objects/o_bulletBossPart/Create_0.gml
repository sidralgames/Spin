/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


global.balaPBoss_sys = part_system_create();

part_system_depth(global.balaPBoss_sys,layer_get_depth("BulletsDown"));	


//Particle
global.balaPBoss = part_type_create();
part_type_scale(global.balaPBoss,1,1);


part_type_size(global.balaPBoss,0.75, 1.25, -0.075,0.15);

part_type_sprite(global.balaPBoss, s_bulletBossNacho,true,false,true)
part_type_orientation(global.balaPBoss,0,359,0,0,0)
part_type_alpha2(global.balaPBoss, 1 ,0.5);
part_type_speed(global.balaPBoss,0,0,0,0);
part_type_direction(global.balaPBoss,140,160,0,1);
part_type_life(global.balaPBoss, 10,15);







//Particle Emitter
misil_emit = part_emitter_create(global.balaP_sys);
part_emitter_region(global.balaP_sys, misil_emit, x-40,x+40,y-40,y+40, ps_shape_diamond,ps_distr_gaussian);
part_emitter_stream(global.balaP_sys, misil_emit,global.balaP,1)


