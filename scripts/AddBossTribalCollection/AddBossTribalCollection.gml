// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBossTribalCollection()
{
	ds_map_add(global.collectionList, global.totalNumberOfVinyls,
	{ 
		alias: "bossTribal",
		song: snd_tribal,
		offsetSong: 135,
		keyKilledBy :"killedByTribal",
		sprite: s_bossTribal,
		bside: s_bossNacho_B,
		spriteVinyl: s_discoVinilo,
		hpMax: 200,
		vinylAlpha : 0.95,
		vinylColor : global.yellow,
		number: 2,
		defeatedInRun: 0,
		collection: global.bossTribalCollection,
		unlocked: 0,
		step: BossTribalStep,
		tintCol: [0, 0, 0, 1],
		noiseTintCol: global.yellowArray2,
		wallSprite: s_wallTribal,
		isDLC: false,
		spriteDLCTitle: s_elGancho_title,
		songName: "Nothing Inside You",
		albumName: "SPYYN OST",
		artistName: "ESE UVE",
		killsName: "bossTribalKills",
		deathsName: "bossTribalDeaths",
		kills: 0,
		deaths: 0
	})

	global.totalNumberOfVinyls +=1;
}
