local utils = {}

---
---Essa função habilita o modo UTF-8 no terminal.
---
function utils.enableUtf8()
    os.execute("chcp 65001")
end

---
---Faz o print da apresentação do simulador no terminal.
---
function utils.printHeader()
   print([[
+====================================================================+
+                   ++++++++++++++++++++++++++++++++++               +
+                   +Colossus Island Battle Simulator+               +
+                   ++++++++++++++++++++++++++++++++++               +
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


---
---Calcula uma barra de progresso ASCII baseada em um atributo.
---@param attribute number Número de 0 a 10.
---@return string
---
function utils.getProgressBar(attribute)
    local fullChar = "▰"
    local emptyChar = "▱"

    local result = ""
    for i = 1, 10, 1 do
        if i <= attribute then
            result = result .. fullChar
        else
            result = result .. emptyChar
        end
    end
    return result
end

---
---Faz o print das informações de uma criatura.
---@param creature table
---
function utils.printCreature(creature)
    -- Calculate health rate
    local healthRate = math.floor((creature.health / creature.maxHealth) * 10)

    -- Cartão
    print("| " .. creature.name)
    print("| ")
    print("| " .. creature.description)
    print("| ")
    print("| Atributos")
    print("|    Vida:         " .. utils.getProgressBar(healthRate))
    print("|    Ataque:       " .. utils.getProgressBar(creature.attack))
    print("|    Defesa:       " .. utils.getProgressBar(creature.defense))
    print("|    Velocidade:   " .. utils.getProgressBar(creature.speed))
end

---Pergunta ao usuário por um número, que é retornado pela função.
---@return any
function utils.ask()
    io.write("> ")
    local answer = io.read("*n")
    return answer
end

return utils
