// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBossPentagovonCollection()
{
	ds_map_add(global.collectionList, global.totalNumberOfVinyls,
	{ 
		alias: "bossPentagovon",
		song: snd_satansVomit,
		offsetSong: 0,
		keyKilledBy :"killedByPentagovon",
		sprite: s_bossPentagovon,
		bside: s_bossNacho_B,
		spriteVinyl: s_discoVinilo,
		hpMax: 500,
		vinylAlpha : 0.95,
		vinylColor : global.brightRed,
		number: 10,
		defeatedInRun: 0,
		collection: global.bossPentagovonCollection,
		unlocked: 0,
		step: BossPentagovonStep,
		tintCol: global.redArray,
		noiseTintCol: global.yellowArray,
		wallSprite: s_wallPentagovon,
		isDLC: true,
		spriteDLCTitle: s_elGancho_title,
		songName: "Satan's Vomit",
		albumName: "El Gancho OST",
		artistName: "Ingala",
		killsName: "bossPentagovonKills",
		deathsName: "bossPentagovonDeaths",
		kills: 0,
		deaths: 0
	})

	global.totalNumberOfVinyls +=1;
}
