local utils = {}




---Print Tela Main Menu
function utils.printHeader()
    print([[
 +====================================================================+
 +                    +++++++++++++++++++++++++++++++                 +
 +                    +Skull Island Battle Simulator+                 +
 +                    +++++++++++++++++++++++++++++++                 +
 +                                                                    + 
 +                          .______..______.                          +
 +                         /                \                         +
 +                        /      /-xx-\      \                        + 
 +                       |      \      /      |                       +
 +                       |       | xx |       |                       +
 +              XX       |  /__\        /__\  |       XX              +
 +            XX  X      | |  o  \    /  o  | |      X  XX            +
 +          XX     X     |  \____/    \____/  |     X     XX          +
 +     XXXXX     XX      \         /\         /      XX     XXXXX     +
 +    X        XX%XX@      \      /  \      /      @%%XX         X    +
 +    X       X  @%%XX@     |              |     @%%XX@  X       X    + 
 +    X      X     @%%XX@   |.= ;==;;==; =.|   @%%XX@     X      X    +
 +     X    X        @%%XX@                  @%%XX@        X    X     +
 +      X   X          @%%XX@              @%%XX@          X   X      +
 +       X  X            @%%XX@          @%%XX@            X  X       +
 +        XX X             @%%XX@      @%%XX@             X XX        +
 +          XXX              @%%XX@  @%%XX@              XXX          +
 +                             @%%XX%%XX@                             +
 +                               @%%XX@                               +
 +                             @%%XX@XX@@                             +
 +                              @@@  @@@                              +
 +                                                                    +
 +                                                                    +
 +====================================================================+
 ]]);


    
end


-- Função para obter a barra de progresso
function utils.getProgressBar(attribute)
    local fullChar = "■"
    local emptyChar = "□"

    local result = ""
    for i = 1, 10 do
        if i <= attribute then
            result = result .. fullChar
        else
            result = result .. emptyChar
        end
    end
    return result
end

-- Função para imprimir os atributos da criatura
function utils.printCreature(creature)
    local healthRate = math.floor((creature.health / creature.maxHealth) * 10)

    print('+=====================================================+')
    print('+ Nome: ' .. creature.name .. '                                      +')
    print('+ Classe: ' .. creature.class .. '                             +')
    print('+                                                     +')
    print('+ Atributos:                                          +')
    print('+    Vida:                                            +')
    print('+     ' .. utils.getProgressBar(healthRate) .. '                                      +')
    print('+    Ataque:                                          +')
    print('+     '..utils.getProgressBar(creature.attack)..'                                      +')
    print('+    Defesa:                                          +')
    print('+     ' .. utils.getProgressBar(creature.defense) .. '                                      +')
    print('+    Velocidade:                                      +')
    print('+     ' .. utils.getProgressBar(creature.speed) .. '                                      +')
    print('+=====================================================+')
end

return utils
