// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function draw_pie(x ,y ,value, max, colour, radius, transparency)
{

/// draw_pie()

if (argument2 > 0) { // no point even running if there is nothing to display (also stops /0
    var i, len, tx, ty, val;
    
    var numberofsections = 30 // there is no draw_get_circle_precision() else I would use that here
    var sizeofsection = 360/numberofsections
    
    val = (argument2/argument3) * numberofsections 
    
    if (val > 1) { // HTML5 version doesnt like triangle with only 2 sides 
    
        draw_set_colour(argument4);
        draw_set_alpha(argument6);
        
        draw_primitive_begin(pr_trianglefan);
        draw_vertex(argument0, argument1);
        
        for(i=0; i<=val; i++) {
            len = (i*sizeofsection)+90; // the 90 here is the starting angle
            tx = lengthdir_x(argument5, len);
            ty = lengthdir_y(argument5, len);
            draw_vertex(argument0+tx, argument1+ty);
        }
        draw_primitive_end();
        
    }
    draw_set_alpha(1);
}
}