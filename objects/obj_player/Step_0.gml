#region Movimentção
var moving = false;
var vertical_moving = false; // Controla se está se movendo verticalmente

// Movimento para cima
if (keyboard_check(ord("W"))) {
    y -= 4;
    sprite_index = spr_and_cos; // Andando de costas
    moving = true;
    vertical_moving = true;
}

// Movimento para baixo
if (keyboard_check(ord("S"))) {
    y += 4;
    sprite_index = spr_and; // Andando de frente
    moving = true;
    vertical_moving = true;
}

// Movimento para a esquerda
if (keyboard_check(ord("A"))) {
    x -= 4;
    if (!vertical_moving) {
        sprite_index = spr_and; // Usar sprite de frente para andar lateral
    }
    image_xscale = -1; // Virar sprite para esquerda
    moving = true;
}

// Movimento para a direita
if (keyboard_check(ord("D"))) {
    x += 4;
    if (!vertical_moving) {
        sprite_index = spr_and; // Usar sprite de frente para andar lateral
    }
    image_xscale = 1; // Virar sprite para direita
    moving = true;
}

// Se não está se movendo, definir sprites parados
if (!moving) {
    if (sprite_index == spr_and) {
        sprite_index = spr_player; // Parado de frente
    } else if (sprite_index == spr_and_cos) {
        sprite_index = spr_cos; // Parado de costas
    }
}

// Controlar a velocidade da animação
image_speed = moving ? 0.2 : 0;
