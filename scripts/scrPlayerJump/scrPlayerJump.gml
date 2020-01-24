if (place_meeting(x,y+(global.grav),objBlock))
{
    vspeed = -jump;
    djump = 1;
    audio_play_sound(sndJump,0,false);
}
else if (djump == 1 || global.infJump)
{
    vspeed = -jump2;
    sprite_index = sprPlayerJump;
    audio_play_sound(sndDJump,0,false);
	djump = 0;
}
