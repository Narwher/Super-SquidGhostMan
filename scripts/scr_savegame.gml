///Save ur game

if file_exists("squidsave.jwh"){
    file_delete("squidsave.jwh");
}

ini_open("squidsave.jwh");

savedRoom = room;

ini_write_real("Save1","room",savedRoom);
ini_write_real("Save1","x",global.player_x);
ini_write_real("Save1","y",global.player_y);
ini_write_real("Save1","hp",global.hp);
ini_write_real("Save1","ammo",global.ammo);
ini_write_real("Save1","missile",global.missile);
ini_write_real("Save1","money",global.money);
ini_write_real("Save1","hasRocket",global.hasRocket);
ini_write_real("Save1","townSaved",global.townSaved);
ini_write_real("Save1","oldasskey",global.oldasskey);
ini_write_real("Save1", "seeMayor", global.seeMayor);
ini_write_real("Save1", "shutterOpen", global.shutterOpen);
ini_write_real("Save1", "impSpoken", global.impSpoken);
ini_write_real("Save1", "shutterOpen2", global.shutterOpen2);
ini_write_real("Save1", "secretRoom", global.secretRoom);

ini_close();
