/// vfx_fadeout(destroy);

if (image_alpha > 0) {
    image_alpha -= 0.1;
} else {
    if (argument0) {
        instance_destroy();
    }
}
