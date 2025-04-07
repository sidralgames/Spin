// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function PlayerDrawCircularBar()
{
	if (global.energy < global.energyTotal)
	{
		if (global.energy > global.warningEnergy)
		{
			draw_circular_bar(o_player.x+17, o_player.y-17, global.energy, global.energyTotal, global.lightBlue, 7,1, 2);
			draw_circular_bar(o_player.x+17, o_player.y-17, global.energy, global.energyTotal, c_white, 6,1, 2);
		}
		else
		{
			draw_circular_bar(o_player.x+17, o_player.y-17, global.energy, global.energyTotal, global.brightRed, 8,1, 2);
			draw_circular_bar(o_player.x+17, o_player.y-17, global.energy, global.energyTotal, global.red, 7,1, 2);
		}
	}
}