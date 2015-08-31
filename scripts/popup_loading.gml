///popup_loading(loading_txt)
/*
    Show loading popup
*/
if argument0 = "v_destroy" { //Check if loading text is v_destroy
    if instance_exists(objLoading) = true { //Check if instance is exists
        objLoading.v_enabled = false; //Disable loading popup (destroy)
    }
}
else {
    global.v_loading_txt = argument0;
    if instance_exists(objLoading) = false { //Check if instance is not exists
        instance_create(global.dvc_width/2,global.dvc_height/2,objLoading);
    }
}