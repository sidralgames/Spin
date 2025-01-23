/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (changingLevel = true)
{
	if instance_exists(o_boss)
	{
		switch(o_boss.spriteBoss)
		{
			case s_bossNacho:
			{
				color_fx_params.g_TintCol = global.lightBlueArray;
				noise_fx_params.g_FractalNoiseTintColour = global.pinkArray

				fx_set_parameters(color_fx, color_fx_params);
				fx_set_parameters(noise_fx, noise_fx_params);

				layer_set_fx("EffectColor", color_fx);
				layer_set_fx("Noise", noise_fx);
	
				changingLevel = false;
			}
			break;
			
			case s_bossDemon:
			{
				color_fx_params.g_TintCol = global.yellowArray;
				noise_fx_params.g_FractalNoiseTintColour = global.BlueArray

				fx_set_parameters(color_fx, color_fx_params);
				fx_set_parameters(noise_fx, noise_fx_params);

				layer_set_fx("EffectColor", color_fx);
				layer_set_fx("Noise", noise_fx);
	
				changingLevel = false;
			}
			break;
		}
	}
	
	if instance_exists(o_upgrades)
	{
		
		color_fx_params.g_TintCol = global.brightArray;
		noise_fx_params.g_FractalNoiseTintColour = global.lighPinkArray

		fx_set_parameters(color_fx, color_fx_params);
		fx_set_parameters(noise_fx, noise_fx_params);

		layer_set_fx("EffectColor", color_fx);
		layer_set_fx("Noise", noise_fx);
	
		changingLevel = false;
	}
}

if !instance_exists(o_player)
{
	newPosX = lastX+random_range(100,-100)
	newPosY = lastY+random_range(100,-100)
	
	if collision_circle(newPosX, newPosY , 2, o_Floor, true, true) && 
	point_distance(o_Floor.x, o_Floor.y, newPosX, newPosY) < 150 && 
	point_distance(o_Floor.x, o_Floor.y, newPosX, newPosY) > 70
	{
		DestroyCablesAndJacks();
		newPlayer = instance_create_layer(newPosX, newPosY, "Player", o_player);
		newPlayer.comesFromDeath = true;

	}

}