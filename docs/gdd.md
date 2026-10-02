# Game Design Document

## 1. Visão geral

### Nome provisório
Cursed Islands: Bournes

### Pitch
Explique o jogo em 1 ou 2 frases.

> Jogo beat-up sobre derrotar maldições em ilhas diversas

### Gênero
- Beat-up

### Plataforma
- PC

### Tecnologia
- Lua
- LÖVE2D

---

## 2. Conceito principal

### Fantasia do jogador
Quem ou o que o jogador controla?
Controla Victor Bournes um personagem que deve lutar contra maldições com habilidades especiais.

O que ele deve sentir que está fazendo?
Sentir-se um personagem poderoso com dever de defender as pessoas de maldições.

### Diferencial
O que faz esse jogo ter alguma identidade própria?
A identidade do jogo está relacionada a uma campanha de rpg, aqueles que se interessarem por ela vão se sentir como personagens do jogo.

### Pilares de design
Defina de 2 a 4 princípios que devem orientar o projeto.

- controles simples;
- feedback claro;
- variedade de monstros;
- cenários que se esticam.

---

## 3. Core loop

Descreva o ciclo principal do jogo.

Exemplo:

1. entrar na área;
2. enfrentar inimigos;
3. derrota boss;
4. desbloquea habilidades ou melhora atributos;
5. enfrentar desafios mais difíceis;
6. repetir.

### Loop resumido

> O jogador faz enfrenta os monstros para conseguir ficar mais forte, permitindo derrotar monstros mais fortes.

---

## 4. Objetivo

### Objetivo principal
O que o jogador está tentando alcançar?
Mitigar o número de monstros

### Condição de vitória
- Derrotar monstros enfrentando-os até que eles desapareçam
- Resistir ondas até chegarem reforços

### Condição de derrota
- Vida chega a zero
- Inimigos fogem

---

## 5. Jogador

### Movimentação
Como o personagem se move?
Com teclado wasd

### Controles

| Ação | Controle |
|---|---|
| Mover | WASD |
| Ação principal | j |
| Ação secundária | k |
| Pausar | Esc |

### Atributos
- Vida
- Velocidade
- Dano
- Energia

---

## 6. Mecânicas

### Mecânica principal
Poderzin de atrair objetos nos inimigos e gerar perfuração, a ult.

### Defesa
Como o jogador evita ou reduz dano?
Aperta a tecla de movimento oposta a direção do inimigo para evitar ou reduzir dano.

### Feedback
Como o jogador percebe:

- que atacou: animação de ataque;
- que acertou: animação de acerto;
- que tomou dano: animação de dano;
- que derrotou algo: inimigo some.

---

## 7. Progressão

### Durante a partida
Como o jogador fica mais forte?

- upgrade de atributos
- skins

---

## 8. Ambientação

### Tom
- [ ] Leve
- [x] Sombrio
- [ ] Cômico
- [ ] Absurdo
- [ ] Misterioso
- [ ] Outro

---

## 9. Interface

### HUD
Elementos exibidos durante o jogo:

- vida;
- pontuação;
- recursos;
- cooldowns;
- outros.

### Menus
- menu principal;
- pause;
- game over;
- opções.
