// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBossUpgradesCollection()
{
	ds_map_add(global.collectionList, global.totalNumberOfVinyls,
	{ 
		alias: "bossUpgrades",
		song: snd_upgrade,
		offsetSong: 0,
		keyKilledBy :"killedByUpgrades",
		sprite: s_galletaUpgrades,
		bside: s_bossNacho_B,
		spriteVinyl: s_discoVinilo,
		hpMax: 777,
		vinylAlpha : 0.95,
		vinylColor : c_white,
		number: 6,
		defeatedInRun: 0,
		collection: global.bossUpgradesCollection,
		unlocked: -4,
		step: BossGirlStep,
		tintCol: global.brightArray,
		noiseTintCol: global.lightPinkArray,
		wallSprite: s_wallNacho,
		isDLC: false,
		spriteDLCTitle: s_elGancho_title
	})

	global.totalNumberOfVinyls +=1;
}