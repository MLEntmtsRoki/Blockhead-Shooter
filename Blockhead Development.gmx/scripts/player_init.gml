#define player_init
/// player_init(health,armor,speed);

// Health
//
player_health_max = argument0;
player_health = player_health_max;
//

// Armor
//
player_armor_max = argument1;
player_armor = player_armor_max;
//

// Speed
//
move_speed = argument2;
move_speed_horiz = 0;
move_speed_vert = 0;
//

#define player_init_gun
/// player_init_gun(ammo,reload,object);

// Ammo
//
gun_ammo_max = argument0;
gun_ammo = gun_ammo_max;
//

// Reload
//
gun_reload_isReloading = 0;
gun_reload_rate = argument1;
//

// Shooting
//
gun_shoot_canShoot = 1;
gun_shoot_delay = 0;
gun_shoot = 0;
//

// Misc
//
gun_len = 16;
//

instance_create(x,y,argument2);
