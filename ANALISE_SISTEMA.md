# Análise Completa do Sistema - MTA DayZ Epoch

## Índice
1. [Visão Geral](#visão-geral)
2. [Arquitetura do Gamemode](#arquitetura-do-gamemode)
3. [Sistema Core - DayZ Epoch](#sistema-core---dayz-epoch)
4. [Sistemas Auxiliares](#sistemas-auxiliares)
5. [Sistema de Administração](#sistema-de-administração)
6. [Bases e Construções](#bases-e-construções)
7. [Segurança e Anti-Cheat](#segurança-e-anti-cheat)

---

## Visão Geral

**MTA DayZ Epoch** é um gamemode completo de sobrevivência para MTA:SA (Multi Theft Auto: San Andreas) baseado no conceito do DayZ. O servidor oferece uma experiência de sobrevivência apocalíptica com zumbis, veículos, loot, crafting e sistema de bases.

### Características Principais:
- **Sobrevivência realista**: Sistema de sangue, fome, sede e temperatura
- **Mundo aberto**: Mapa completo de San Andreas com zumbis e loot
- **Veículos**: Sistema completo com combustível, dano e reparos
- **Inventário avançado**: Mochilas, armas, munição, equipamentos
- **Persistência**: Contas salvas com estatísticas e progresso
- **Multiplayer**: Suporte para múltiplos jogadores simultâneos
- **Administração**: Painel completo de administração

---

## Arquitetura do Gamemode

### Estrutura de Diretórios

```
MTA-DayZ-Asia/
├── [DayZ]/                 # Gamemode principal
│   └── dayzepoch/          # Core do DayZ Epoch
├── [scripts]/              # 22 sistemas auxiliares
├── [Bases]/                # Bases construíveis (Base1, Base2, Base3)
├── [admin]/                # Ferramentas administrativas
├── acl.xml                 # Controle de acesso (ACL)
└── mtaserver.conf          # Configuração do servidor
```

### Recursos Principais

| Tipo | Quantidade | Descrição |
|------|------------|-----------|
| Gamemode Core | 1 | DayZ Epoch (sobrevivência) |
| Scripts Auxiliares | 22 | Sistemas de gameplay, visual, admin |
| Bases | 3 | Templates de bases construíveis |
| Painel Admin | 1 | Sistema completo de administração |

---

## Sistema Core - DayZ Epoch

Localização: `[DayZ]/dayzepoch/`

### 1. Sistema de Sobrevivência

#### Blood (Sangue)
**Arquivo**: `core_client.lua`

- **Máximo**: 12.000 de sangue
- **Spawn**: Jogadores nascem com 12.000
- **Dano de Zumbis**: -400 a -900 por ataque
- **Dano de Granadas**: -20.000 (com verificação de visão)
- **Dano de Veículos**: -100 a -1.000
- **Regeneração**: Até 12.000 (com itens médicos)
- **Morte**: Ocorre quando sangue ≤ 0

#### Comida e Sede
**Arquivo**: `accounts.lua`

- **Spawn**: 80-100 de comida e sede (aleatório)
- **Consumo**: Através de itens do inventário
- **Itens de comida**: 9 tipos (carne, enlatados, etc.)
- **Itens de água**: Garrafas, cantis

#### Temperatura
**Arquivo**: `core_client.lua`

- **Normal**: 37°C
- **Frio**: ≤36°C (causa efeitos negativos)
- **Febre**: ≥39°C (causa efeitos negativos)
- **Aquecimento**: Heat packs e fogueiras
- **Efeitos**: Afeta stamina e saúde

#### Sistema de Lesões
- **Sangramento**: Reduz sangue constantemente (>20 = ativo)
- **Osso Quebrado**: Desabilita pulo/corrida
- **Dor**: Afeta precisão e movimento
- **Tratamento**: Bandagens, morfina, ataduras

### 2. Sistema de Armas e Munição

**Arquivo**: `core.lua`, `inventory.lua`

#### Categorias de Armas

| Categoria | Quantidade | Exemplos |
|-----------|------------|----------|
| Primárias | 11 | M4A1, AK-47, DMR, AWP, Crossbow |
| Secundárias | 11 | Pistolas, revólveres, facas |
| Granada/Ferramentas | 2 | Granadas, binóculos |

#### Sistema de Munição
- **Tipos de Magazine**: 10 tipos (mag1-mag10)
- **Mapeamento**: Cada arma usa um tipo específico de munição
- **Capacidade**: Varia por arma (pistolas=23, rifles=31, pesadas=30)
- **Delay de Tiro**: 0-1500ms (crossbow mais lenta: 1500ms)

#### Dano de Armas

| Tipo | Dano | Exemplos |
|------|------|----------|
| Pesadas | 47.850 | M107 |
| Snipers | 5.600-9.200 | AWP, AS50 |
| Rifles | 2.755-4.500 | M4A1, AK-47 |
| Pistolas | 1.553-2.189 | Colt 1911, Glock |

#### Modificadores de Dano
- **Capacete**: Reduz 1-2.5x o dano
- **Colete**: Reduz 1.5-2x o dano
- **Headshot**: Aumenta dano significativamente

### 3. Sistema de Roupas e Equipamentos

**Arquivo**: `inventory.lua`, `core.lua`

#### Roupas
- **9 tipos de roupas**: Diferentes aparências visuais
- **Skins**: Mapeados para modelos de ped (71-287)
- **Spawn**: Skin aleatório (71-73)
- **Visual**: Anexado ao jogador via bone_attach

#### Equipamentos de Proteção

| Tipo | Quantidade | Proteção |
|------|------------|----------|
| Capacetes | 7 | 1-2.5x redução de dano |
| Coletes | 2 | 1.5-2x redução de dano |
| Mochilas | 7 | 12-72 slots de inventário |

**Mochilas**:
- Leather Backpack: 12 slots
- Czech Backpack: 24 slots
- Assault Pack: 36 slots
- Alice Pack: 72 slots

### 4. Sistema de Clima e Tempo

**Arquivo**: `core.lua`, `core_client.lua`

#### Estados Climáticos
- **4 tipos de clima**: Normal, tempestade de areia, chuva
- **Sincronização**: Entre todos os jogadores
- **Efeitos visuais**: Neblina, chuva, partículas

#### Sistema de Tempo
- **Tempo real**: Hora/minuto sincronizado
- **Duração do minuto**: 60 segundos
- **Velocidade**: 1.1x da velocidade normal

### 5. Sistema de Zumbis

**Arquivos**: `zombies_s.lua`, `zombies_c.lua`

#### Mecânica de Spawn
- **Limite**: 50 zumbis simultâneos no servidor
- **Modos de Spawn**:
  - Modo 1: Aleatório ao redor de jogadores (raio 40 unidades)
  - Modo 2: Baseado em pontos de spawn fixos
- **Taxa de Spawn**: A cada 2.5 segundos (5 tentativas por tick)
- **Distribuição**: Spawna perto de jogadores com menor "dangercount"

#### Comportamento AI

| Estado | Comportamento |
|--------|---------------|
| Idle | Animações aleatórias, ~7s de duração |
| Chasing | Persegue jogador com line-of-sight |
| Attacking | Soco ou ataque de garganta (2.3s kill) |
| Threat Loss | Baseado em distância (1.3-40 unidades) |

#### Skins de Zumbis
- **15 variações**: Skins 15, 22, 56, 67-70, 92, 97, 105, 107-108, 126-129

#### Sistema de Loot de Zumbis
- **28 tipos de loot**: Chance de drop 0.1-9%
- **Categorias**: Armas, munição, comida, médicos, ferramentas
- **Loot Raro**: Armas especiais (0.1-0.5% de chance)
- **Auto-Magazine**: Armas dropam com munição automaticamente

### 6. Sistema de Veículos

**Arquivo**: `vehicles.lua`

#### Tipos de Veículos
- **16 modelos**: Helicópteros, caminhões, SUVs, motos, ATVs
- **Slots de Loot**: 8-50 slots por veículo
- **Spawns**: Pontos fixos no mapa

#### Sistema de Combustível
- **Taxa de Consumo**: 0-0.5 por movimento
- **Tamanho do Tanque**:
  - Motos: 30
  - HMMWV: 100
  - Caminhões: 80
- **Spawn Inicial**: 5-20 de combustível (aleatório)
- **Reabastecimento**: Via jerry cans no inventário

#### Sistema de Reparos
**5 Componentes**:
1. **Tires (Pneus)**: 0-4 por veículo
2. **Engine (Motor)**: 0-2 por veículo
3. **Parts (Peças)**: 0-3 por veículo
4. **Scrap (Sucata)**: 0-5 por veículo
5. **Rotor (Hélice)**: 0-2 para helicópteros

**Mecânica**:
- Spawn aleatório de componentes
- Jogadores coletam peças para reparar
- Animações e sons de reparo
- Veículos podem ser destruídos

#### Loot em Veículos
- Mesmos itens que helicopter crashes
- Spawna aleatoriamente nos slots
- Munição auto-preenche com armas

### 7. Sistema de Inventário

**Arquivo**: `inventory.lua`

#### Estrutura do Inventário
**9 Categorias**:
1. Weapons (Primárias): 11 tipos
2. Pistols (Secundárias): 11 tipos
3. Grenades: 2 tipos
4. Ammo: 10 tipos de magazine
5. Food (Comida): 9 tipos
6. Medicine (Médicos): 10 tipos
7. Items (Itens): 15 tipos
8. Clothing (Roupas): 9 tipos
9. Tools (Ferramentas): 8 tipos

#### Mecânica de Mochilas
- **Slots Iniciais**: 8 (mochila padrão)
- **Expansão**: 12-72 slots (via mochilas maiores)
- **Visual**: Mochilas maiores visíveis no modelo do jogador

#### Gerenciamento de Itens
- **Stack**: Itens empilháveis
- **Equip**: 3 slots de arma (primária, secundária, melee)
- **Uso**: Itens médicos aplicam automaticamente
- **Consumo**: Comida/água com animações

### 8. Sistema de Contas e Persistência

**Arquivo**: `accounts.lua`

#### Dados Salvos
**Estatísticas Persistentes**:
- Zumbis mortos
- Headshots
- Assassinatos (murders)
- Bandidos mortos
- Mortes
- Tempo de jogo
- Data de entrada
- Última posição (x, y, z)
- Humanidade (-2500 a +5000)

#### Inventário Persistente
- Todas as armas, munição, itens
- Mochilas, capacetes, coletes
- Escolhas de roupa
- Dados do GPS

#### Sistema de Login
- Restaura jogador na última posição
- Carrega todo o inventário do banco de dados
- Reseta stats apenas em novo personagem
- Validação de conta

#### Sistema de Morte
- **Corpse**: Criado com todo o inventário no local da morte
- **Persistência**: Corpo persiste por 15 minutos
- **Humanidade**: Ajuste baseado no status da vítima
- **Stats**: Atualização de murders, deaths, headshots
- **Respawn**: Jogador respawna em ponto aleatório

### 9. Sistema de Loot Spawns

**Arquivo**: `lootspawns.lua`

#### Categorias de Loot
- **Residencial**: Comida, itens básicos
- **Industrial**: Ferramentas, peças
- **Militar**: Armas, munição, equipamento
- **Médico**: Suprimentos médicos
- **Supermercado**: Comida, bebidas

#### Mecânica de Spawn
- Pontos de spawn fixos no mapa
- Loot respawna periodicamente
- Raridade baseada em categoria
- Sistema de probabilidade

---

## Sistemas Auxiliares

Localização: `[scripts]/`

### 1. Sistema de Loja (asia_shop)

**Propósito**: Sistema de compra de itens e armas

**Características**:
- Compra de armas, munição, equipamentos
- Sistema de dinheiro próprio
- Interface gráfica intuitiva
- Rastreamento de transações

### 2. Sistema de Missões (asia_mission)

**Propósito**: Sistema de quests e objetivos

**Características**:
- Missões variadas
- Recompensas por completar
- Sistema de progresso
- Objetivos dinâmicos

### 3. Sistema de GPS (asia_gps)

**Propósito**: Navegação e localização

**Características**:
- GPS visual no HUD
- Waypoints personalizados
- Canais de GPS
- Rastreamento de veículos

### 4. Sistema de Radar (asia_radar)

**Propósito**: Radar de localização

**Características**:
- Mostra jogadores próximos
- Mostra veículos próximos
- Configurável por distância
- Mini-mapa integrado

### 5. Sistema de Login (asia_login)

**Propósito**: Autenticação de jogadores

**Características**:
- Registro de conta
- Login seguro
- Mapa de login customizado
- Interface gráfica profissional
- Recuperação de senha

### 6. Sistema de Loading (asia_loading)

**Propósito**: Telas de carregamento

**Características**:
- Tela de loading customizada
- Informações do servidor
- Progresso de download
- Design temático

### 7. Sistema de Animações (asia_animation)

**Propósito**: Substituição de animações de ped

**Características**:
- Animações realistas
- Walk styles diferentes
- Animações de combate
- Sincronização multiplayer

### 8. Sistema de Ajuda (asia_help)

**Propósito**: Sistema de ajuda e tutorial

**Características**:
- Guia para novos jogadores
- Explicação de mecânicas
- Dicas e truques
- FAQ integrado

### 9. Sistema de Scoreboard (asia_scoreboard)

**Propósito**: Placar de jogadores

**Características**:
- Lista de jogadores online
- Estatísticas visíveis
- Ping, kills, deaths
- Design customizado

### 10. Sistema de Céu Dinâmico (asia_dynamicsky)

**Propósito**: Efeitos de clima e céu

**Características**:
- Mudanças de clima
- Efeitos visuais
- Sincronização de tempo
- Transições suaves

### 11. Sistema de Partículas (asia_particles)

**Propósito**: Efeitos visuais de partículas

**Características**:
- Efeitos de fumaça
- Efeitos de fogo
- Efeitos de explosão
- Otimizado para performance

### 12. Sistema de Shaders (asia_shader)

**Propósito**: Shaders gráficos

**Características**:
- Melhoria visual
- Efeitos de iluminação
- Sombras dinâmicas
- Compatibilidade ajustável

### 13. Sistema de Modloader (asia_modloader)

**Propósito**: Carregamento de mods customizados

**Características**:
- Carrega modelos 3D
- Carrega skins
- Carrega veículos customizados
- Sistema de download automático
- Configuração via _SETTINGS.lua

### 14. Sistema de Mapa (asia_worldmap / e_map)

**Propósito**: Mapa interativo do mundo

**Características**:
- Mapa completo de SA
- Waypoints personalizados
- Zoom in/out
- Marcadores de jogadores
- Marcadores de veículos

### 15. Sistema de Grupos (asia_group)

**Propósito**: Sistema de clãs/grupos

**Características**:
- Criar grupos
- Convidar membros
- Chat de grupo
- Compartilhamento de recursos
- Sistema de permissões

### 16. Sistema de Finder (asia_finder)

**Propósito**: Busca de jogadores e veículos

**Características**:
- Localizar jogadores
- Localizar veículos próximos
- Interface de busca
- Atalho: tecla "O"

### 17. Sistema de Segurança (asia_security)

**Propósito**: Anti-cheat e segurança

**Características**:
- Detecção de cheats
- Combat log protection
- Advertisement blocker
- Sistema de punição automática

### 18. Sistema Anti-Glitch (asia_antiglitch)

**Propósito**: Prevenção de exploits

**Características**:
- Detecção de glitches
- Correção automática
- Log de tentativas
- Proteção de recursos

### 19. Sistema de Attach (asia_attach)

**Propósito**: Anexar objetos e jogadores

**Características**:
- Helicopter grab (pegar jogadores)
- Glue (colar jogadores)
- Anexar objetos
- Ferramentas de admin

### 20. Sistema de Luzes (asia_lightsoff)

**Propósito**: Gerenciamento de iluminação

**Características**:
- Controle de luzes
- Efeitos noturnos
- Otimização de performance

### 21. Sistema de Compass (asia_compass)

**Propósito**: Bússola de navegação

**Características**:
- Direção cardinal
- Integração com GPS
- Visual minimalista

### 22. Sistema Admin Customizado (asia_admin)

**Propósito**: Painel de administração customizado

**Características**:
- Interface gráfica completa
- Kick, ban, mute players
- Warp, freeze, kill
- Editar stats de DayZ
- Duty mode (superman)
- Spawn veículos
- Mudar clima
- Mensagens globais
- Gerenciar itens de jogadores

---

## Sistema de Administração

Localização: `[admin]/`

### 1. Admin Panel Principal (admin/)

**Baseado em**: lil_Toady's admin system

**Características**:
- **Players Tab**: Kick, ban, mute, freeze, warp, view stats
- **Bans Tab**: Gerenciar bans, apelações, histórico
- **ACL Tab**: Gerenciar grupos de usuários e permissões
- **Chat Tab**: Canal de chat exclusivo para admins
- **Map Tab**: Visualizar localizações de jogadores
- **Resources Tab**: Iniciar/parar recursos do servidor
- **Server Tab**: Configurações do servidor, modos de jogo

**Comandos**:
- Sistema de comandos baseado em ACL
- Verificação de permissões via `hasObjectPermissionTo()`
- Grupos: Admin, Moderator, Staff

### 2. AC Panel (acpanel/)

**Propósito**: Painel avançado de controle

**Características**:
- Administração avançada
- Monitoramento de servidor
- Logs detalhados
- Interface web integrada

**Comando**: `/acp` ou `/Show_AC_Panel`

### 3. Run Code (runcode/)

**Propósito**: Execução remota de código

**Características**:
- Executar código Lua server-side
- Executar código client-side
- Debug em tempo real
- Acesso restrito a admins

**Comandos**:
- `/run <code>` - Server-side
- `/srun <code>` - Server-side
- `/crun <code>` - Client-side

### 4. IPB (ipb/)

**Propósito**: Sistema de IP ban

**Características**:
- Whitelist/Blacklist de IPs
- Performance browsing
- Bloqueio regional
- Logs de acesso

### 5. IP2C (ip2c/)

**Propósito**: IP para país

**Características**:
- Geolocalização de jogadores
- Exibir país no painel
- Estatísticas regionais

---

## Bases e Construções

Localização: `[Bases]/`

### Bases Disponíveis

**3 Templates de Bases**:
1. **Base1**: Base pequena/média
2. **Base2**: Base média/grande
3. **Base3**: Base grande/complexa

### Características

**Estrutura**:
- Arquivos `.map` com estruturas pré-desenhadas
- Scripts Lua (server & client)
- Sistema OOP de configuração

**Funcionalidades**:
- Zonas seguras
- Armazenamento de itens
- Proteção contra zumbis
- Áreas de construção

**Uso**:
- Jogadores podem construir bases
- Requer materiais
- Persistência no servidor

---

## Segurança e Anti-Cheat

### asia_security

**Funções**:
- Detecção de cheats
- Combat log protection
- Advertisement blocker
- Punição automática

### asia_antiglitch

**Funções**:
- Prevenção de exploits
- Correção automática de glitches
- Log de tentativas
- Proteção de recursos críticos

### ACL (Access Control List)

**Arquivo**: `acl.xml`

**Grupos**:
- **Admin**: Permissões totais
- **Staff**: Permissões moderadas
- **Player**: Permissões básicas

**Permissões**:
- `general.adminpanel` - Acesso ao painel
- `command.*` - Comandos específicos
- `general.tab_*` - Acesso a tabs específicas

---

## Fluxo de Jogo Típico

### Novo Jogador

1. **Login**: Registra/Loga via asia_login
2. **Spawn**: Aparece em local aleatório com equipamento básico
3. **Sobrevivência**: Gerencia sangue, fome, sede, temperatura
4. **Loot**: Busca itens em prédios e veículos
5. **Zumbis**: Enfrenta zumbis para loot e experiência
6. **Veículos**: Encontra e repara veículos para transporte
7. **Base**: Constrói uma base para armazenamento
8. **Progresso**: Acumula stats e melhora equipamento

### Jogador Experiente

1. **Missões**: Completa missões para recompensas
2. **Grupo**: Forma grupo com outros jogadores
3. **PvP**: Combate com outros jogadores (bandit/hero)
4. **Trading**: Troca itens na loja
5. **Construção**: Expande base e defesas
6. **Dominância**: Controla áreas de loot
7. **Ajuda**: Auxilia novos jogadores

---

## Otimizações e Performance

### Limites do Sistema

- **Zumbis**: 50 simultâneos (limitado para performance)
- **Veículos**: ~100-150 no mapa (pode variar)
- **Loot**: Respawn periódico para evitar sobrecarga
- **Jogadores**: Suporta 32-128 players (dependente do servidor)

### Técnicas de Otimização

1. **Streaming**: Apenas elementos próximos são sincronizados
2. **Culling**: Objetos distantes não renderizam
3. **Pooling**: Reutilização de objetos (zumbis, pickups)
4. **Lazy Loading**: Carregamento sob demanda
5. **Cache**: Cache de dados frequentemente acessados

---

## Conclusão

O **MTA DayZ Epoch** é um sistema completo e robusto de sobrevivência multiplayer. Combina mecânicas realistas de sobrevivência com gerenciamento de recursos, combate estratégico e progressão persistente. O sistema modular permite fácil expansão e customização, enquanto os sistemas de segurança garantem uma experiência justa para todos os jogadores.

### Destaques Técnicos

- **Persistência completa**: Todas as ações são salvas
- **Sistema modular**: 22+ sistemas independentes
- **Administração robusta**: Ferramentas completas de gerenciamento
- **Segurança**: Multi-camadas de proteção anti-cheat
- **Performance**: Otimizado para servidores com muitos jogadores
- **Customização**: Altamente configurável via scripts

### Para que serve?

Este gamemode serve para criar uma experiência de sobrevivência apocalíptica multiplayer no universo de San Andreas, onde jogadores devem trabalhar juntos (ou uns contra os outros) para sobreviver, coletar recursos, construir bases e dominar o mapa em um mundo infestado de zumbis.
