// Desenhar o fundo do menu
draw_sprite(spr_fundo, 0, 0, 0); // Desenha o fundo na posição (0,0)

// Exibir texto para o nome
draw_set_color(c_white); // Define a cor do texto como branca
draw_text(100, 50, "Digite seu nome: " + global.nome_jogador);

// Exibir texto de seleção de personagem
draw_text(100, 150, "Escolha seu personagem:");

// Botão de seleção do Menino
if (global.personagem_selecionado == 0) {
    draw_text(100, 200, "Menino [Selecionado]");
} else {
    draw_text(100, 200, "Menino");
}

// Botão de seleção da Menina
if (global.personagem_selecionado == 1) {
    draw_text(200, 200, "Menina [Selecionado]");
} else {
    draw_text(200, 200, "Menina");
}

// Botão de iniciar o jogo
if (string_length(global.nome_jogador) > 0) { // Verifica se o nome foi digitado
    draw_text(150, 300, "Pressione Enter para Iniciar o Jogo");
} else {
    draw_text(150, 300, "Digite o nome para iniciar");
}
