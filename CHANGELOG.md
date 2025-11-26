# 1.6.0 - Atualização de Interface e Física

### Adicionado (Added)

- Sistema de Overlay (Pop-up) para configurações (permite ajuste sem trocar de room).
- Sistema global de áudio (Mute para Música e SFX).
- Efeitos sonoros (SFX) ao coletar itens.
- Opção "Reiniciar Jogo" no Menu de Pause.
- **Novos Backgrounds:** Animado na Tela Inicial e Provisório na Fase 1.
- **Física:** Implementada colisão sólida com Tilemaps (impedindo que o personagem atravesse o cenário).

#### Melhorado (Improved)

- **HUD:** Contador de itens agora exibe formato "coletado/total".

- **UX:** Texto de objetivos agora possui destaque em amarelo.

- **Créditos:** Reestruturados com rolagem automática (scroll), lista de assets e agradecimento final.

#### **Corrigido (Fixed)**

- **Crítico:** Corrigida a lógica de limites da sala (o personagem não ultrapassa mais a câmera/limites).

- **Lógica:** removido o comportamento de move_wrap (o personagem não teleporta para o começo da sala ao sair da tela).

- **Visual:** Resolvido conflito de profundidade (layers) ao retornar do menu de configurações.
