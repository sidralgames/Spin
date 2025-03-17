       // Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function MovePlayer()
{
	dirH = key_right - key_left;
	dirV = key_down - key_up;

	
	if (abs(dirH) >= 0.3)
	{
		if (alarm[3] <= 0)
		{
			_hpush += dirH * global.walkAccelerationH;
			//_hpush = lerp(_hpush, 0, 0.00005);
		}
	}

	if (abs(dirV) >= 0.3)
	{
		if (alarm[3] <= 0)
		{
			_vpush += dirV * global.walkAccelerationV;
			r-=_vpush
			
			//_vpush = lerp(_vpush, 0, 0.00005);
			
		}
	}
	
	if (dirV = 0)
	{
		_vpush = lerp(_vpush, 0, 0.05);
	}
	
	if (dirH = 0)
	{
		_hpush = lerp(_hpush, 0, 0.05);	
	}
}