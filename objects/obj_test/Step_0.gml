// 基础 WASD 移动：速度 4 像素/帧，对角方向归一化
var _h = keyboard_check(ord("D")) - keyboard_check(ord("A")); // 右 - 左
var _v = keyboard_check(ord("S")) - keyboard_check(ord("W")); // 下 - 上

if (_h != 0 || _v != 0) {
    // 对角移动时归一化，避免斜向速度快于正交方向
    var _len = point_distance(0, 0, _h, _v);
    x += (_h / _len) * 4;
    y += (_v / _len) * 4;

    // 边界限制：精灵原点在中心，留出半个精灵宽高，避免贴边被裁切
    x = clamp(x, sprite_width * 0.5, room_width - sprite_width * 0.5);
    y = clamp(y, sprite_height * 0.5, room_height - sprite_height * 0.5);
}
