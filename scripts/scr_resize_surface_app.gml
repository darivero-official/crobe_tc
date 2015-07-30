///scr_resize_surface_app()
/*
    Created by Damar
    Used for resizing application surface
*/
//Resizing application surface
surface_resize(application_surface,global.dvc_width,global.dvc_height); //Resizing surface
//Resize views
scr_resize_view(0); //Resize view 0 to device reso
scr_resize_view(1); //Resize view 1 to device reso