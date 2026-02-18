# Guia de Comandos - MTA DayZ Epoch

## Índice
1. [Comandos de Jogador](#comandos-de-jogador)
2. [Comandos Administrativos](#comandos-administrativos)
3. [Atalhos de Teclado - Jogadores](#atalhos-de-teclado---jogadores)
4. [Atalhos de Teclado - Administradores](#atalhos-de-teclado---administradores)
5. [Comandos de Console](#comandos-de-console)
6. [Interface Gráfica (GUI)](#interface-gráfica-gui)

---

## Comandos de Jogador

Comandos disponíveis para todos os jogadores conectados ao servidor.

### Comandos Básicos

| Comando | Sintaxe | Descrição |
|---------|---------|-----------|
| `/kill` | `/kill` | Suicida seu personagem (respawn) |
| `/globalchat` | `/globalchat [mensagem]` | Envia mensagem para todos os jogadores |
| `/teamchat` | `/teamchat [mensagem]` | Envia mensagem apenas para membros do seu grupo |

**Exemplos**:
```
/kill
/globalchat Olá a todos!
/teamchat Vamos para a base
```

### Comandos de Chat

| Tecla | Comando | Descrição |
|-------|---------|-----------|
| `U` | Chat Global | Abre chat global (todos veem) |
| `Y` | Chat de Grupo | Abre chat do grupo/time |
| `T` | Chat Local | Chat padrão do MTA |

### Comandos de Ajuda

| Comando | Descrição |
|---------|-----------|
| `/help` | Abre menu de ajuda (se disponível) |
| `F1` | Abre menu de ajuda interativo |

---

## Comandos Administrativos

Comandos exclusivos para membros da staff com permissões administrativas.

### Comandos Gerais de Admin

| Comando | Sintaxe | Permissão | Descrição |
|---------|---------|-----------|-----------|
| `/p` | `/p` | Admin | Abre/fecha o painel administrativo |
| `/adminpanel` | `/adminpanel` | Admin | Abre/fecha o painel administrativo |
| `/acp` | `/acp` | Admin | Abre o painel AC (Anti-Cheat) |
| `/Show_AC_Panel` | `/Show_AC_Panel` | Admin | Abre o painel AC (Anti-Cheat) |

### Comandos de Gerenciamento de Jogadores

| Comando | Sintaxe | Permissão | Descrição |
|---------|---------|-----------|-----------|
| `/kick` | `/kick [jogador] [razão]` | Moderador+ | Expulsa um jogador do servidor |
| `/ban` | `/ban [jogador] [razão]` | Admin | Bane um jogador permanentemente |
| `/mute` | `/mute [jogador] [tempo] [razão]` | Moderador+ | Silencia um jogador por tempo determinado |
| `/unmute` | `/unmute [jogador]` | Moderador+ | Remove silenciamento de um jogador |
| `/freeze` | `/freeze [jogador]` | Admin | Congela/descongela um jogador |
| `/warp` | `/warp [jogador] [destino]` | Admin | Teleporta você ou outro jogador |
| `/warpto` | `/warpto [jogador]` | Admin | Teleporta você até um jogador |
| `/warpplayerto` | `/warpplayerto [jogador1] [jogador2]` | Admin | Teleporta jogador1 até jogador2 |
| `/spectate` | `/spectate [jogador]` | Admin | Especta um jogador (modo observador) |

**Exemplos de Uso**:
```
/kick João123 Flood no chat
/ban Hacker Uso de cheats
/mute Spammer 600 Spam no chat (10 minutos)
/freeze Suspeito
/warpto Carlos
/warpplayerto João Carlos
```

### Comandos de Veículos

| Comando | Sintaxe | Permissão | Descrição |
|---------|---------|-----------|-----------|
| `/spawnvehicle` | `/spawnvehicle [id]` | Admin | Spawna um veículo pelo ID |
| `/fixvehicle` | `/fixvehicle` | Admin | Repara completamente seu veículo atual |
| `/destroyvehicle` | `/destroyvehicle` | Admin | Destrói o veículo que você está dirigindo |
| `/blowvehicle` | `/blowvehicle` | Admin | Explode o veículo que você está dirigindo |
| `/flip` | `/flip` | Admin | Vira o veículo para cima |

**Exemplos**:
```
/spawnvehicle 411 (Spawna um Infernus)
/fixvehicle
/destroyvehicle
```

### Comandos de Clima e Tempo

| Comando | Sintaxe | Permissão | Descrição |
|---------|---------|-----------|-----------|
| `/weather` | `/weather [id]` | Admin | Muda o clima do servidor |
| `/time` | `/time [hora] [minuto]` | Admin | Muda o horário do servidor |

**IDs de Clima Comuns**:
- `1` - Normal/Ensolarado
- `8` - Tempestade de areia
- `9` - Nebuloso
- `12` - Nublado escuro
- `16` - Chuva

**Exemplos**:
```
/weather 1 (Dia ensolarado)
/weather 8 (Tempestade de areia)
/time 12 0 (Meio-dia)
/time 0 0 (Meia-noite)
```

### Comandos de Desenvolvimento/Debug

| Comando | Sintaxe | Permissão | Descrição |
|---------|---------|-----------|-----------|
| `/run` | `/run [código]` | Super Admin | Executa código Lua no servidor |
| `/srun` | `/srun [código]` | Super Admin | Executa código Lua no servidor |
| `/crun` | `/crun [código]` | Super Admin | Executa código Lua no cliente |
| `/restart` | `/restart [resource]` | Admin | Reinicia um resource específico |
| `/refresh` | `/refresh` | Admin | Atualiza lista de resources |

**⚠️ ATENÇÃO**: Comandos de execução de código são extremamente poderosos e perigosos. Use com extrema cautela!

**Exemplos**:
```
/run outputChatBox("Teste")
/restart dayzepoch
/refresh
```

### Comandos de DayZ (Stats e Itens)

| Comando | Descrição | Permissão |
|---------|-----------|-----------|
| `/give [jogador] [item] [quantidade]` | Dá itens para um jogador | Admin |
| `/giveall [item] [quantidade]` | Dá itens para todos os jogadores | Super Admin |
| `/sethumanity [jogador] [valor]` | Define humanidade de um jogador | Admin |
| `/setzombieskilled [jogador] [valor]` | Define zumbis mortos | Admin |
| `/setmurders [jogador] [valor]` | Define assassinatos | Admin |

**Exemplos**:
```
/give João weapon11 1 (Dá M4A1)
/give Maria food1 5 (Dá 5 comidas)
/giveall food1 1 (Dá comida para todos)
/sethumanity João 5000 (Define humanidade)
```

### Comandos de Backup

| Comando | Sintaxe | Permissão | Descrição |
|---------|---------|-----------|-----------|
| `/dobackup` | `/dobackup` | Super Admin | Faz backup de veículos/tendas/safes |
| `/loadbackup` | `/loadbackup` | Super Admin | Carrega backup salvo |

### Comandos de Mensagens

| Comando | Sintaxe | Permissão | Descrição |
|---------|---------|-----------|-----------|
| `/say` | `/say [mensagem]` | Moderador+ | Envia mensagem global visível |
| `/pm` | `/pm [jogador] [mensagem]` | Moderador+ | Envia mensagem privada para jogador |
| `/announce` | `/announce [mensagem]` | Admin | Anuncia mensagem centralizada na tela |

**Exemplos**:
```
/say Servidor reiniciará em 5 minutos!
/pm João Por favor, não faça isso novamente
/announce EVENTO DE LOOT EM ANDAMENTO!
```

### Comandos IPB (IP Ban)

| Comando | Sintaxe | Permissão | Descrição |
|---------|---------|-----------|-----------|
| `/perfbrowse` | `/perfbrowse` | Admin | Abre navegador de performance/IPB |
| `/ipb` | `/ipb` | Admin | Abre painel de controle de IP |

---

## Atalhos de Teclado - Jogadores

### Movimento e Ações Básicas

| Tecla | Ação | Descrição |
|-------|------|-----------|
| `W` `A` `S` `D` | Movimento | Movimentação padrão |
| `Espaço` | Pular | Pula (se não tiver osso quebrado) |
| `C` | Agachar | Agacha/levanta |
| `Shift` | Correr | Corre (consome mais sede) |
| `Alt` | Andar | Modo andar lento |

### Animações e Gestos

| Tecla | Ação | Descrição |
|-------|------|-----------|
| `,` (vírgula) | Mãos para cima | Animação de rendição |
| `.` (ponto) | Sentar | Senta no chão |
| `L` | Deitar | Deita no chão |
| `;` (ponto e vírgula) | Gesto amigável | Animação amigável/aceno |

**Uso Tático**:
- Use `,` para mostrar que não é hostil
- Use `L` para ficar escondido na grama
- Use `.` para descansar em bases

### Interface e Menus

| Tecla | Ação | Descrição |
|-------|------|-----------|
| `N` | Inventário | Abre/fecha o inventário |
| `I` | Menu | Abre menu de interação |
| `M` | Mapa | Abre/fecha o mapa mundial |
| `F11` | Mapa | Alternativa para abrir o mapa |
| `F1` | Ajuda | Abre menu de ajuda |
| `F2` | Configurações | Abre configurações |
| `F6` | Sistema de Grupo | Abre painel de grupo/time |
| `Tab` | Scoreboard | Mostra placar de jogadores |

### Veículos

| Tecla | Ação | Descrição |
|-------|------|-----------|
| `K` | Ligar/Desligar Motor | Liga ou desliga o motor do veículo |
| `O` | Encontrar Veículo | Localiza veículo mais próximo |
| `Enter` | Entrar no Veículo | Entra no veículo mais próximo |
| `F` | Sair do Veículo | Sai do veículo |

**Dicas**:
- Sempre desligue o motor (`K`) para economizar combustível
- Use `O` para encontrar veículos perdidos
- Motor ligado atrai mais zumbis!

### Armas e Combate

| Tecla | Ação | Descrição |
|-------|------|-----------|
| `Botão Esquerdo Mouse` | Atirar | Dispara a arma equipada |
| `Botão Direito Mouse` | Mirar | Ativa mira (aumenta precisão) |
| `R` | Recarregar | Recarrega a arma atual |
| `Tab` | Trocar Arma | Cicla entre armas equipadas |
| `Scroll Mouse` | Trocar Arma | Cicla entre armas equipadas |

### Interação

| Tecla | Ação | Descrição |
|-------|------|-----------|
| `E` | Interagir | Abre menu de interação com objetos/jogadores |
| `Mouse3` (Roda) | Interagir | Alternativa para interação |
| `Mouse5` | Interagir | Segunda alternativa para interação |
| `J` | Pegar Item | Pega item do chão próximo |

**Menu de Interação** aparece quando você pressiona `E` perto de:
- Portas (abrir/fechar)
- Veículos (entrar, reparar, reabastecer)
- Tendas/Safes (acessar inventário)
- Jogadores (dar itens, trade, etc)
- Fogueiras (cozinhar, aquecer)

### Navegação de Menus

| Tecla | Ação | Descrição |
|-------|------|-----------|
| `Mouse Wheel Up` | Rolar para Cima | Rola menu para cima |
| `Mouse Wheel Down` | Rolar para Baixo | Rola menu para baixo |
| `Page Up` | Rolar para Cima | Rola menu para cima (alternativa) |
| `Page Down` | Rolar para Baixo | Rola menu para baixo (alternativa) |

### Chat

| Tecla | Ação | Descrição |
|-------|------|-----------|
| `U` | Chat Global | Abre chat global (todos os jogadores) |
| `Y` | Chat de Grupo | Abre chat do seu grupo/time |
| `T` | Chat Padrão | Chat local padrão do MTA |

---

## Atalhos de Teclado - Administradores

### Painel Administrativo

| Tecla | Ação | Permissão | Descrição |
|-------|------|-----------|-----------|
| `P` | Admin Panel | Admin | Abre/fecha painel administrativo |

**Funcionalidades do Painel (com `P` aberto)**:
- Lista de jogadores online
- Botões de kick, ban, mute
- Freeze, warp, spectate
- Editar stats de DayZ
- Spawnar veículos
- Mudar clima
- Enviar mensagens globais

### Modo Superman (Duty Mode)

**Ativação**: Via painel admin (botão "Duty Mode")

**Quando Ativo**:
- Invencibilidade completa
- Sangue fixo em 54.000
- Sem osso quebrado
- Sem dor, sangramento
- Texto "Duty Mode" aparece sobre você

**Controles no Modo Superman**:
| Tecla | Ação | Descrição |
|-------|------|-----------|
| `Espaço` | Voar para Cima | Sobe no modo voo |
| `Shift` | Acelerar Voo | Voa mais rápido |

### Helicopter Grab (Pegar Jogadores)

**Pré-requisito**: Estar em um helicóptero como piloto

| Tecla | Ação | Descrição |
|-------|------|-----------|
| `X` | Pegar/Soltar Jogador | Pega ou solta o jogador mais próximo |
| `Backspace` | Dropar Jogador | Solta o jogador imediatamente |

**Comandos Relacionados**:
```
/grab - Pega jogador
/helidrop - Solta jogador
/forcedrop - Força soltar
```

**Uso**:
1. Voe sobre um jogador
2. Pressione `X` para pegá-lo
3. Voe até o destino
4. Pressione `X` ou `Backspace` para soltar

### Modo Espectador (Spectator)

**Ativação**: Via painel admin ou comando `/spectate [jogador]`

| Tecla | Ação | Descrição |
|-------|------|-----------|
| `Seta Esquerda` | Jogador Anterior | Troca para jogador anterior |
| `Seta Direita` | Próximo Jogador | Troca para próximo jogador |
| `Mouse Wheel Up` | Afastar Câmera | Aumenta distância da câmera |
| `Mouse Wheel Down` | Aproximar Câmera | Diminui distância da câmera |
| `Botão Direito Mouse` | Toggle Cursor | Mostra/esconde cursor |

**Observação**: No modo espectador, você é invisível e não pode interagir com o jogo.

### Glue/Attach (Anexar Objetos)

| Tecla | Ação | Permissão | Descrição |
|-------|------|-----------|-----------|
| `X` | Colar/Descolar | Admin | Cola jogador a você ou descola |

**Uso**:
1. Aproxime-se de um jogador
2. Pressione `X` para colar ele a você
3. Ele seguirá você onde for
4. Pressione `X` novamente para descolar

---

## Comandos de Console

Comandos executados diretamente no console do servidor (não no chat).

### Gerenciamento de Resources

| Comando | Sintaxe | Descrição |
|---------|---------|-----------|
| `start` | `start [resource]` | Inicia um resource |
| `stop` | `stop [resource]` | Para um resource |
| `restart` | `restart [resource]` | Reinicia um resource |
| `refresh` | `refresh` | Atualiza lista de resources |
| `resources` | `resources` | Lista todos os resources |

**Exemplos**:
```
start dayzepoch
stop asia_shop
restart asia_admin
refresh
resources
```

### Gerenciamento de Jogadores

| Comando | Sintaxe | Descrição |
|---------|---------|-----------|
| `kick` | `kick [jogador] [razão]` | Kicka um jogador |
| `ban` | `ban [jogador] [razão]` | Bane um jogador |
| `unban` | `unban [ip/serial]` | Remove ban |
| `players` | `players` | Lista jogadores online |
| `say` | `say [mensagem]` | Envia mensagem global |

### Configuração

| Comando | Sintaxe | Descrição |
|---------|---------|-----------|
| `aclreload` | `aclreload` | Recarrega o arquivo ACL |
| `shutdown` | `shutdown` | Desliga o servidor |
| `debugscript` | `debugscript [0-3]` | Define nível de debug |

**Níveis de Debug**:
- `0` - Desligado
- `1` - Apenas erros
- `2` - Erros e avisos
- `3` - Tudo (verbose)

### Performance

| Comando | Sintaxe | Descrição |
|---------|---------|-----------|
| `performance` | `performance` | Mostra estatísticas de performance |
| `fpslimit` | `fpslimit [valor]` | Define limite de FPS do servidor |

---

## Interface Gráfica (GUI)

### Menu Principal (Tecla I)

Ao pressionar `I`, você abre o menu de interação contextual:

**Opções Disponíveis** (dependem do contexto):

| Opção | Contexto | Descrição |
|-------|----------|-----------|
| `Entrar no Veículo` | Perto de veículo | Entra no veículo |
| `Reparar Veículo` | Perto de veículo | Repara veículo (requer peças) |
| `Reabastecer` | Perto de veículo | Reabastece (requer jerry can) |
| `Abrir Porta` | Perto de porta | Abre porta |
| `Fechar Porta` | Perto de porta | Fecha porta |
| `Acessar Inventário` | Perto de tenda/safe | Abre inventário compartilhado |
| `Dar Item` | Perto de jogador | Oferece trade |
| `Acender Fogueira` | Perto de lenha | Acende fogueira |

### Inventário (Tecla N)

**Estrutura do Inventário**:

```
┌─────────────────────────────────┐
│      INVENTÁRIO DO JOGADOR      │
├─────────────────────────────────┤
│ Armas Primárias     [slots]     │
│ Armas Secundárias   [slots]     │
│ Granadas            [slots]     │
│ Munição             [slots]     │
│ Comida              [slots]     │
│ Médicos             [slots]     │
│ Itens               [slots]     │
│ Roupas              [slots]     │
│ Ferramentas         [slots]     │
└─────────────────────────────────┘
```

**Ações no Inventário**:
- **Clique Esquerdo**: Selecionar item
- **Clique Direito**: Usar/Equipar item
- **Arrastar**: Mover item entre slots
- **Delete**: Dropar item no chão

### Mapa (Tecla M ou F11)

**Funcionalidades do Mapa**:
- **Zoom In**: `Mouse Wheel Up`
- **Zoom Out**: `Mouse Wheel Down`
- **Mover Mapa**: Arrastar com mouse
- **Marcar Waypoint**: Clique direito no mapa
- **Ver Jogadores**: Marcadores coloridos (se em grupo)

**Marcadores**:
- 🔴 Você
- 🔵 Membros do Grupo
- 🟢 Veículos
- 📍 Waypoints

### Scoreboard (Tecla Tab)

**Informações Exibidas**:
- Nome do Jogador
- Ping
- Kills (Assassinatos)
- Deaths (Mortes)
- Zombies Killed
- Humanity

**Ações**:
- **Mouse Wheel**: Rolar lista
- **Clique**: Selecionar jogador (admin)

### Painel Admin (Tecla P - Admin Apenas)

**Abas do Painel**:

#### 1. Players (Jogadores)
- Lista de todos os jogadores online
- Informações: Nome, IP, Serial, Versão
- Stats: Blood, Humanity, Kills, Deaths
- Ações: Kick, Ban, Mute, Freeze, Warp, Kill

#### 2. Vehicle (Veículos)
- Lista de veículos disponíveis
- Spawn veículo para jogador selecionado
- Fix/Destroy/Blow veículo

#### 3. Weather (Clima)
- Opções: Normal, Sandstorm, Rain
- Mudar clima instantaneamente

#### 4. Message (Mensagem)
- Enviar mensagem global
- Texto personalizado

#### 5. DayZ Stats (Estatísticas)
- Editar Humanity
- Editar Zombie Kills
- Editar Murders

#### 6. Give (Dar Itens)
- Selecionar item da lista
- Quantidade
- Dar para jogador específico ou todos

#### 7. Duty Mode
- Ativar/Desativar modo duty
- Invencibilidade
- Superman mode

---

## Dicas e Truques

### Para Jogadores

**Sobrevivência**:
- Sempre carregue bandagens (`medicine1`) no inventário
- Comida e água são essenciais - mantenha estoque
- Evite zumbis quando possível - eles causam muito dano
- Use roupas com capacetes e coletes para reduzir dano

**Combate**:
- Mire (`Botão Direito`) antes de atirar para mais precisão
- Headshots matam zumbis instantaneamente
- Recarregue (`R`) em lugares seguros
- Crossbow é silenciosa mas lenta

**Veículos**:
- Sempre desligue o motor (`K`) quando parado
- Jerry cans reabastecem veículos
- Peças de reparo são raras - guarde-as
- Veículos fazem barulho e atraem zumbis

**Loot**:
- Áreas militares têm melhor loot mas mais zumbis
- Supermercados têm comida
- Hospitais têm suprimentos médicos
- Veículos podem ter loot dentro

### Para Administradores

**Gerenciamento**:
- Use `/spectate` para investigar suspeitos
- Sempre dê razão ao kickar/banir
- Use duty mode para ser invisível aos jogadores
- Faça backups regulares com `/dobackup`

**Moderação**:
- Mute antes de kick (primeira ofensa)
- Kick antes de ban (segunda ofensa)
- Ban permanente para cheaters
- Documente todas as ações

**Eventos**:
- Use `/announce` para eventos
- Spawne veículos raros em locais específicos
- Mude clima para criar atmosfera
- Dê recompensas com `/give`

---

## Resumo Rápido - Teclas Mais Usadas

### Essenciais

| Tecla | Ação |
|-------|------|
| `N` | Inventário |
| `I` | Menu de Interação |
| `M` | Mapa |
| `K` | Ligar/Desligar Motor |
| `E` | Interagir |
| `R` | Recarregar Arma |
| `U` | Chat Global |

### Administração

| Tecla | Ação |
|-------|------|
| `P` | Painel Admin |
| `X` | Helicopter Grab/Glue |

---

## Perguntas Frequentes (FAQ)

**P: Como pego itens do chão?**
R: Pressione `E` ou `J` perto do item.

**P: Como uso itens médicos?**
R: Abra o inventário (`N`), clique direito no item médico.

**P: Como entro em um grupo?**
R: Pressione `F6` e aceite convite ou crie um grupo.

**P: Como mudo de roupa?**
R: Encontre roupas no loot, coloque no inventário e clique direito.

**P: Como reparo um veículo?**
R: Tenha as peças no inventário, pressione `E` perto do veículo e selecione "Reparar".

**P: Como reabasteco um veículo?**
R: Tenha jerry can no inventário, pressione `E` perto do veículo e selecione "Reabastecer".

**P: O que é Humanity?**
R: Medida de quanto você é herói (+) ou bandido (-). Matar jogadores inocentes reduz, ajudar aumenta.

**P: Como vejo meus stats?**
R: Pressione `Tab` para ver scoreboard com seus stats.

**P: Como faço para não morrer de fome/sede?**
R: Colete comida e água do loot, use do inventário regularmente.

**P: Onde encontro armas boas?**
R: Áreas militares, helicopter crashes, zumbis (raro).

---

## Glossário de Termos

| Termo | Significado |
|-------|-------------|
| **Loot** | Itens encontrados no mundo |
| **Spawn** | Local/momento onde jogador aparece |
| **Respawn** | Reaparecer após morte |
| **Warp** | Teleportar |
| **Freeze** | Congelar (impossibilitar movimento) |
| **Mute** | Silenciar (impedir de falar no chat) |
| **Spectate** | Observar/espectar |
| **Duty Mode** | Modo de serviço (admin invisível/invencível) |
| **Humanity** | Medida de herói/bandido |
| **Headshot** | Tiro na cabeça |
| **Jerry Can** | Galão de combustível |
| **ACL** | Access Control List (controle de permissões) |

---

## Conclusão

Este guia cobre todos os comandos e atalhos disponíveis no MTA DayZ Epoch. Recomendamos que novos jogadores:

1. ✅ Pratiquem os atalhos básicos primeiro (`N`, `I`, `M`, `E`)
2. ✅ Aprendam o sistema de inventário
3. ✅ Dominem o combate contra zumbis
4. ✅ Explorem o mapa progressivamente

Para administradores:

1. ✅ Familiarizem-se com o painel admin (`P`)
2. ✅ Testem comandos em servidor de testes primeiro
3. ✅ Mantenham log de todas as ações administrativas
4. ✅ Usem duty mode para investigações discretas

**Boa sorte na sobrevivência!** 🧟‍♂️🔫
