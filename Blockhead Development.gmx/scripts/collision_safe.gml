/// collision_safe(object);
var obj;
obj = argument0;
if (instance_place(x,y,obj)) {
    // Horizontal
    if (!instance_place(x+32,y,obj)) {
        x += 0.1;
    }
    if (!instance_place(x-32,y,obj)) {
        x -= 0.1;
    }
    // Vertical
    if (!instance_place(x,y+32,obj)) {
        y += 0.1;
    }
    if (!instance_place(x,y-32,obj)) {
        y -= 0.1;
    }
}
