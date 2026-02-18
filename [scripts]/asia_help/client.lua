
        local screenW, screenH = guiGetScreenSize()
        helpwindow = guiCreateWindow((screenW - 746) / 2, (screenH - 441) / 2, 746, 441, "Painel de Ajuda", false)
        guiWindowSetSizable(helpwindow, false)
        guiSetVisible(helpwindow, false)

        helpmemo = guiCreateMemo(205, 30, 531, 401, 
        "Comandos Principais\n- F1 - Painel de Ajuda\n- F2 - Painel de Configurações\n- F6 - Painel de Grupo\n- T - Chat Local\n- Y - Chat de Equipe\n- U - Chat Global\n- X - Colar em veículos\n- Shift - Segurar-se em helicópteros quando próximo.\n- Backspace - Soltar-se do helicóptero.\n\nComandos de Animação\n- L - Deitar\n- , - Sentar\n- . - Levantar Mãos\n- ; - Gritar - Amigável\n\nComandos de Console\n- /give nomeJogador Quantia (dar dinheiro ao jogador) - Exemplo /give MischiefPlayer2 900\n- /kill - Suicidar-se ou matar-se.\n- /report - Reportar Bugs/Jogadores/Sugestões.\n- /grab - Segurar-se em helicópteros quando próximo.\n- /drop - Soltar-se do helicóptero."
        , false, helpwindow)
        guiMemoSetReadOnly(helpmemo, true)


        rulesbtn = guiCreateButton(9, 30, 186, 38, "Regras", false, helpwindow)
        guiSetProperty(rulesbtn, "NormalTextColour", "FFAAAAAA")
        commandsbtn = guiCreateButton(9, 78, 186, 38, "Comandos", false, helpwindow)
        guiSetProperty(commandsbtn, "NormalTextColour", "FFAAAAAA")
        infbtn = guiCreateButton(9, 126, 186, 38, "Informações", false, helpwindow)
        guiSetProperty(infbtn, "NormalTextColour", "FFAAAAAA")
        staffbtn = guiCreateButton(9, 174, 186, 38, "Lista de Admins", false, helpwindow)
        guiSetProperty(staffbtn, "NormalTextColour", "FFAAAAAA")    


    function rules ()
        rulestxt = fileOpen("Rules.txt", true)
        rulestxt1 = fileRead(rulestxt, 50000)
        guiSetText(helpmemo, rulestxt1)
     end
        addEventHandler("onClientGUIClick", rulesbtn, rules)
        
     function commands ()
        rulestxt = fileOpen("Commands.txt", true)
        rulestxt1 = fileRead(rulestxt, 50000)
        guiSetText(helpmemo, rulestxt1)
    end
        addEventHandler("onClientGUIClick", commandsbtn, commands)
        
     function information ()
        rulestxt = fileOpen("Information.txt", true)
        rulestxt1 = fileRead(rulestxt, 50000)
        guiSetText(helpmemo, rulestxt1)
    end
        addEventHandler("onClientGUIClick", infbtn, information)
        
    function admins ()
        rulestxt = fileOpen("Admins.txt", true)
        rulestxt1 = fileRead(rulestxt, 50000)
        guiSetText(helpmemo, rulestxt1)
    end
        addEventHandler("onClientGUIClick", staffbtn, admins)






bindKey('F1','down',
        function()
        local menu = helpwindow
        guiSetVisible(menu, not guiGetVisible(menu))
        showCursor(not isCursorShowing())
        end
        )
        
    

    


