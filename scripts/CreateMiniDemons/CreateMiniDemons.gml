// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function CreateMiniDemons()
{
	if (contToNextDemons <= 0) && (creatingMiniDemons = true) 
	{
		creatingMiniDemons = false;
		alertMiniDemons = false;
	}
	
	if (contToNextDemons >= 0) && (instance_number(o_enemyMiniDemon) <= 10)
	{
		contToNextDemons--;
			
		if (contToNextDemons > 0 && contToNextDemons <= 180)
		{
			alertMiniDemons = true;
		}
	}
	
	if (creatingMiniDemons = false) 
	{
		contMiniDemons--;
		
		for (var i=0; i<=miniDemonsTotal; i++)
		{
			if (contMiniDemons <= 0) 
			{
				miniDemonToCreate = instance_create_layer(
				x+lengthdir_x(distDemon + 10*i, angleDemon),y+lengthdir_y(distDemon + 10*i, angleDemon),
				"Enemies", o_enemyMiniDemon);
				contMiniDemons = contMiniDemonsInitial;
				miniDemonsCreated +=1;
				
			}
		}
		
		if (miniDemonsCreated >= miniDemonsTotal)
		{
			dangerImg = 0;
			angleDemon = irandom(360);
			distPrev = distDemon;
			sDist = random_range(65,80);
			mDist = random_range(90,110);
			lDist = random_range(140,160);
			distDemon = choose(sDist,mDist,lDist);
			
			if (distDemon = distPrev)
			{
				distDemon = choose(sDist,mDist,lDist);
			}
			miniDemonsCreated = 0;
			creatingMiniDemons = true;
			contMiniDemons = contMiniDemonsInitial;
			miniDemonsTotal = random_range(miniDemonsTotalInitial-1, miniDemonsTotalInitial+5) ;
			contToNextDemons = random_range(contToNextDemons+200, contToNextDemons+400)
		}
	}
}