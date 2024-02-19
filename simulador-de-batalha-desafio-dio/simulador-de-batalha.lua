os.execute("chcp 65001")
os.execute("clear")



--dependencies

local player = require("./definitions/player")
local creature = require("./definitions/creature")



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


 local boss = creature    
