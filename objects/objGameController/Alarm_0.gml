/// @description Going with the beat
// You can write your code in this editor

switch(global.beat) 
{
	case (1):	
		instance_create(0,0,evIntro);
		scrMakeCircle(680,280,0,36,5,objRedCandy);
		break;
	case (64):
		instance_create(0,0,evBounce);


}

alarm[0] = room_speed / 4.5;