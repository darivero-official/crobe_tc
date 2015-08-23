///crobe_sound_load()
/*
    Import music from resources
*/
//Background music
ex_audio_load("sndBack_menu_main_earthspace",sndBack_menu_main_earthspace); //Load menu background music titled "Earth Space"
//Effects music
ex_audio_load("sndThunder",sndThunder); //Load thunder sfx
ex_audio_load("sndThunder2",sndThunder2); //Load thunder 2 sfx
ex_audio_load("sndThunder3",sndThunder3); //Load thunder 3 sfx
ex_audio_load("sndThunder4",sndThunder4); //Load thunder 4 sfx
//Ticks
ex_audio_load("sndChoose",sndChoose); //Load choose sfx
ex_audio_load("sndChoose_release",sndChoose_release); //Load choose release sfx
ex_audio_load("sndTick_close",sndTick_close); //Load tick close sfx
ex_audio_load("sndTick_close_long",sndTick_close_long); //Load tick close long sfx
ex_audio_load("sndTick_tiny",sndTick_tiny); //Load tick tiny sfx
//Set classes
ex_audio_class_create("back"); //Create class for backsounds
ex_audio_class_add_sound("sndBack_menu_main_earthspace","back"); //Add menu backsound to class backsound
//SFXs
ex_audio_class_create("sfx"); //Create class for sound effects
ex_audio_class_add_sound("sndThunder","sfx"); //Add thunder sfx to class sfx
ex_audio_class_add_sound("sndThunder2","sfx"); //Add thunder 2 sfx to class sfx
ex_audio_class_add_sound("sndThunder3","sfx"); //Add thunder 3 sfx to class sfx
ex_audio_class_add_sound("sndThunder4","sfx"); //Add thunder 4 sfx to class sfx
ex_audio_class_add_sound("sndChoose","sfx"); //Add choose sfx to class sfx
ex_audio_class_add_sound("sndChoose_release","sfx"); //Add choose release sfx to class sfx
ex_audio_class_add_sound("sndTick_close","sfx"); //Add tick close sfx to class sfx
ex_audio_class_add_sound("sndTick_close_long","sfx"); //Add tick close sfx to class sfx
ex_audio_class_add_sound("sndTick_tiny","sfx"); //Add tick tiny sfx to class sfx
//LOAD ALL MUSIC FROM RESOURCE TREE
