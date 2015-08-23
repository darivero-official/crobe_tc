///camera_resize_view(view_index)
/*
    Resizing view to device display size
*/
//Check device reso
if global.dvc_width < 960 && global.dvc_height < 540 {
    view_wview[argument0] = global.dvc_width*2; //Setting view argument0 width to device width var * 2
    view_hview[argument0] = global.dvc_height*2; //Setting view argument0 height to device height var * 2
}
else {
    view_wview[argument0] = global.dvc_width; //Setting view argument0 width to device width var
    view_hview[argument0] = global.dvc_height; //Setting view argument0 height to device height var
}
view_xport[argument0] = 0; //Setting view argument0 xport
view_yport[argument0] = 0; //Setting view argument0 yport
view_wport[argument0] = global.dvc_width; //Setting view argument0 width port to device width var
view_hport[argument0] = global.dvc_height; //Setting view argument0 height port to device height var
