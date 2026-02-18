g_Root = getRootElement()


addEventHandler('onPlayerJoin',g_Root,
function ()
    outputChatBox('#880808'..getPlayerName(source)..'#D3D3D3 entrou no servidor.', getRootElement(), 255, 255, 255, true)
    end
)

 
addEventHandler('onPlayerQuit', g_Root,
    function(reason)
        outputChatBox('#D3D3D3[#880808' .. reason .. '#D3D3D3] #880808 ' .. getPlayerName(source) .. ' #D3D3D3 saiu do servidor.', getRootElement(), 255, 255, 255, true)
    end
)


-- Check if a nick is too long
addEventHandler( "onPlayerChangeNick", root,
	    function ( oldNick, newNick )
                if (string.find(newNick,"#%x%x%x%x%x%x")) or (string.find(newNick,"#")) then
                    cancelEvent()
			        outputChatBox("#880808[Aviso!] #D3D3D3Seu novo apelido contém um valor hexadecimal.", source, 211, 211, 211,true)
                elseif ( string.len ( newNick ) < 4 ) or ( string.len ( newNick ) > 15 ) then
                    cancelEvent()
			        outputChatBox("#880808[Aviso!] #D3D3D3Seu novo apelido é muito curto ou muito longo.", source, 211, 211, 211,true)
			        setPlayerName ( source, oldNick )
                else
                    outputChatBox('#880808' .. oldNick ..'#D3D3D3 mudou seu apelido para #880808' .. newNick, getRootElement(), 255, 255, 255, true)
                end
end)   




----///// anti color code & long name /////-----

-- Check the nick on connect
addEventHandler ( "onPlayerConnect", root,
    function ( playerNick, playerIP, playerUsername, playerSerial, playerVersionNumber )
        if ( playerNick == "Player" ) or ( playerNick == "player" ) then
        cancelEvent( true, "O apelido \"Player\" não é permitido, por favor mude para outro. Você pode mudar seu apelido no menu Configurações, aba Multiplayer." )
        elseif ( string.len ( playerNick ) > 18 ) then
		cancelEvent( true, "Seu apelido é muito longo, por favor mude para outro. Você pode mudar seu apelido no menu Configurações, aba Multiplayer." )
        elseif ( string.len ( playerNick ) < 4 ) then
            cancelEvent( true, "Seu apelido é muito curto, por favor mude para outro. Você pode mudar seu apelido no menu Configurações, aba Multiplayer." )
        elseif (string.find(playerNick,"#%x%x%x%x%x%x")) or (string.find(playerNick,"#")) then
            cancelEvent( true, "Usar código hexadecimal ou cores no nome não é permitido. Por favor mude para outro. Você pode mudar seu apelido no menu Configurações, aba Multiplayer." )
        end
    end
)