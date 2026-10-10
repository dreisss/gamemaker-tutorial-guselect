if keyboard_check_any([vk_up, W])  {
	y -= velocity
}

if keyboard_check_any([vk_down, S]) {
	y += velocity
}

if keyboard_check_any([vk_left, A]) {
	x -= velocity
	image_xscale = -1
}

if keyboard_check_any([vk_right, D]) {
	x += velocity
	image_xscale = 1
}

if keyboard_check_any([vk_up, vk_down, vk_left, vk_right, W, A, S, D]) {
	sprite_index = sPlayerWalking
	
	if keyboard_check_any([vk_up, W]) && keyboard_check_any([vk_down, S]) {
		sprite_index = sPlayer
		
		if keyboard_check_any([vk_left, vk_right, A, D]) {
			sprite_index = sPlayerWalking	
		}
	}
	
	if keyboard_check_any([vk_left, A]) && keyboard_check_any([vk_right, D]) {
		sprite_index = sPlayer
		
		if keyboard_check_any([vk_up, vk_down, W, S]) {
			sprite_index = sPlayerWalking	
		}
	}
} else {	
	sprite_index = sPlayer
}

if (keyboard_check_any([vk_up, W]) && keyboard_check_any([vk_left, A])) ||
   (keyboard_check_any([vk_up, W]) && keyboard_check_any([vk_right, D])) ||
   (keyboard_check_any([vk_down, S]) && keyboard_check_any([vk_left, A])) ||
   (keyboard_check_any([vk_down, S]) && keyboard_check_any([vk_right, D])) {
	velocity = 0.6
} else {
	velocity = 1
}

if flower = 2 {
	room_goto_next()
}
