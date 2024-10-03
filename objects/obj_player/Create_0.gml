#region
// Velocidade do jogador
vel_andando = 4;

// Sprites de animação (defina conforme sua estrutura)
if (global.personagem_selecionado == 0){
	//Sprites Masculino
	spr_cos = sPlayer0Cos;
	spr_player = sPlayer0;
	spr_and = sPlayer0And;
	spr_and_cos = sPlayer0AndCos;
} else {
	//Sprites Feminino
	spr_cos = sPlayer1Cos;
	spr_player = sPlayer1;
	spr_and = sPlayer1And;
	spr_and_cos = sPlayer1AndCos;
}

// Definir sprite inicial
sprite_index = spr_player;

// Estado inicial
image_speed = 0;
estado = "movimentacao";

// Variáveis para o texto de instrução inicial
mostrar_texto = true;
texto_inicial = "Use WASD para se mover.";
#endregion
#region //Camera
// Tamanho da viewport (tela visível)
view_width = 640;  // Largura da viewport
view_height = 360; // Altura da viewport

// Criar a câmera
camera = camera_create_view(0, 0, view_width, view_height);

// Definir a câmera para a viewport 0 (primeira câmera)
view_camera[0] = camera;

// Travar a câmera na posição inicial do jogador
camera_set_view_pos(camera, x - view_width / 2, y - view_height / 2);
#endregion