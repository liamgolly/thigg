//check left/right button presses
var L = (scrButtonCheck(global.leftButton) || (global.directionalTapFix && scrButtonCheckPressed(global.leftButton)));
var R = (scrButtonCheck(global.rightButton) || (global.directionalTapFix && scrButtonCheckPressed(global.rightButton)));

var h = 0;

if (!frozen)    //don't move if frozen
{
    if (R)
        h = 1;
    else if (L)
        h = -1;
}




if (h != 0)  //player is moving
{
	xScale = h;
	hspeed = maxSpeed * h;
	sprite_index = sprPlayerRunning;
    image_speed = 0.5;
   
}
else    //player is not moving
{
	hspeed = 0;
    sprite_index = sprPlayerIdle;
    image_speed = 0.2;
}



if (abs(vspeed) > maxVspeed) {vspeed = sign(vspeed)*maxVspeed;} //check if moving vertically faster than max speed

if (!frozen)    //check if frozen before doing anything
{
    if (scrButtonCheckPressed(global.shootButton))
        scrPlayerShoot();
    if (scrButtonCheckPressed(global.jumpButton))
        scrPlayerJump();
    if (scrButtonCheckReleased(global.jumpButton))
        scrPlayerVJump();
    if (scrButtonCheckPressed(global.suicideButton))
        scrKillPlayer();
}

if (global.adAlign && place_meeting(x,y+(global.grav),objBlock) && !frozen)  // A/D align
{
    if (scrButtonCheckPressed(global.alignLeftButton)) {hspeed -= 1;}
    if (scrButtonCheckPressed(global.alignRightButton)) {hspeed += 1;}
}


//walljumps



//slopes


    
    //set xprevious/yprevious coordinates for future solid collisions
    xprevious = x;
    yprevious = y;


