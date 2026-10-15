// ----------------------------------------------------------- KEYBOARD INPUT

// Forma otimizada de verificar a diração do input, além de determinar quando teclas de mesma direção
// são clicadas, anulando elas e tirando verificação posterior que seria necessára
input_y = keyboard_check_any([vk_down, ord("S")]) - keyboard_check_any([vk_up, ord("W")])
input_x = keyboard_check_any([vk_right, ord("D")]) - keyboard_check_any([vk_left, ord("A")])
input = { x: input_x, y: input_y }
velocity = { x: 0, y: 0 }

// ----------------------------------------------------------- MOVEMENT

if (input.x != 0 || input.y != 0) {
    input = vec_normalized(input); // remover 41% mais rápido na diagonal
	
    velocity = vec_add(velocity, vec_multiply(acceleration, input));
} else { // caso nenhuma tecla esteja sendo clicada ele desacelera	
    _current_speed = vec_length(velocity)
	
	if (_current_speed > 0) {
        var reduced_speed = max(0, _current_speed - deacceleration); // reduz a velocidade gradualmente mas não deixa passar de zero
		
        velocity = vec_multiply(reduced_speed, vec_normalize(velocity));
    }
}

if (vec_length(velocity) > max_speed) { // limita a velocidade do jogador
    velocity = vec_multiply(max_speed, vec_normalized(velocity));
}

x += velocity.x
y += velocity.y

if vec_length(velocity) > 0 {
	sprite_index = sPlayerWalking
} else {	
	sprite_index = sPlayer
}

if input.x < 0 {
	image_xscale = -1
} else if input.x > 0 {
	image_xscale = 1
}

if collected_flowers = 2 { room_goto_next() }
