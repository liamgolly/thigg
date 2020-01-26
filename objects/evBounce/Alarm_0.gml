/// @description Do Stuff
// You can write your code in this editor
if (bouncePhase == 1)	
{

	scrMakeCircle(400,240,0,18,20,objBlueCandy);
	show_debug_message("1:")
	show_debug_message(global.beat);
}

if (bouncePhase > 2 && bouncePhase < 9) 
{
	for (var i = 0; i < instance_number(objRedCandy); i+= 1)
	{
		instance_create( instance_find(objRedCandy,i).x , instance_find(objRedCandy,i).y, objGreyCandy);
		instance_destroy( instance_find(objRedCandy,i));	
	}
	show_debug_message("2:");
	show_debug_message(global.beat);

}

if (bouncePhase >= 15 && bouncePhase < 20) 
{
	show_debug_message("3:");
	show_debug_message(global.beat);
	for (var i = 0; i < littleNote/16; i+= 1)
	{

			instance_create( instance_find(objGreyCandy,i).x , instance_find(objGreyCandy,i).y, objRedCandy);
			instance_destroy( instance_find(objGreyCandy,i));

		
		if (instance_number(objRedCandy) >= littleNote/16)
		{

		}
	}
}


bouncePhase += 1;
alarm[0] = room_speed/45;