/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
xDist = lerp(xDist, 50, 0.05)
draw_set_halign(fa_left);
draw_set_font(global.customFont20);
draw_set_color(global.lightBlue)
draw_text( __view_get( e__VW.XView, 0 )+ xDist,__view_get( e__VW.YView, 0 )+52, string(o_boss.bossNumber + 1) + ". " + o_boss._songName + "\n" + string(o_boss._albumName) + "\n" + string(o_boss._artistName))
draw_set_color(global.yellow)
draw_text( __view_get( e__VW.XView, 0 )+ xDist,__view_get( e__VW.YView, 0 )+51, string(o_boss.bossNumber + 1) + ". " + o_boss._songName + "\n" + string(o_boss._albumName) + "\n" + string(o_boss._artistName))
draw_set_color(global.pink)
draw_text( __view_get( e__VW.XView, 0 )+ xDist,__view_get( e__VW.YView, 0 )+50, string(o_boss.bossNumber + 1) + ". " + o_boss._songName + "\n" + string(o_boss._albumName) + "\n" + string(o_boss._artistName))
	