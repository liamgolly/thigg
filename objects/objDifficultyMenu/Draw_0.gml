for(var i = 0; i < 3; i += 1)
{
    draw_set_color(c_black)
    draw_set_halign(fa_left)
    draw_set_font(fDefault30);
    
    draw_text(x+i*xSeperation+2,y,string_hash_to_newline(str[i]));
    
    draw_set_font(fDefault12);
    
    draw_text(x+i*xSeperation+10,y+70,string_hash_to_newline("Deaths: "+string(death[i])));
    draw_text(x+i*xSeperation+10,y+90,string_hash_to_newline("Time: "+timeStr[i]));
    
    draw_set_halign(fa_center);
    
    if (difSelect && i == select)
    {
        if (!warnText)
        {
            if(select2==-1) draw_text(x + i*xSeperation + 65, y+49,string_hash_to_newline("< Load game >"));
            else if(select2==0) draw_text(x + i*xSeperation + 65, y+49,string_hash_to_newline("< Medium >"));
            else if(select2==1) draw_text(x + i*xSeperation + 65, y+49,string_hash_to_newline("< Hard >"));
            else if(select2==2) draw_text(x + i*xSeperation + 65, y+49,string_hash_to_newline("< Very Hard >"));
            else if(select2==3) draw_text(x + i*xSeperation + 65, y+49,string_hash_to_newline("< Impossible >"));
        }
        else
        {
            draw_text(x+i*xSeperation+63,y-100,string_hash_to_newline("Are you sure#you want to#overwrite this save?"))
            if(warnSelect) draw_text(x + i*xSeperation + 65, y+49,string_hash_to_newline("< Yes >"));
            else draw_text(x + i*xSeperation + 65, y+49,string_hash_to_newline("< No >"));
        }
    }
    
    if (exists[i])
    {        
        if ((!difSelect) || (difSelect && i != select))
        {
            if(difficulty[i]==0){draw_text(x+i*xSeperation+65,y+49,string_hash_to_newline("Medium"))}
            else if(difficulty[i]==1){draw_text(x+i*xSeperation+65,y+49,string_hash_to_newline("Hard"))}
            else if(difficulty[i]==2){draw_text(x+i*xSeperation+65,y+49,string_hash_to_newline("Very Hard"))}
            else if(difficulty[i]==3){draw_text(x+i*xSeperation+65,y+49,string_hash_to_newline("Impossible"))}
        }
        
        draw_set_font(fDefault24);
        
        if(clear[i]){draw_text(x+i*xSeperation+63,y+215,string_hash_to_newline("Clear!!"))}
        
    }
    else
    {
        if ((!difSelect) || (difSelect && i != select))
        {
            draw_text(x+i*xSeperation+65,y+49,string_hash_to_newline("No Data"));
        }
    }
    
    if (i == select)
    {
        
        draw_sprite(sprPlayerIdle,playerIndex,x+i*xSeperation+65,y+310);

    }
}

scrDrawButtonInfo(true);

