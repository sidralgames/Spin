// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function CheckFavTrack()
{
	if (achievementCheck.alias = "FavTrack")
	{
		for (var j=0; j<global.totalNumberOfVinyls; j++)
		{
			favTrack = ds_map_find_value(global.collectionList, j);
			
			if (favTrack.haveBSide)
			{
				if (favTrack.kills > 10) || (favTrack.killsBSide > 10)
				{
					_thisKills = max(favTrack.kills, favTrack.killsBSide)
					if (_thisKills > _maxKills)
					{
						_maxKills = _thisKills
					
						if (favTrack.kills > favTrack.killsBSide)
						{
							global.favTrackName = string(favTrack.songName) + " - " + string(favTrack.artistName)
						}
						else
						{
							global.favTrackName = string(favTrack.songNameBSide) + " - " + string(favTrack.artistName)
						}
					}
				
					favTrackOk = true;
				}
			}
			else
			{
				if (favTrack.kills > 10)
				{
					_thisKills =favTrack.kills;
					
					if (_thisKills > _maxKills)
					{
						_maxKills = _thisKills
					
						if (favTrack.kills > favTrack.killsBSide)
						{
							global.favTrackName = string(favTrack.songName) + " - " + string(favTrack.artistName)
						}
						else
						{
							global.favTrackName = string(favTrack.songNameBSide) + " - " + string(favTrack.artistName)
						}
					}
				
					favTrackOk = true;
				}
			}
		}
		
		if (favTrackOk = true)
		{
			achievementCheck.unlocked = 1;
		}
	}
}