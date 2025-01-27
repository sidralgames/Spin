// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBossTribalCollection()
{
	ds_map_add(global.collectionList, global.totalNumberOfVinyls,
	{ 
		alias: "Tribal",
		keyKilledBy :"killedByTribal",
		sprite: s_bossTribal,
		spriteVinyl: s_discoVinilo,
		vinylAlpha : 0.95,
		vinylColor : global.yellow,
		number: 2,
		defeatedInRun: 0,
		unlocked: global.bossTribalCollection
	})

	global.totalNumberOfVinyls +=1;
}
