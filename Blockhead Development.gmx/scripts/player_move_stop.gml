#define player_move_stop
/// player_move_stop(direction);

// start stopping
switch (argument0) {
    case "horiz":
        // Horizontal
        if (move_speed_horiz > 0) {
            move_speed_horiz -= 0.1;
        } else if (move_speed_horiz < 0) {
            move_speed_horiz += 0.1;
        }
    break;
    case "vert":
        // Vertical
        if (move_speed_vert > 0) {
            move_speed_vert -= 0.1;
        } else if (move_speed_vert < 0) {
            move_speed_vert += 0.1;
        }
    break;
}

#define player_move_horiz
/// player_move_horiz(direction,collision,speed);
// direction = string("left" or "right")
// collision = object to have collision with
// speed = maximum speed

switch (argument0) {
    case "right":
        if (!instance_place(x+1,y,argument1)) {
            if (move_speed_horiz < argument2) {
                move_speed_horiz += 0.1;
            } else if (move_speed_horiz > argument2) {
                move_speed_horiz -= 0.1;
            }
        } else {
            move_speed_horiz = 0;
        }
    break;
    case "left":
        if (!instance_place(x-1,y,argument1)) {
            if (move_speed_horiz > -argument2) {
                move_speed_horiz -= 0.1;
            } else if (move_speed_horiz < -argument2) {
                move_speed_horiz += 0.1;
            }
        } else {
            move_speed_horiz = 0;
        }
    break;
    default:
        if (!is_string(argument0)) {
            show_error("Argument0 is not a string!", true);
        } else {
            show_error("You entered the wrong keyword!", true);
        }
    break;
}

#define player_move_vert
/// player_move_vert(direction,collision,speed);

switch (argument0) {
    case "down":
        if (!instance_place(x,y+1,argument1)) {
            if (move_speed_vert < argument2) {
                move_speed_vert += 0.1;
            } else if (move_speed_vert > argument2) {
                move_speed_vert -= 0.1;
            }
        } else {
            move_speed_vert = 0;
        }
    break;
    case "up":
        if (!instance_place(x,y-1,argument1)) {
            if (move_speed_vert > -argument2) {
                move_speed_vert -= 0.1;
            } else if (move_speed_vert < -argument2) {
                move_speed_vert += 0.1;
            }
        } else {
            move_speed_vert = 0;
        }
    break;
    default:
        if (!is_string(argument0)) {
            show_error("Argument0 is not a string!", true);
        } else {
            show_error("You entered the wrong keyword!", true);
        }
    break;
}

#define player_move_check
/// player_move_check(direction);

switch (argument0) {
    case "horiz":
        if (move_speed_horiz > 0 || move_speed_horiz < 0) {
            return 1;
        } else {
            return 0;
        }
    break;
    case "vert":
        if (move_speed_vert > 0 || move_speed_vert < 0) {
            return 1;
        } else {
            return 0;
        }
    break;
    default:
        if (!is_string(argument0)) {
            show_error("Argument0 is not a string!", true);
        } else {
            show_error("You entered the wrong keyword!", true);
        }
    break;
}
