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
    else
        print([[Digite sim ou nao]])
        manual()
    end
        
end



    -- repeat
    --     io.write([[Digite iniciar para começar o jogo: ]])
    --     respota = io.read()
    --     if(string.lower(resposta) = "iniciar") then 
    --         return true
    --     else
    --         io.write("Digite ")
    --     end
    -- until()



function cria_numero_aleatorio()
    return 50
end

function captura_palpite()
    numero_aletorio = cria_numero_aleatorio()
    while true do 
        io.write("\nAdvinhe o numero:")
        palpite = io.read()
        if type(tonumber(palpite)) == "number" then
            palpite = tonumber(palpite)
            if palpite < numero_aletorio then 
                print("O numero secreto eh maior que ", palpite)
            elseif palpite > numero_aletorio then 
                print("O numero secreto  menor que", palpite)
            else    
                print("PARABENS VOCE ACERTOU !!!")
                break
            end
        else  
            print("Por favor digite um numero")
        end
    end
end

os.execute("cls")
saudacao_inicial()

manual()

os.execute("cls")
captura_palpite()
