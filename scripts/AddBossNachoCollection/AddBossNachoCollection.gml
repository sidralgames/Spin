// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBossNachoCollection()
{
	ds_map_add(global.collectionList, global.totalNumberOfVinyls,
	{ 
		alias: "bossNacho",
		song: snd_song1,
		songBSide: snd_obsession,
		offsetSong: 65,
		offsetSongBSide: 0,
		keyKilledBy :"killedByNacho",
		sprite: s_bossNacho,
		haveBSide: true,
		spriteMain: s_bossNacho,
		spriteBSide: s_bossNacho_B,
		spriteVinyl: s_discoVinilo,
		hpMax: 5,//85
		vinylAlpha : 1,
		vinylAlphaBSide: 0.85,
		vinylColor : global.pink,
		vinylColorBSide : global.blue,
		number: 0,
		defeatedInRun: 0,
		collection: global.bossNachoCollection,
		unlocked: 0,
		step:  BossNachoStep,
		tintCol: global.lightBlueArray,
		noiseTintCol: global.lightPinkArray,
		tintColBSide: global.BlueArray,
		noiseTintColBSide: global.salmonArray,
		wallSprite: s_wallNacho,
		wallSpriteBSide: s_wallGirl_B,
		isDLC: false,
		spriteDLCTitle: s_elGancho_title,
		songName: "Not-Really-Here",
		songNameBSide: "Really-Here (b-side)",
		albumName: "SPYYN OST",
		artistName: "ESE UVE",
		killsName: "bossNachoKills",
		deathsName: "bossNachoDeaths",
		killsNameBSide: "bossNachoKillsBSide",
		deathsNameBSide: "bossNachoDeathsBSide",
		kills: 0,
		deaths: 0,
		killsBSide: 0,
		deathsBSide: 0,
		minKillsBSide: 5,
		
	})

	global.totalNumberOfVinyls +=1;
}
