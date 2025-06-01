// Initialise the movement by pressing using the left mouse button
if (mouse_check_button_pressed(mb_left)) {
	drag_speed = 0;
    drag = mouse_y;
}

// Dragging
if (mouse_check_button(mb_left))
{
	drag_speed = (drag - mouse_y) * speed_modifier;
	camera_set_view_pos(view_camera[0], 0, camera_get_view_y(view_camera[0]) + drag_speed);
}
		
// Drag slow down effect
if (abs(drag_speed) > 0)
{
	camera_set_view_pos(view_camera[0], 0, camera_get_view_y(view_camera[0]) + drag_speed);
	if (camera_get_view_y(view_camera[0]) <= 0 || camera_get_view_y(view_camera[0]) >= (room_height-camera_get_view_height(view_camera[0]))) then drag_speed = 0;
	drag_speed += (-drag_speed*smooth);
}
		
// Keep the screen within the room
camera_set_view_pos(view_camera[0], 0, round(max(0, min(camera_get_view_y(view_camera[0]), room_height - camera_get_view_height(view_camera[0])))));