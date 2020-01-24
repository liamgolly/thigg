/// @description gets which song is supposed to be playing for the current room and plays it

var roomSong;

switch (room)   {                    //determines which song to play/{
    case rTitle:                    //add rooms here, if you have several rooms that play the same song they can be put together
    case rMenu:
    case rOptions:
    case rDifficultySelect:  	
        roomSong = -1;
        break; 
	case rGameRoom:
		roomSong = gameSong;
		global.start = true;
		break;

}

if (roomSong != -2)
    scrPlayMusic(roomSong,false); //play the song for the current room
