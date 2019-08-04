function saudacao_inicial()
    print("\nBem Vindo ao Jogo Advinhe o Numero\
Este jogo foi criado pelo Nailan Ferreira\
durante seus estudos sobre a linguagem Lua\
\nA licenca deste software eh a GPL3.0")

end

function manual()    
    io.write("\nDeseja ler o manual do jogo? ")
    local resposta = io.read()

    os.execute("cls")

    if(string.lower(resposta) == "sim") then
        print("\nEste eh um jogo de advinhacao onde o computador ira\
escolher um numero aleatorio, que o jogador precisara\
descobrir por simples processo de tentativa e erro.")

        print("\nDigite qualquer tecla para iniciar o game")
        io.read()
    elseif (string.lower(resposta) == "nao") then
        print("\nDigite qualquer tecla para iniciar o game")
        io.read()
    else
        print([[Digite sim ou nao]])
        manual()
    end
        
end

function cria_numero_aleatorio()
    return 50
end

function captura_palpite()
    while true do 
        io.write("\nAdvinhe o numero:")
        palpite = io.read()
        if type(tonumber(palpite)) == "number" then
            palpite = tonumber(palpite)
            return palpite
        else  
            os.execute("cls")
            print("Por favor digite um numero")
        end
    end
end

function compara_com_palpite(numero_secreto, palpite_do_jogador)
    if palpite_do_jogador < numero_secreto then 
        print("O numero secreto eh maior que", palpite_do_jogador)
        return false
    elseif palpite_do_jogador > numero_secreto then 
        print("O numero secreto  menor que", palpite_do_jogador)
        return false
    else    
        print("PARABENS VOCE ACERTOU !!!")
        return true
    end
end

function partida(numero_secreto)
    palpite = captura_palpite()
    return compara_com_palpite(numero_secreto, palpite)
end

function loop_jogo()
    numero_secreto = cria_numero_aleatorio()
    usuario_acertou = false
    while not usuario_acertou do 
        usuario_acertou = partida(numero_secreto)
    end 
end

-- os.execute("cls")
-- saudacao_inicial()

-- manual()

os.execute("cls")
loop_jogo()
