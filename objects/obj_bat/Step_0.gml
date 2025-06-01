event_inherited()

if (global.pause) {
    image_speed = 0
    exit;
} else {
    image_speed = 0.8;
}

event_inherited()

age++
x =(cos(age / 30) + 1)  * (room_width / 2 - 4)