///camera_resize_surface()
/*
    Resizing application surface to device display size
*/
//Resizing application surface
surface_resize(application_surface,global.dvc_width,global.dvc_height); //Resizing surface
//Resize views
camera_resize_view(0); //Resize view 0 to device reso
camera_resize_view(1); //Resize view 1 to device reso