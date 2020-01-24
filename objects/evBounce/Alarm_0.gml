/// @description Do Stuff
// You can write your code in this editor
if (bouncePhase == 1 || bouncePhase == 2) 
{
	for (var i = 0; i < instance_number(objRedCandy); i+= 1)
	{
		instance_create( instance_find(objRedCandy,i).x , instance_find(objRedCandy,i).y, objGreyCandy);
		instance_destroy( instance_find(objRedCandy,i));
	}
	if (bouncePhase == 1)
	{
		bouncePhase += 1;
		scrMakeCircle(400,240,0,18,20,objBlueCandy);
	}
	if (instance_number(objRedCandy) == 0)
	bouncePhase += 1;
	
}

alarm[0] = room_speed/45;