// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function draw_text_outline(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7)
{
//x,y,str,outwidth,outcol,outfidelity,_separation,width
//Created by Andrew McCluskey http://nalgames.com/

//x,y: Coordinates to draw
//str: String to draw
//arugment3 = outwidth: Width of outline in pixels
//argument4 = outcol: Colour of outline (main text draws with regular set colour)
//argument5 = outfidelity: Fidelity of outline (recommended: 4 for small, 8 for medium, 16 for larger. Watch your performance!)
//argument6 = separation, for the draw_text_EXT command.
//argument7 = width for the draw_text_EXT command.


//2,c_dkgray,4,20,500 <Personal favorite preset. (For fnt_3)
var dto_dcol=draw_get_color();

draw_set_color(argument4);

for(var dto_i=45; dto_i<405; dto_i+=360/argument5)
{
  //draw_text_ext(argument0+lengthdir_x(argument3,dto_i),argument1+lengthdir_y(argument3,dto_i),argument2,argument6,argument7);
  draw_text_ext(argument0+round(lengthdir_x(argument3,dto_i)),argument1+round(lengthdir_y(argument3,dto_i)),argument2,argument6,argument7);
}

draw_set_color(dto_dcol);

draw_text_ext(argument0,argument1,argument2,argument6,argument7);

/* Original code, in case I mess something up.
var dto_dcol=draw_get_color();

draw_set_color(argument4);

for(var dto_i=45; dto_i<405; dto_i+=360/argument5)
{
    draw_text(argument0+lengthdir_x(argument3,dto_i),argument1+lengthdir_y(argument3,dto_i),argument2);
}

draw_set_color(dto_dcol);

draw_text(argument0,argument1,argument2);
*/
}