/// @description Do Stuff
if (Count1 > 0) 
{
	if (Count1 > 70) {
		scrMakeCircle(400+Count1*2,Count1*2,-9.5*Count1,10,5,objRedCandy);
	}
	else {
		scrMakeCircle(400+Count1*2,242-Count1*2,-257.5 + 9.5*Count1,10,5,objRedCandy);
	}
	Count1 -= 1;
}
if (Count1 == 0)
{	
	instance_destroy();
}



alarm[0] = room_speed / 9;