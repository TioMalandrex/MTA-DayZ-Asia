# PRÉVIA TÉCNICA — MTA DAYZ ASIA (EM DESENVOLVIMENTO)

## VISÃO GERAL DO PROJETO

O **MTA DayZ Asia** é um servidor de sobrevivência para MTA:SA com foco em:
• Progressão persistente de jogadores  
• Combate PvE (zumbis) + PvP  
• Economia, grupos, missões e administração robusta  
• Estrutura preparada para alto volume (configurado para até **200 slots** em `mtaserver.conf`)

Arquitetura principal:
• **Core**: `dayzepoch` (sobrevivência, inventário, loot, veículos, persistência)  
• **Sistemas auxiliares**: 22 recursos em `[scripts]`  
• **Admin/infra**: recursos em `[admin]`, `acl.xml`, `mtaserver.conf`  
• **Mapas de bases**: `[Bases]/Base1`, `Base2`, `Base3`

━━━━━━━━━━━━━━━━━━

## FLUXO DE INICIALIZAÇÃO (COMO TUDO FUNCIONA)

1) O servidor sobe com configurações globais (`mtaserver.conf`)  
2) Recursos administrativos iniciam (`admin`, `webadmin`, `acpanel`, etc.)  
3) Core `dayzepoch` inicia e carrega:
   • mecânicas de sobrevivência  
   • spawn de loot e zumbis  
   • veículos  
   • contas/dados persistentes  
4) Sistemas auxiliares entram em operação (login, grupos, missões, GPS, loja, radar, segurança, etc.)  
5) Jogador conecta → autentica (`asia_login`) → spawn → entra no loop de sobrevivência

━━━━━━━━━━━━━━━━━━

## CICLO DE VIDA DO JOGADOR

1) **Conexão e login**  
   • Interface de entrada no `asia_login`  
2) **Spawn**  
   • Core aplica status base (sangue, fome, sede, temperatura, inventário inicial)  
3) **Loop de gameplay**  
   • Exploração, loot, combate com zumbis/jogadores  
   • Uso de veículos, comércio, missões e progressão  
4) **Persistência**  
   • Dados de conta e progresso salvos pelo core  
5) **Morte/respawn**  
   • Reentrada no loop com impacto de risco/recompensa

━━━━━━━━━━━━━━━━━━

## ANÁLISE COMPLETA DOS SISTEMAS ATIVOS

### 1) CORE DE SOBREVIVÊNCIA

• `dayzepoch` — Sistema central: sobrevivência, inventário, armas, loot, zumbis, veículos, progressão e persistência

### 2) SISTEMAS AUXILIARES (`[scripts]`)

• `asia_admin` — Painel/administração customizada  
• `asia_animation` — Animações customizadas  
• `asia_antiglitch` — Proteções contra exploits/glitches  
• `asia_attach` — Sistema de anexos/objetos equipáveis  
• `asia_dynamicsky` — Céu dinâmico e ambientação  
• `asia_finder` — Localização utilitária de elementos próximos  
• `asia_gps` — Navegação e suporte de localização  
• `asia_group` — Grupos/clãs e integração social  
• `asia_help` — Ajuda e orientação in-game  
• `asia_lightsoff` — Controle de iluminação/ambiente  
• `asia_loading` — Tela/fluxo de carregamento  
• `asia_login` — Autenticação e interface de entrada  
• `asia_mission` — Sistema de missões/objetivos  
• `asia_modloader` — Carregamento de mods/modelos customizados  
• `asia_particles` — Efeitos visuais/partículas  
• `asia_radar` — Radar/minimap complementar  
• `asia_scoreboard` — Scoreboard de jogadores  
• `asia_security` — Segurança adicional e anti-cheat  
• `asia_shader` — Shaders visuais do ambiente  
• `asia_shop` — Economia/loja  
• `asia_worldmap` — Mapa expandido/interativo  
• `e_map` — Sistema de mapa adicional

### 3) ADMINISTRAÇÃO E INFRA

• `admin`, `webadmin`, `acpanel` — Gestão operacional do servidor  
• `acl.xml` — Permissões e controle de acesso por grupo  
• `mtaserver.conf` — Configuração global, rede, recursos de startup e limites

### 4) ESTRUTURAS DE BASE

• `Base1`, `Base2`, `Base3` — Templates de bases pré-construídas para clãs/eventos

━━━━━━━━━━━━━━━━━━

## INTEGRAÇÃO ENTRE SISTEMAS

• O `dayzepoch` atua como **núcleo** e estado principal do gameplay.  
• Recursos auxiliares ampliam o núcleo por domínio:  
  - **UX/UI**: loading, scoreboard, map, help  
  - **Gameplay**: missão, loja, grupo, GPS  
  - **Visual**: shader, particles, dynamic sky  
  - **Proteção**: security + antiglitch  
• Camada administrativa e ACL garantem governança para operação de equipes grandes.

━━━━━━━━━━━━━━━━━━

## PRONTO PARA EQUIPES GRANDES (PRÉVIA)

Pontos de maturidade para squads, facções e staffs amplas:
• Arquitetura modular por recursos independentes  
• Base de sobrevivência completa (PvE/PvP/economia/progressão)  
• Ferramentas administrativas nativas + custom  
• Sistema de permissões explícito por ACL  
• Escalabilidade operacional inicial configurada (até 200 jogadores)

**Status da prévia:** estrutura sólida e funcional para testes de estresse, balanceamento de economia e ajuste fino de combate/progressão antes de lançamento definitivo.
