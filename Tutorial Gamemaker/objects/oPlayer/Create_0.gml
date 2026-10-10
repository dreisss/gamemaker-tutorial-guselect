window_set_size(1280, 720)

velocity = 1
flower = 0

function keyboard_check_any(_keys_array) {
    _len = array_length(_keys_array);
    for (_i = 0; _i < _len; _i++) {
        if (keyboard_check(_keys_array[_i])) { return true }
    }
    return false;
}

function keyboard_check_all(_keys_array) {
    _len = array_length(_keys_array);
    for (_i = 0; _i < _len; _i++) {
        if (!keyboard_check(_keys_array[_i])) { return false }
    }
    return true;
}

W = ord("W")
S = ord("S")
A = ord("A")
D = ord("D")
