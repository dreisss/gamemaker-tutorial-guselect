window_set_size(1280, 720)

// ----------------------------------------------------------- UTILITIES

function keyboard_check_any(_keys_array) {
    for (_i = 0; _i < array_length(_keys_array); _i++) {
        if (keyboard_check(_keys_array[_i])) { return true }
    }
    return false;
}

function keyboard_check_all(_keys_array) {
    for (_i = 0; _i < array_length(_keys_array); _i++) {
        if (!keyboard_check(_keys_array[_i])) { return false }
    }
    return true;
}

// ----------------------------------------------------------- VECTORS

function vec_length(_vec) {
	return sqrt(power(_vec.x, 2) + power(_vec.y, 2))
}

function vec_normalized(_vec) {
	_modulus = vec_length(_vec)
	if _modulus != 0 { return { x: _vec.x / _modulus, y: _vec.y / _modulus } }
	return { x: 0, y: 0 }
}

function vec_multiply(_scalar, _vec) {
	return { x: _scalar * _vec.x, y: _scalar * _vec.y }
}

function vec_add(_vec1, _vec2) {
	return { x: _vec1.x + _vec2.x, y: _vec1.y + _vec2.y}
}

// ------------------------------------------------------------

max_speed = 8
acceleration = 1
deacceleration = 1

collected_flowers = 0