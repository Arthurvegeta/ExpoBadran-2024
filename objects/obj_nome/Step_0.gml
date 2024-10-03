// Capturar as teclas para digitar o nome
if (keyboard_string != "") {
    nome_jogador = keyboard_string; // Atualiza conforme o jogador digita
}

// Confirmar com Enter
if (keyboard_check_pressed(vk_enter)) {
    global.nome = nome_jogador; // Salva o nome globalmente
    room_goto(rm_jogo); // Vai para o jogo principal
}
