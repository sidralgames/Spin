// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBossMixtapeCollection()
{
	ds_map_add(global.collectionList, global.totalNumberOfVinyls,
	{ 
		alias: "bossMixtape",
		song: snd_mixtape,
		songBSide: snd_obsession,
		offsetSong: 80,
		offsetSongBSide: 0,
		keyKilledBy :"killedByMixtape",
		sprite: s_bossMixtape,
		haveBSide: true,
		spriteMain: s_bossMixtape,
		spriteBSide: s_bossMixtape_B,
		spriteVinyl: s_discoVinilo,
		hpMax: 350,
		vinylAlpha : 0.9,
		vinylAlphaBSide: 0.85,
		vinylColor : global.lightPink,
		vinylColorBSide: global.orange,
		number: global.totalNumberOfVinyls,
		defeatedInRun: 0,
		collection: global.bossMixtapeCollection,
		unlocked: 0,
		step: BossDefaultStep,
		tintCol: global.yellowGirlArray,
		noiseTintCol: global.pinkArray,
		tintColBSide: global.darkPaletteArray,
		noiseTintColBSide: global.gbc2Array,
		wallSprite: s_wallMixtape,
		wallSpriteBSide: s_wallMixtape_B,
		isDLC: false,
		spriteDLCTitle: s_elGancho_title,
		songName: "Aries - Sayonara (SV Remix)",
		songNameBSide: "Really-Here (b-side)",
		albumName: "SPYYN OST",
		artistName: "ESE UVE",
		killsName: "bossMixtapeKills",
		deathsName: "bossMixtapeDeaths",
		killsNameBSide: "bossMixtapeKillsBSide",
		deathsNameBSide: "bossMixtapeDeathsBSide",
		kills: 0,
		deaths: 0,
		killsBSide: 0,
		deathsBSide: 0,
		minKillsBSide: 5,
	})

	global.totalNumberOfVinyls +=1;
}
