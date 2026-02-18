# MTA-DayZ-Asia Gamemode

Olá pessoal! Estou lançando este gamemode baseado no trabalho de Marwin & Rivor's. Trabalhei ativamente neste gamemode por cerca de um ano, fazendo correções e adicionando novos recursos. Como não estou mais ativo no desenvolvimento deste gamemode, espero que ele seja compartilhado e desenvolvido ainda mais por outras pessoas :) Aproveitem!

## Guia de Instalação

### Método Rápido

Copie toda a pasta e cole na pasta de resources.
Copie o ACL e MTAserver para a pasta deathmatch e pronto!

### Método Alternativo

Você pode adicionar isto ao seu ACL se desejar usar seu próprio ACL
     
    <object name="resource.webadmin"></object>
    <object name="resource.admin"></object>
    <object name="resource.acpanel"></object>
    <object name="resource.asia_admin"></object>
    <object name="resource.dayzepoch"></object>
    <object name="resource.asia_login"></object>
    <object name="resource.asia_modloader"></object>
    <object name="resource.asia_group"></object>
    <object name="user.2ndofIcarus"></object>1

Crie um grupo no seu ACL para a staff, isso é usado para adicionar skin de staff e privilégios no acesso administrativo. 

    <group name="Staff">
    <acl name="Staff"></acl>
    <object name="user.NameHere"></object>
    <object name="user.NameHere"></object>
    </group>

Você também precisa adicioná-los usando sua própria configuração do mtaserver.

    <resource src="admin" startup="1" protected="0" />
    <resource src="defaultstats" startup="1" protected="0" />
    <resource src="reload" startup="1" protected="0" />
    <resource src="webadmin" startup="1" protected="0" />
    <resource src="acpanel" startup="1" protected="0" />
   
    <resource src="dayzepoch" startup="1" protected="0" />
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
    
E está tudo pronto!
