# Guia de Instalação - MTA DayZ Epoch

## Índice
1. [Requisitos](#requisitos)
2. [Instalação Rápida](#instalação-rápida)
3. [Instalação Detalhada](#instalação-detalhada)
4. [Configuração do ACL](#configuração-do-acl)
5. [Configuração do Servidor](#configuração-do-servidor)
6. [Verificação da Instalação](#verificação-da-instalação)
7. [Resolução de Problemas](#resolução-de-problemas)

---

## Requisitos

### Servidor MTA:SA

**Requisitos Mínimos**:
- **SO**: Linux (Ubuntu 18.04+, Debian 9+) ou Windows Server 2012+
- **CPU**: 2 cores @ 2.4 GHz
- **RAM**: 2 GB (mínimo), 4 GB (recomendado)
- **Disco**: 5 GB de espaço livre
- **Rede**: Porta 22003 (UDP) e 22005 (TCP) abertas

**Software Necessário**:
- MTA:SA Server 1.5.8 ou superior
- MySQL/MariaDB (para persistência de dados)

### Cliente (Jogadores)

**Requisitos Mínimos**:
- MTA:SA Client 1.5.8 ou superior
- GTA San Andreas instalado
- Conexão de internet estável

---

## Instalação Rápida

### Método 1: Instalação Completa (Recomendado)

```bash
# 1. Clone ou baixe o repositório
git clone https://github.com/TioMalandrex/MTA-DayZ-Asia.git

# 2. Copie todos os recursos para a pasta resources do servidor
cp -r MTA-DayZ-Asia/* /caminho/para/mta-server/mods/deathmatch/resources/

# 3. Copie os arquivos de configuração
cp MTA-DayZ-Asia/acl.xml /caminho/para/mta-server/mods/deathmatch/
cp MTA-DayZ-Asia/mtaserver.conf /caminho/para/mta-server/mods/deathmatch/

# 4. Inicie o servidor
cd /caminho/para/mta-server
./mta-server64

# 5. Pronto! O servidor está rodando
```

### Método 2: Instalação Manual Simples

1. **Baixe o gamemode** do repositório
2. **Cole a pasta completa** em `mta-server/mods/deathmatch/resources/`
3. **Substitua** `acl.xml` e `mtaserver.conf` na pasta `deathmatch/`
4. **Inicie o servidor**

---

## Instalação Detalhada

### Passo 1: Preparação do Servidor

#### 1.1. Download do MTA Server

**Linux**:
```bash
# Baixar MTA Server
wget https://linux.mtasa.com/dl/multitheftauto_linux_x64.tar.gz

# Extrair
tar -xzf multitheftauto_linux_x64.tar.gz

# Criar diretório
mkdir -p /opt/mta-server
mv multitheftauto_linux_x64/* /opt/mta-server/
```

**Windows**:
1. Baixe o instalador em: https://mtasa.com/
2. Execute o instalador
3. Escolha "Dedicated Server"
4. Instale em um diretório de sua preferência

#### 1.2. Estrutura de Diretórios

Após a instalação, você terá:
```
mta-server/
├── mods/
│   └── deathmatch/
│       ├── resources/        # Recursos aqui
│       ├── acl.xml          # Controle de acesso
│       ├── mtaserver.conf   # Configuração
│       └── logs/            # Logs do servidor
├── mta-server64             # Executável (Linux)
└── MTA Server.exe           # Executável (Windows)
```

### Passo 2: Instalação dos Recursos

#### 2.1. Copiar Recursos do Gamemode

**Estrutura do DayZ Epoch**:
```bash
# Copiar recursos principais
cp -r [DayZ]/ /opt/mta-server/mods/deathmatch/resources/
cp -r [scripts]/ /opt/mta-server/mods/deathmatch/resources/
cp -r [Bases]/ /opt/mta-server/mods/deathmatch/resources/
cp -r [admin]/ /opt/mta-server/mods/deathmatch/resources/
```

**Recursos Instalados**:

| Diretório | Conteúdo | Obrigatório |
|-----------|----------|-------------|
| `[DayZ]/` | Gamemode principal | ✅ Sim |
| `[scripts]/` | 22 sistemas auxiliares | ✅ Sim |
| `[Bases]/` | Bases construíveis | ⚠️ Opcional |
| `[admin]/` | Painel administrativo | ✅ Sim |

#### 2.2. Verificar Recursos

```bash
# Listar recursos instalados
ls /opt/mta-server/mods/deathmatch/resources/

# Deve mostrar:
# [DayZ]  [scripts]  [Bases]  [admin]
```

### Passo 3: Configuração do mtaserver.conf

#### 3.1. Copiar Arquivo de Configuração

```bash
# Backup do original (recomendado)
cp /opt/mta-server/mods/deathmatch/mtaserver.conf /opt/mta-server/mods/deathmatch/mtaserver.conf.backup

# Copiar novo
cp mtaserver.conf /opt/mta-server/mods/deathmatch/
```

#### 3.2. Configurações Importantes

Edite `mtaserver.conf`:

```xml
<config>
    <!-- Nome do servidor -->
    <servername>MTA DayZ Epoch - Survival Server</servername>
    
    <!-- Porta do servidor -->
    <serverport>22003</serverport>
    
    <!-- Máximo de jogadores -->
    <maxplayers>64</maxplayers>
    
    <!-- Senha (deixe vazio para público) -->
    <password></password>
    
    <!-- FPS Limit -->
    <fpslimit>60</fpslimit>
    
    <!-- Recursos para auto-start -->
    
    <!-- Admin Resources -->
    <resource src="admin" startup="1" protected="0" />
    <resource src="defaultstats" startup="1" protected="0" />
    <resource src="reload" startup="1" protected="0" />
    <resource src="webadmin" startup="1" protected="0" />
    <resource src="acpanel" startup="1" protected="0" />
    
    <!-- DayZ Core -->
    <resource src="dayzepoch" startup="1" protected="0" />
    
    <!-- Auxiliary Systems -->
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
</config>
```

#### 3.3. Configurações de Rede (Firewall)

**Linux (UFW)**:
```bash
# Permitir portas do MTA
sudo ufw allow 22003/udp
sudo ufw allow 22005/tcp
sudo ufw allow 22126/udp  # Porta ASE
```

**Linux (iptables)**:
```bash
iptables -A INPUT -p udp --dport 22003 -j ACCEPT
iptables -A INPUT -p tcp --dport 22005 -j ACCEPT
iptables -A INPUT -p udp --dport 22126 -j ACCEPT
```

**Windows Firewall**:
1. Abra "Windows Defender Firewall"
2. Clique em "Configurações Avançadas"
3. Adicione "Nova Regra de Entrada"
4. Tipo: Porta
5. Protocolo: UDP, Porta: 22003
6. Permitir conexão
7. Repita para TCP 22005

---

## Configuração do ACL

### Método 1: Usar ACL Fornecido (Recomendado)

```bash
# Backup do ACL original
cp /opt/mta-server/mods/deathmatch/acl.xml /opt/mta-server/mods/deathmatch/acl.xml.backup

# Copiar ACL do gamemode
cp acl.xml /opt/mta-server/mods/deathmatch/
```

### Método 2: Configuração Manual

Se preferir usar seu próprio ACL, adicione estas permissões:

#### 1. Adicionar Objetos de Recursos

Edite `acl.xml` e adicione dentro de `<acl>`:

```xml
<acl>
    <!-- Recursos principais -->
    <object name="resource.webadmin"></object>
    <object name="resource.admin"></object>
    <object name="resource.acpanel"></object>
    <object name="resource.asia_admin"></object>
    <object name="resource.dayzepoch"></object>
    <object name="resource.asia_login"></object>
    <object name="resource.asia_modloader"></object>
    <object name="resource.asia_group"></object>
</acl>
```

#### 2. Criar Grupo de Staff

```xml
<group name="Staff">
    <acl name="Staff"></acl>
    <object name="user.SeuNomeAqui"></object>
    <!-- Adicione mais admins -->
    <object name="user.OutroAdmin"></object>
</group>
```

#### 3. Criar ACL de Staff

```xml
<acl name="Staff">
    <right name="general.adminpanel" access="true"></right>
    <right name="general.tab_players" access="true"></right>
    <right name="general.tab_resources" access="true"></right>
    <right name="command.kick" access="true"></right>
    <right name="command.ban" access="true"></right>
    <right name="command.mute" access="true"></right>
    <right name="command.freeze" access="true"></right>
    <right name="command.warp" access="true"></right>
    <right name="command.spectate" access="true"></right>
</acl>
```

#### 4. Permissões Importantes

| Permissão | Descrição | Necessário |
|-----------|-----------|------------|
| `general.adminpanel` | Acesso ao painel admin | ✅ Admin |
| `general.tab_players` | Tab de jogadores | ✅ Admin |
| `command.kick` | Kickar jogadores | ✅ Admin |
| `command.ban` | Banir jogadores | ✅ Admin |
| `command.spectate` | Espectar jogadores | ⚠️ Admin |
| `function.*` | Todas as funções | ⚠️ Super Admin |

---

## Configuração do Servidor

### Database (MySQL/MariaDB)

#### 1. Instalar MySQL (se não instalado)

**Linux**:
```bash
# Ubuntu/Debian
sudo apt update
sudo apt install mysql-server

# CentOS/RHEL
sudo yum install mysql-server
```

#### 2. Criar Database

```sql
-- Login no MySQL
mysql -u root -p

-- Criar database
CREATE DATABASE dayz_epoch;

-- Criar usuário
CREATE USER 'dayz_user'@'localhost' IDENTIFIED BY 'senha_forte_aqui';

-- Dar permissões
GRANT ALL PRIVILEGES ON dayz_epoch.* TO 'dayz_user'@'localhost';
FLUSH PRIVILEGES;

EXIT;
```

#### 3. Configurar Conexão

Edite `[DayZ]/dayzepoch/accounts.lua` e configure:

```lua
-- Configuração do MySQL
local mysql = exports.mysql

-- Ou configure a connection string no meta.xml do resource mysql
```

### Configurar Modloader (Opcional)

Se quiser adicionar mods customizados:

1. Edite `[scripts]/asia_modloader/_SETTINGS.lua`:

```lua
-- Adicionar seus mods aqui
models = {
    -- { id, "nome_arquivo.dff", "nome_arquivo.txd" },
    { 411, "meu_carro.dff", "meu_carro.txd" },
}
```

2. Coloque os arquivos `.dff` e `.txd` na pasta do modloader

---

## Verificação da Instalação

### 1. Iniciar o Servidor

**Linux**:
```bash
cd /opt/mta-server
./mta-server64
```

**Windows**:
- Clique duas vezes em `MTA Server.exe`
- Ou pelo prompt: `"C:\Program Files\MTA Server\MTA Server.exe"`

### 2. Verificar Logs

O servidor irá exibir:

```
[INFO] Server minclientversion is now 1.5.8-0.0
[INFO] Starting resources...
[INFO] Starting resource: dayzepoch
[INFO] Starting resource: asia_login
[INFO] Starting resource: asia_admin
...
[INFO] Server started and is ready to accept connections!
[INFO] Listening on port 22003
```

### 3. Conectar ao Servidor

**Via Cliente MTA**:
1. Abra MTA:SA Client
2. Vá em "Browse Servers"
3. Adicione o IP do servidor: `127.0.0.1:22003` (se local)
4. Conecte e teste

### 4. Verificar Funcionamento

Após conectar, verifique:

- ✅ Tela de login aparece
- ✅ Consegue criar conta
- ✅ Consegue spawnar no jogo
- ✅ HUD aparece (sangue, fome, sede)
- ✅ Inventário funciona (tecla N)
- ✅ Menu funciona (tecla I)
- ✅ Zumbis aparecem

### 5. Testar Admin Panel

Como admin:
1. Pressione **P** no jogo
2. Painel de admin deve abrir
3. Teste funcionalidades básicas

---

## Resolução de Problemas

### Problema: Servidor não inicia

**Causa Comum**: Porta em uso

**Solução**:
```bash
# Verificar se porta está em uso
netstat -tuln | grep 22003

# Matar processo se necessário
kill -9 $(lsof -ti:22003)
```

### Problema: Recursos não carregam

**Causa Comum**: Permissões incorretas ou meta.xml corrompido

**Solução**:
```bash
# Verificar permissões (Linux)
chmod -R 755 /opt/mta-server/mods/deathmatch/resources/

# Verificar logs
tail -f /opt/mta-server/mods/deathmatch/logs/server.log
```

### Problema: Admin panel não abre

**Causa Comum**: ACL não configurado

**Solução**:
1. Verifique `acl.xml`
2. Confirme que seu usuário está no grupo "Admin" ou "Staff"
3. Reinicie o servidor

```xml
<group name="Admin">
    <acl name="Admin"></acl>
    <object name="user.SeuNome"></object>
</group>
```

### Problema: Database não conecta

**Causa Comum**: Credenciais incorretas ou MySQL não rodando

**Solução**:
```bash
# Verificar se MySQL está rodando
sudo systemctl status mysql

# Iniciar se necessário
sudo systemctl start mysql

# Testar conexão
mysql -u dayz_user -p
```

### Problema: Jogadores não salvam

**Causa Comum**: Database não configurado ou tabelas não criadas

**Solução**:
1. Verifique conexão com database
2. Verifique se as tabelas foram criadas automaticamente
3. Consulte logs do resource `accounts`

### Problema: Alto lag/FPS baixo

**Soluções**:
1. Reduza `fpslimit` em `mtaserver.conf`:
```xml
<fpslimit>36</fpslimit>
```

2. Ajuste slots de loot em `lootspawns.lua`
3. Reduza número de zumbis em `zombies_s.lua`:
```lua
local maxZombies = 30 -- Reduzir de 50 para 30
```

### Problema: Muitos zumbis/poucos zumbis

**Solução**: Edite `[DayZ]/dayzepoch/zombies_s.lua`:

```lua
-- Linha 1-5 aproximadamente
local maxZombies = 50  -- Ajuste este valor (padrão: 50)
```

### Problema: Veículos não spawnam

**Causa Comum**: Tabela de veículos não carregada

**Solução**:
1. Verifique `vehicles.lua` para erros de sintaxe
2. Reinicie o resource: `/restart dayzepoch`
3. Verifique se spawns estão definidos

---

## Comandos Úteis do Console

### Gerenciamento de Recursos

```bash
# Iniciar resource
start nome_resource

# Parar resource
stop nome_resource

# Reiniciar resource
restart nome_resource

# Listar resources
resources

# Atualizar ACL
aclreload
```

### Gerenciamento de Jogadores

```bash
# Kickar jogador
kick jogador [razão]

# Banir jogador
ban jogador [razão]

# Listar jogadores
players

# Mensagem para todos
say Mensagem aqui
```

### Debug

```bash
# Habilitar debug
debugscript 3

# Ver logs em tempo real
tail -f logs/server.log

# Verificar performance
performance
```

---

## Manutenção

### Backup Regular

**Script de Backup (Linux)**:

```bash
#!/bin/bash
# backup_mta.sh

BACKUP_DIR="/backups/mta"
DATE=$(date +%Y%m%d_%H%M%S)

# Criar diretório
mkdir -p $BACKUP_DIR

# Backup de recursos
tar -czf $BACKUP_DIR/resources_$DATE.tar.gz /opt/mta-server/mods/deathmatch/resources/

# Backup de ACL
cp /opt/mta-server/mods/deathmatch/acl.xml $BACKUP_DIR/acl_$DATE.xml

# Backup de configuração
cp /opt/mta-server/mods/deathmatch/mtaserver.conf $BACKUP_DIR/mtaserver_$DATE.conf

# Backup de database
mysqldump -u dayz_user -p dayz_epoch > $BACKUP_DIR/database_$DATE.sql

echo "Backup completo em $BACKUP_DIR"
```

### Atualização

```bash
# 1. Parar servidor
./mta-server64 stop

# 2. Backup
./backup_mta.sh

# 3. Atualizar recursos
git pull origin main
cp -r * /opt/mta-server/mods/deathmatch/resources/

# 4. Reiniciar
./mta-server64
```

---

## Personalização Avançada

### Modificar Spawn Points

Edite `[DayZ]/dayzepoch/accounts.lua`:

```lua
-- Adicionar seus spawn points
local spawnPoints = {
    {x, y, z},
    {x, y, z},
    -- ...
}
```

### Modificar Loot

Edite `[DayZ]/dayzepoch/lootspawns.lua`:

```lua
-- Ajustar probabilidades
local lootTable = {
    {"item1", 0.5},  -- 50% de chance
    {"item2", 0.1},  -- 10% de chance
    -- ...
}
```

### Adicionar Novos Veículos

Edite `[DayZ]/dayzepoch/vehicles.lua`:

```lua
-- Adicionar novo veículo
vehicleList = {
    -- {model, slots, fuel, etc}
    {411, 20, 100, ...},
    -- ...
}
```

---

## Suporte

### Logs Importantes

| Arquivo | Localização | Propósito |
|---------|------------|-----------|
| `server.log` | `logs/server.log` | Logs gerais do servidor |
| `mtaserver.log` | `logs/mtaserver.log` | Logs de inicialização |
| `scripts.log` | `logs/scripts.log` | Erros de script |

### Links Úteis

- **MTA Wiki**: https://wiki.multitheftauto.com/
- **MTA Forum**: https://forum.multitheftauto.com/
- **Documentação Lua**: https://www.lua.org/manual/5.1/

---

## Conclusão

Seguindo este guia, você deve ter um servidor MTA DayZ Epoch funcionando perfeitamente. Lembre-se de:

- ✅ Fazer backups regulares
- ✅ Manter o servidor atualizado
- ✅ Monitorar logs para erros
- ✅ Ajustar configurações conforme necessário
- ✅ Testar mudanças em ambiente de desenvolvimento primeiro

**Bom jogo e boa sorte na sobrevivência!** 🧟‍♂️🔫
