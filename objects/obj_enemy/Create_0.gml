spd = 0.5*global.enemy_speed*(1+(global.score/100))
clamp(spd, 0.1, 1.1)

relocated = false

//set up CHASE variables
path_update_rate = 30
path = path_add()
path_set_precision(path, 4);// how sharp should turns be?
alarm[10] = path_update_rate
target_x = obj_player.x
target_y = obj_player.y
dto_p = distance_to_object(obj_player)

//set up EXPLORE variables
randomize()
rand_dir = choose(0, 90, 180, 270)
dir_x = lengthdir_x(CELL_HEIGHT, rand_dir)
dir_y = lengthdir_y(CELL_WIDTH, rand_dir)

// create grid
grid = obj_setup_pathfinding.grid
list = ds_priority_create()



//states
state = IDLE
