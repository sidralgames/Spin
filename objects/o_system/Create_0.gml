/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if file_exists("SpinData.ini")
{
	LoadGame();
	global.EXISTE = true;
}
else
{
	global.EXISTE = false;
	LoadDefaultData();
}