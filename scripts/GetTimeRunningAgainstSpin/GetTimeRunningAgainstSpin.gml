// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function GetTimeRunningAgainstSpin(){
	///////////
	var hour = string_format(global.runningAgainstSpinmilisecsBest/60 div (60 * 60),2,0);
	var minute = string_format(global.runningAgainstSpinmilisecsBest/60 div 60 mod 60,2,0);
	var second = string_format(global.runningAgainstSpinmilisecsBest/60 mod 60,2,0);
	if (hour > 0) 
	{
		timestr = string_replace_all(hour + "h" + minute + "m" + second + "s"," ","0");
	}
	else
	{
		timestr = string_replace_all(minute + "m" + second + "s"," ","0");
	}
	return timestr;

}