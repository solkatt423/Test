/// WASD movement at 4 pixels per frame, including diagonal movement.
var input_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var input_y = keyboard_check(ord("S")) - keyboard_check(ord("W"));
var input_length = sqrt(input_x * input_x + input_y * input_y);
if (input_length > 0) {
    x += input_x / input_length * move_speed;
    y += input_y / input_length * move_speed;
}

// Keep the entire 32 by 32 square inside the room.
x = clamp(x, half_size, room_width - half_size);
y = clamp(y, half_size, room_height - half_size);
