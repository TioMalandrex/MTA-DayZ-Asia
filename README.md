# MTA-DayZ-Asia Gamemode

Gamemode completo de sobrevivência para MTA:SA (Multi Theft Auto: San Andreas) baseado no conceito do DayZ. Oferece uma experiência apocalíptica com zumbis, veículos, loot, crafting e sistema de bases.

Baseado no trabalho de Marwin & Rivor's, com melhorias e novos recursos adicionados ao longo de um ano de desenvolvimento.

## 📋 Índice

- [Características Principais](#características-principais)
- [Instalação](#instalação)
- [Estrutura do Gamemode](#estrutura-do-gamemode)
- [Sistemas Principais](#sistemas-principais)
- [Comandos](#comandos)
- [Atalhos de Teclado](#atalhos-de-teclado)
- [Requisitos](#requisitos)
- [Troubleshooting](#troubleshooting)

---

## ✨ Características Principais

- **Sobrevivência Realista**: Sistema de sangue (12.000 max), fome, sede e temperatura (37°C normal)
- **Mundo Aberto**: Mapa completo de San Andreas com zumbis e loot
- **Sistema de Zumbis**: IA avançada, 50 zumbis simultâneos, 15 variações de skins
- **Veículos**: 16 tipos com sistema de combustível, dano e reparos
- **Inventário Avançado**: Mochilas (12-72 slots), armas, munição, equipamentos
- **Armas**: 11 primárias, 11 secundárias com sistema de munição realista
- **Persistência**: Contas salvas com estatísticas e progresso completo
- **Bases Construíveis**: 3 templates de bases para proteção e armazenamento
- **22 Sistemas Auxiliares**: Loja, missões, GPS, radar, grupos, admin e mais
- **Administração Completa**: Painel de admin, anti-cheat e ferramentas de moderação

---

## 🚀 Instalação

### Requisitos Mínimos

- **MTA:SA Server 1.5.8+** ([Download](https://multitheftauto.com/))
- **Windows 7+** ou Linux (Ubuntu 18.04+)
- **2 GB RAM** (recomendado 4 GB)
- **GTA San Andreas** instalado (para testar como cliente)

### 📦 Instalação Rápida - Windows

1. **Baixe o MTA:SA Server**
   - Acesse: https://multitheftauto.com/
   - Baixe a versão para Windows
   - Instale em uma pasta (ex: `C:\MTA-Server\`)

2. **Baixe este gamemode**
   - Clique no botão verde "Code" → "Download ZIP"
   - Extraia o ZIP baixado

3. **Copie os arquivos**
   - Copie **todas as pastas** `[DayZ]`, `[scripts]`, `[Bases]`, `[admin]` para:
     ```
     C:\MTA-Server\mods\deathmatch\resources\
     ```
   - Copie o arquivo `acl.xml` para:
     ```
     C:\MTA-Server\mods\deathmatch\
     ```
   - Copie o arquivo `mtaserver.conf` para:
     ```
     C:\MTA-Server\mods\deathmatch\
     ```

4. **Inicie o servidor**
   - Execute `MTA Server.exe` na pasta do MTA Server
   - Pronto! O servidor iniciará automaticamente

5. **Conecte-se**
   - Abra o MTA:SA Client
   - Vá em "Browse Servers" 
   - Conecte em `127.0.0.1` (localhost)

### 🐧 Instalação Rápida - Linux

1. **Baixe e instale o MTA Server**:
```bash
wget https://linux.mtasa.com/dl/multitheftauto_linux_x64.tar.gz
tar -xzf multitheftauto_linux_x64.tar.gz
```

2. **Baixe este gamemode**:
```bash
git clone https://github.com/TioMalandrex/MTA-DayZ-Asia.git
cd MTA-DayZ-Asia
```

3. **Copie os arquivos**:
```bash
cp -r [DayZ] [scripts] [Bases] [admin] /caminho/para/mta-server/mods/deathmatch/resources/
cp acl.xml mtaserver.conf /caminho/para/mta-server/mods/deathmatch/
```

4. **Inicie o servidor**:
```bash
cd /caminho/para/mta-server
./mta-server64
```

---

## ⚙️ Configuração Adicional (Opcional)

> **Nota**: Se você copiou os arquivos `acl.xml` e `mtaserver.conf` fornecidos no repositório, não precisa fazer mais nada! Esses arquivos já estão configurados e prontos para uso.

### Adicionar Administradores

Se quiser adicionar seu usuário como administrador, edite o arquivo `acl.xml`:

**Localize a seção Staff e adicione seu nome:**
```xml
<group name="Staff">
    <acl name="Staff"></acl>
    <object name="user.SeuNomeAqui"></object>  <!-- Troque por seu nome no MTA -->
</group>
```

### Personalizar Configurações do Servidor

Edite o arquivo `mtaserver.conf` para personalizar:

```xml
<servername>MTA DayZ Epoch - Seu Servidor</servername>  <!-- Nome do servidor -->
<maxplayers>64</maxplayers>                              <!-- Máximo de jogadores -->
<password></password>                                     <!-- Senha (deixe vazio para público) -->
```

<details>
<summary>📋 Clique para ver configuração completa do ACL</summary>

```xml
<!-- Recursos principais -->
<acl>
    <object name="resource.webadmin"></object>
    <object name="resource.admin"></object>
    <object name="resource.acpanel"></object>
    <object name="resource.asia_admin"></object>
    <object name="resource.dayzepoch"></object>
    <object name="resource.asia_login"></object>
    <object name="resource.asia_modloader"></object>
    <object name="resource.asia_group"></object>
</acl>

<!-- Grupo Staff -->
<group name="Staff">
    <acl name="Staff"></acl>
    <object name="user.SeuNomeAqui"></object>
</group>

<acl name="Staff">
    <right name="general.adminpanel" access="true"></right>
    <right name="command.kick" access="true"></right>
    <right name="command.ban" access="true"></right>
    <right name="command.mute" access="true"></right>
    <right name="command.warp" access="true"></right>
</acl>
```
</details>

<details>
<summary>📋 Clique para ver lista de recursos do mtaserver.conf</summary>

```xml
<!-- Admin Resources -->
<resource src="admin" startup="1" protected="0" />
<resource src="defaultstats" startup="1" protected="0" />
<resource src="reload" startup="1" protected="0" />
<resource src="webadmin" startup="1" protected="0" />
<resource src="acpanel" startup="1" protected="0" />

<!-- DayZ Core -->
<resource src="dayzepoch" startup="1" protected="0" />

<!-- Sistemas Auxiliares -->
<resource src="asia_particles" startup="1" protected="0" />
<resource src="asia_admin" startup="1" protected="0" />
<resource src="asia_antiglitch" startup="1" protected="0" />
<resource src="asia_modloader" startup="1" protected="0" />
<resource src="asia_dynamicsky" startup="1" protected="0" />
<resource src="asia_login" startup="1" protected="0" />
<resource src="asia_scoreboard" startup="1" protected="0" />
<resource src="asia_shader" startup="1" protected="0" />
<resource src="asia_radar" startup="1" protected="0" />
<resource src="asia_shop" startup="1" protected="0" />
<resource src="asia_animation" startup="1" protected="0" />
<resource src="asia_gps" startup="1" protected="0" />
<resource src="asia_group" startup="1" protected="0" />
<resource src="asia_mission" startup="1" protected="0"/>
<resource src="e_map" startup="1" protected="0" />
<resource src="asia_finder" startup="1" protected="0" />
<resource src="asia_loading" startup="1" protected="0" />
<resource src="asia_worldmap" startup="1" protected="0" />
<resource src="asia_lightsoff" startup="1" protected="0" />
<resource src="asia_help" startup="1" protected="0"/>
<resource src="asia_security" startup="1" protected="0" />
<resource src="asia_attach" startup="1" protected="0" />
<resource src="asia_compass" startup="1" protected="0" />
```
</details>

**Pronto!** Seu servidor DayZ está configurado e funcionando! 🎮

---

## 🏗️ Estrutura do Gamemode

```
MTA-DayZ-Asia/
├── [DayZ]/                 # Gamemode principal (Core)
│   └── dayzepoch/          # Sistema de sobrevivência DayZ Epoch
├── [scripts]/              # 22 sistemas auxiliares
│   ├── asia_admin/         # Painel administrativo
│   ├── asia_shop/          # Sistema de loja
│   ├── asia_mission/       # Sistema de missões
│   ├── asia_gps/           # GPS e navegação
│   ├── asia_group/         # Sistema de grupos/clãs
│   ├── asia_login/         # Autenticação
│   ├── asia_modloader/     # Carregador de mods 3D
│   ├── asia_security/      # Anti-cheat
│   └── ... (mais 14 sistemas)
├── [Bases]/                # Bases construíveis
│   ├── Base1/              # Template de base pequena
│   ├── Base2/              # Template de base média
│   └── Base3/              # Template de base grande
├── [admin]/                # Ferramentas administrativas
│   ├── admin/              # Painel admin principal
│   ├── acpanel/            # Painel AC avançado
│   ├── runcode/            # Execução de código remota
│   └── ipb/                # Sistema de IP ban
├── acl.xml                 # Controle de acesso
└── mtaserver.conf          # Configuração do servidor
```

---

## 🎮 Sistemas Principais

### Sistema de Sobrevivência

**Sangue (Blood)**:
- Máximo: 12.000
- Dano de zumbis: -400 a -900
- Dano de veículos: -100 a -1.000
- Morte quando ≤ 0

**Fome e Sede**:
- Spawn: 80-100 (aleatório)
- Consumo através de itens

**Temperatura**:
- Normal: 37°C
- Frio: ≤36°C (efeitos negativos)
- Febre: ≥39°C (efeitos negativos)

**Lesões**:
- Sangramento contínuo
- Osso quebrado (desabilita pulo/corrida)
- Dor (afeta precisão)

### Sistema de Armas

**Categorias**:
- 11 Armas Primárias (M4A1, AK-47, DMR, snipers, crossbow)
- 11 Armas Secundárias (pistolas, revólveres, facas)
- 10 Tipos de munição (mag1-mag10)

**Equipamentos de Proteção**:
- 7 Capacetes (redução de dano: 1-2.5x)
- 2 Coletes (redução de dano: 1.5-2x)
- 7 Mochilas (12-72 slots)

### Sistema de Zumbis

- **Limite**: 50 zumbis simultâneos
- **IA**: Perseguição, ataques melee, line-of-sight
- **Skins**: 15 variações
- **Loot**: 28 tipos com chances variadas (0.1-9%)
- **Spawn**: A cada 2.5 segundos próximo aos jogadores

### Sistema de Veículos

- **16 modelos**: Helicópteros, caminhões, SUVs, motos, ATVs
- **Combustível**: Sistema realista, consumo 0-0.5 por movimento
- **Reparos**: 5 componentes (pneus, motor, peças, sucata, rotor)
- **Loot**: Slots de armazenamento (8-50 por veículo)

### Sistema de Bases e Armazenamento

O gamemode possui dois tipos de bases: **pré-construídas** e **construíveis pelos jogadores**.

#### 🏕️ Bases Construíveis (Sistema de Storage)

Os jogadores podem construir suas próprias estruturas de armazenamento no mundo:

**Tendas (Tents)**:
- **Como obter**: Encontre o item "Tent" no loot
- **Como usar**: Abra o inventário (N), selecione a tenda e clique em "Pitch a tent"
- **Capacidade**: 100 slots de armazenamento
- **Funcionalidade**: Armazena itens, armas, munição
- **Acesso**: Qualquer jogador pode acessar (pressione J perto da tenda)
- **Remoção**: Apenas quem construiu pode remover
- **Persistência**: Salva automaticamente no banco de dados

**Cofres (Safes)**:
- **Como obter**: Encontre o item "Safe" no loot
- **Como usar**: Abra o inventário (N), selecione o cofre e crie um código PIN de 4 dígitos
- **Capacidade**: 50 slots de armazenamento
- **Segurança**: Protegido por código PIN pessoal
- **Acesso**: Apenas quem sabe o código pode acessar
- **Mudar código**: Opção disponível após abrir o cofre
- **Invadir**: Pode ser explodido com C4 (item raro)
- **Status "Raided"**: Após ser explodido, fica acessível por todos
- **Persistência**: Salva automaticamente com o código do proprietário

**Dicas de Uso**:
- 💡 Tendas são boas para armazenamento temporário e compartilhado
- 🔒 Cofres são ideais para itens valiosos (requerem código)
- 📍 Construa em locais escondidos para evitar roubos
- 💾 Faça backup regularmente (comando admin: `/dobackup`)

#### 🏰 Bases Pré-Construídas (Map Resources)

O servidor inclui 3 bases pré-construídas que podem ser ativadas:

**Base1, Base2, Base3**:
- **Tipo**: Recursos de mapa (.map files)
- **Conteúdo**: Estruturas completas com muros, portões, prédios
- **Localização**: Coordenadas específicas no mapa de San Andreas
- **Ativação**: Iniciar o resource via console (`start Base1`)
- **Uso**: Áreas pré-construídas para clãs ou eventos
- **Personalização**: Pode ser editado com Map Editor do MTA

**Como ativar uma base pré-construída**:
```bash
# No console do servidor
start Base1
# ou
start Base2
# ou
start Base3
```

**Diferenças**:
- Bases pré-construídas: Estruturas fixas no mapa (não construíveis por jogadores)
- Bases construíveis: Tendas e cofres que jogadores criam durante o jogo

### Sistemas Auxiliares (22 no total)

| Sistema | Descrição |
|---------|-----------|
| **asia_shop** | Loja de itens e armas |
| **asia_mission** | Sistema de quests |
| **asia_gps** | Navegação GPS |
| **asia_group** | Clãs e grupos |
| **asia_login** | Autenticação de jogadores |
| **asia_admin** | Painel administrativo customizado |
| **asia_security** | Anti-cheat e proteção |
| **asia_modloader** | Carrega mods 3D customizados |
| **asia_scoreboard** | Placar de jogadores |
| **asia_radar** | Radar de localização |
| **e_map** | Sistema de mapa |
| **asia_worldmap** | Mapa mundial interativo |
| E mais 10 sistemas... | |

---

## 💬 Comandos

### Comandos de Jogador

| Comando | Descrição |
|---------|-----------|
| `/kill` | Suicida (respawn) |
| `/globalchat [msg]` | Mensagem global |
| `/teamchat [msg]` | Mensagem para grupo |

### Comandos Administrativos

**Gerenciamento de Jogadores**:
- `/p` ou `/adminpanel` - Abre painel admin
- `/kick [jogador] [razão]` - Expulsa jogador
- `/ban [jogador] [razão]` - Bane jogador
- `/mute [jogador] [tempo] [razão]` - Silencia jogador
- `/freeze [jogador]` - Congela/descongela
- `/warp [jogador] [destino]` - Teleporta
- `/spectate [jogador]` - Especta jogador

**Veículos**:
- `/spawnvehicle [id]` - Spawna veículo
- `/fixvehicle` - Repara veículo
- `/destroyvehicle` - Destrói veículo

**Ambiente**:
- `/weather [id]` - Muda clima (1=normal, 8=tempestade)
- `/time [hora] [min]` - Muda horário

**Debug/Desenvolvimento**:
- `/run [código]` - Executa código Lua (Super Admin)
- `/acp` - Abre painel AC

### Comandos de Console

```bash
start [resource]      # Inicia resource
stop [resource]       # Para resource
restart [resource]    # Reinicia resource
aclreload            # Recarrega ACL
players              # Lista jogadores
kick [jogador]       # Kicka jogador
ban [jogador]        # Bane jogador
```

---

## ⌨️ Atalhos de Teclado

### Jogadores

**Interface**:
- `N` - Inventário
- `I` - Menu de interação
- `M` ou `F11` - Mapa
- `Tab` - Scoreboard
- `F1` - Ajuda
- `F2` - Configurações
- `F6` - Sistema de grupo

**Ações**:
- `E` / `Mouse3` / `Mouse5` - Interagir
- `J` - Pegar item do chão
- `K` - Ligar/desligar motor
- `O` - Encontrar veículo próximo
- `R` - Recarregar arma

**Animações**:
- `,` - Mãos para cima
- `.` - Sentar
- `L` - Deitar
- `;` - Gesto amigável

**Chat**:
- `U` - Chat global
- `Y` - Chat de grupo
- `T` - Chat local

**Menu de Interação**:
- `Mouse Wheel` ou `Page Up/Down` - Rolar menu

### Administradores

- `P` - Painel administrativo
- `X` - Helicopter grab/Glue (colar jogadores)
- `Backspace` - Drop player (no helicóptero)

**Modo Spectator**:
- `Seta Esquerda/Direita` - Trocar jogador
- `Mouse Wheel` - Ajustar câmera

---

## 🔧 Troubleshooting

### ❌ Servidor não inicia

**Windows:**
- Verifique se o firewall está bloqueando o `MTA Server.exe`
- Libere as portas 22003 e 22005 no firewall do Windows
- Execute como Administrador se necessário

**Linux:**
```bash
# Verificar porta em uso
netstat -tuln | grep 22003

# Matar processo
kill -9 $(lsof -ti:22003)
```

### ❌ Recursos não carregam

**Solução:**
- Verifique se todas as pastas foram copiadas corretamente
- Certifique-se que os arquivos `acl.xml` e `mtaserver.conf` foram copiados
- Verifique o arquivo `logs/server.log` na pasta do servidor para erros

### ❌ Não consigo conectar ao servidor

**Solução:**
1. Verifique se o servidor está rodando (janela do MTA Server aberta)
2. Use o IP `127.0.0.1` se estiver testando localmente
3. Verifique se o firewall não está bloqueando a conexão
4. Certifique-se que o MTA Client está atualizado (1.5.8+)

### ❌ Admin panel não abre (tecla P)

**Solução:**
- Adicione seu nome de usuário no arquivo `acl.xml` na seção Staff
- Reinicie o servidor após modificar o ACL
- Certifique-se de estar logado no servidor
### ❌ Servidor com lag ou FPS baixo

**Solução:**
- Edite `mtaserver.conf` e ajuste: `<fpslimit>36</fpslimit>`
- Reduza o número de zumbis em `[DayZ]/dayzepoch/zombies_s.lua`
- Aumente a RAM dedicada ao servidor

### 💡 Dicas Importantes

- **Logs**: Sempre verifique `mods/deathmatch/logs/server.log` para erros
- **Backup**: Faça backup dos arquivos de configuração antes de editar
- **Portas**: As portas padrão são 22003 (UDP) e 22005 (TCP)
- **Suporte**: Reporte bugs ou peça ajuda nas Issues do GitHub

---

## 📊 Estatísticas do Gamemode

- **Gamemode Core**: 1 (DayZ Epoch)
- **Sistemas Auxiliares**: 22
- **Templates de Bases**: 3
- **Tipos de Armas**: 22 (11 primárias + 11 secundárias)
- **Tipos de Veículos**: 16
- **Tipos de Loot**: 28+
- **Zumbis Simultâneos**: 50 (limite)
- **Variações de Zumbi**: 15
- **Slots de Mochila**: 12-72

---

## 📝 Notas Importantes

- **Backups**: Use `/dobackup` regularmente (Super Admin)
- **Segurança**: Sistema anti-cheat integrado (asia_security, asia_antiglitch)
- **Persistência**: Todos os dados são salvos automaticamente no MySQL
- **Performance**: Otimizado para 32-128 jogadores dependendo do servidor
- **Customização**: Altamente configurável via scripts Lua

---

## 🤝 Contribuindo

Este é um projeto open-source. Sinta-se livre para:
- Reportar bugs via Issues
- Sugerir melhorias
- Fazer fork e desenvolver novas features
- Enviar Pull Requests

---

## 📜 Licença

Veja o arquivo LICENSE para detalhes.

---

## 🙏 Créditos

- Baseado no trabalho de **Marwin & Rivor's**
- Desenvolvido e melhorado ao longo de um ano
- Comunidade MTA:SA

---

**Boa sorte na sobrevivência!** 🧟‍♂️🔫
