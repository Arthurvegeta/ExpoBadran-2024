// Capturar a última tecla digitada
var tecla = keyboard_lastchar;

// Verificar se o nome está dentro do limite e evitar múltiplas entradas rápidas
if (string_length(global.nome_jogador) < 10) {
    // Checar se uma letra foi pressionada e adicionar ao nome
    if (keyboard_check_pressed(vk_anykey) && tecla != vk_space && tecla != vk_enter) {
        global.nome_jogador += tecla;
    }
}

// Apagar o último caractere se apertar backspace
if (keyboard_check_pressed(vk_backspace) && string_length(global.nome_jogador) > 0) {
    global.nome_jogador = string_delete(global.nome_jogador, string_length(global.nome_jogador), 1);
}

// Trocar seleção de personagem com teclas de seta
if (keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"))) {
    personagem_selecionado = 0; // Menino
}
if (keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"))) {
    personagem_selecionado = 1; // Menina
}

// Iniciar o jogo se o nome estiver preenchido e Enter for pressionado
if (keyboard_check_pressed(vk_enter) && string_length(global.nome_jogador) > 0) {
    room_goto(rm_escola); // Trocar para a room do jogo
}
