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

### Requisitos

**Servidor**:
- MTA:SA Server 1.5.8+
- Linux (Ubuntu 18.04+, Debian 9+) ou Windows Server 2012+
- 2 GB RAM (mínimo), 4 GB (recomendado)
- MySQL/MariaDB para persistência de dados
- Portas: 22003 (UDP) e 22005 (TCP) abertas

**Cliente**:
- MTA:SA Client 1.5.8+
- GTA San Andreas instalado

### Método Rápido

1. **Clone ou baixe o repositório**:
```bash
git clone https://github.com/TioMalandrex/MTA-DayZ-Asia.git
```

2. **Copie para o servidor**:
```bash
cp -r MTA-DayZ-Asia/* /caminho/para/mta-server/mods/deathmatch/resources/
```

3. **Copie os arquivos de configuração**:
```bash
cp MTA-DayZ-Asia/acl.xml /caminho/para/mta-server/mods/deathmatch/
cp MTA-DayZ-Asia/mtaserver.conf /caminho/para/mta-server/mods/deathmatch/
```

4. **Inicie o servidor**:
```bash
cd /caminho/para/mta-server
./mta-server64  # Linux
# ou MTA Server.exe no Windows
```

### Configuração do ACL

Adicione ao seu `acl.xml`:

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

### Configuração do mtaserver.conf

Adicione estes recursos ao `mtaserver.conf`:

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

E está tudo pronto!

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

### Servidor não inicia

**Problema**: Porta em uso
```bash
# Verificar porta
netstat -tuln | grep 22003

# Matar processo
kill -9 $(lsof -ti:22003)
```

### Recursos não carregam

**Problema**: Permissões incorretas
```bash
# Linux
chmod -R 755 /opt/mta-server/mods/deathmatch/resources/

# Verificar logs
tail -f logs/server.log
```

### Admin panel não abre

**Problema**: ACL não configurado

1. Verifique se seu usuário está no grupo "Admin" ou "Staff" no `acl.xml`
2. Reinicie o servidor após modificar ACL

### Database não conecta

**Problema**: MySQL não rodando
```bash
# Verificar status
sudo systemctl status mysql

# Iniciar
sudo systemctl start mysql
```

### Alto lag/FPS baixo

**Soluções**:
1. Ajuste FPS limit em `mtaserver.conf`: `<fpslimit>36</fpslimit>`
2. Reduza zumbis em `zombies_s.lua`: `local maxZombies = 30`
3. Ajuste slots de loot

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
