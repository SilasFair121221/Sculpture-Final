vx = camera_get_view_x(view_camera[0])
vy = camera_get_view_y(view_camera[0])
vw = camera_get_view_width(view_camera[0])
draw_set_font(fnt_gui)
draw_set_halign(fa_left)
draw_text(vx+1, vy, "Level "+ string(global.score+1))
draw_set_halign(fa_right)
draw_text(vx+vw-1, vy, "Lives: "+ string(global.lives))
draw_set_halign(fa_left)