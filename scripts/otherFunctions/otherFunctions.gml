// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
/// @function				collide(xx, yy, radius);
/// @param {float} xx		The x position to check.
/// @param {float} yy		The y position to check.
/// @param {float} radius	The points radius ro check.
/// @description			Custom collision function. Replace this with whatever fits your game.
function collide(xx, yy, radius) {
	
	if (canCollide)
	{
		//var lay_id = layer_get_id("Tiles");
		//var tile_id = layer_tilemap_get_id(lay_id);

		var inst;
	
		inst = instance_position(xx - radius, yy, o_wall);
		if (inst != noone) return inst;
		inst = instance_position(xx + radius, yy, o_wall);
		if (inst != noone) return inst;
		inst = instance_position(xx, yy - radius, o_wall);
		if (inst != noone) return inst;
		inst = instance_position(xx, yy + radius, o_wall);
		if (inst != noone) return inst;
	}
	return noone;
};

/// @function				approach(startValue, goalValue, amount);
/// @description			Approaches a [goalValue] from the [startValue] by an [amount].
/// @param {int} startValue	The value to start from.
/// @param {int} goalValue	The goal value to reach.
/// @param {int} amount		The amount to move.
function approach(startValue, goalValue, amount) {
	var r = startValue;
	
	if (goalValue > startValue) {
		r = clamp(r + amount, r, goalValue);
	} else {
		r = clamp(r - amount, goalValue, r);
	}
	
	return r;
};