///Load your game

if file_exists("squidsave.jwh"){
    ini_open("squidsave.jwh")
    loadedRoom = ini_read_real("Save1","room",rm_tuthouse)
    global.player_x = ini_read_real("Save1","x",320)
    global.player_y = ini_read_real("Save1","y",240)
    global.hp = ini_read_real("Save1","hp",100)
    global.ammo = ini_read_real("Save1","ammo",1000)
    global.missile = ini_read_real("Save1","missile",20)
    global.money = ini_read_real("Save1","money",0)
    global.hasRocket = ini_read_real("Save1","hasRocket", false)
    global.townSaved = ini_read_real("Save1","townSaved",false)
    global.oldasskey = ini_read_real("Save1","oldasskey",false)
    global.seeMayor = ini_read_real("Save1", "seeMayor", false)
    global.shutterOpen = ini_read_real("Save1","shutterOpen",false)
    global.impSpoken = ini_read_real("Save1","impSpoken",false)
    global.shutterOpen2 = ini_read_real("Save1","shutterOpen2",false)
    global.secretRoom = ini_read_real("Save1","secretRoom",false)
    ini_close()
    if !instance_exists(obj_birch){
    instance_create(global.player_x,global.player_y,obj_birch)
    }else{
    obj_birch.x = global.player_x;
    obj_birch.y = global.player_y;
    }
    global.invulnerable = false;
    //tr_set_fade_color(c_blue)
    transition_kind = 21
    room_goto(loadedRoom)
    if instance_exists(obj_menu){
        with obj_menu{
            instance_destroy();
        }
    }
    if room = loadedRoom room_restart();
}else{
    game_restart();
}
