-- Création d'un morpion (tic-tac-toe game)

-- variables nécéssaires
game_board =  {
    {" ", " ", " "},
    {" ", " ", " "},
    {" ", " ", " "}
}

white = Color.new(31, 31, 31)
red = Color.new(31, 0, 0)
turn = 1
game = true


-- définition des fonctions

function board_diplay() -- fonction permettant affichant la grille du jeu
    
    -- draw vertical lines
    screen.drawFillRect(SCREEN_DOWN, 53, 71, 203, 71, white)
    screen.drawFillRect(SCREEN_DOWN, 53, 121, 203, 121, white)

    -- draw horizontal lines
    screen.drawFillRect(SCREEN_DOWN, 103, 21, 103, 171, white)
    screen.drawFillRect(SCREEN_DOWN, 153, 21, 153, 171, white)

    -- draw the cells
    screen.print(SCREEN_DOWN, 68, 36, game_board[1][1])
    screen.print(SCREEN_DOWN, 118, 36, game_board[1][2])
    screen.print(SCREEN_DOWN, 168, 36, game_board[1][3])

    screen.print(SCREEN_DOWN, 68, 86, game_board[2][1])
    screen.print(SCREEN_DOWN, 118, 86, game_board[2][2])
    screen.print(SCREEN_DOWN, 168, 86, game_board[2][3])

    screen.print(SCREEN_DOWN, 68, 136, game_board[3][1])
    screen.print(SCREEN_DOWN, 118, 136, game_board[3][2])
    screen.print(SCREEN_DOWN, 168, 136, game_board[3][3])

end


function get_click() -- fonction récupérant les clicks sur les cases du jeu

    if Stylus.held then  -- si le stylet touche l'écran

        -- fonctionnement pour la case 1 le raisonnement pour les autres cases est analogue
        if 53 < Stylus.X and Stylus.X < 100 and 36 < Stylus.Y and Stylus.Y < 83 then -- on regarde si les coordonnées du clic appartiennet aux coordonnées de la case no.1
            
            if game_board[1][1] == " " then -- on regarde si la case est libre

                if turn == 1 then -- si c'est le tour du player 1
                    game_board[1][1] = "X" -- on affiche un X
                    turn = 2 -- ce sera au player 2 de jouer au prochain tour

                else --sinon c'est le tour du player 2
                    game_board[1][1] = "O" -- on affiche un O
                    turn = 1 -- ce sera au player 1 de jouer au prochain tour
                end 

            end
    
        end

        -- case 2
        if 103 < Stylus.X and Stylus.X < 150 and 36 < Stylus.Y and Stylus.Y < 83 then

            if game_board[1][2] == " " then

                if turn == 1 then
                    game_board[1][2] = "X"
                    turn = 2

                else
                    game_board[1][2] = "O"
                    turn = 1
                end 

            end

        end

        -- case 3
        if 153 < Stylus.X and Stylus.X < 200 and 36 < Stylus.Y and Stylus.Y < 83 then

            if game_board[1][3] == " " then

                if turn == 1 then
                    game_board[1][3] = "X"
                    turn = 2

                else
                    game_board[1][3] = "O"
                    turn = 1
                end 

            end

        end

        -- case 4
        if 53 < Stylus.X and Stylus.X < 100 and 86 < Stylus.Y and Stylus.Y < 133 then

            if game_board[2][1] == " " then

                if turn == 1 then
                    game_board[2][1] = "X"
                    turn = 2

                else
                    game_board[2][1] = "O"
                    turn = 1
                end 

            end

        end

        -- case 5
        if 103 < Stylus.X and Stylus.X < 150 and 86 < Stylus.Y and Stylus.Y < 133 then

            if game_board[2][2] == " " then

                if turn == 1 then
                    game_board[2][2] = "X"
                    turn = 2

                else
                    game_board[2][2] = "O"
                    turn = 1
                end 

            end

        end

        -- case 6
        if 153 < Stylus.X and Stylus.X < 200 and 86 < Stylus.Y and Stylus.Y < 133 then

            if game_board[2][3] == " " then

                if turn == 1 then
                    game_board[2][3] = "X"
                    turn = 2

                else
                    game_board[2][3] = "O"
                    turn = 1
                end 

            end

        end

        -- case 7
        if 53 < Stylus.X and Stylus.X < 100 and 136 < Stylus.Y and Stylus.Y < 183 then
            
            if game_board[3][1] == " " then

                if turn == 1 then
                    game_board[3][1] = "X"
                    turn = 2

                else
                    game_board[3][1] = "O"
                    turn = 1
                end 

            end

        end

        -- case 8
        if 103 < Stylus.X and Stylus.X < 150 and 136 < Stylus.Y and Stylus.Y < 183 then

            if game_board[3][2] == " " then

                if turn == 1 then
                    game_board[3][2] = "X"
                    turn = 2

                else
                    game_board[3][2] = "O"
                    turn = 1
                end 

            end

        end

        -- case 9
        if 153 < Stylus.X and Stylus.X < 200 and 136 < Stylus.Y and Stylus.Y < 183 then

            if game_board[3][3] == " " then

                if turn == 1 then
                    game_board[3][3] = "X"
                    turn = 2

                else
                    game_board[3][3] = "O"
                    turn = 1
                end 

            end

        end

    end


end


function win()
    
    -- fonctionnement pour l'horizontale 1, le raisonnement est analogue pour les autres droites
    if game_board[1][1] ~= " " and game_board[1][1] == game_board[1][2] and game_board[1][2] == game_board[1][3] then -- on vérifie que la droite est remplie et l'égalité des ses 3 éléments

        if game_board[1][1] == "X" then -- si les 3 éléments valent "X" alors le Player 1 a gagné
            screen.print(SCREEN_UP, 0, 0, "Player 1 a gagne")
        else -- sinon le Player  a gagné
            screen.print(SCREEN_UP, 0, 0, "Player 2 a gagne")
        end

        screen.drawFillRect(SCREEN_DOWN, 53, 40, 203, 40, red) -- on trace la ligne qui indique que 3 cases sont alignées

        game = false -- le jeu se finit
    
    end

    -- horizontale 2
    if game_board[2][1] ~= " " and game_board[2][1] == game_board[2][2] and game_board[2][2] == game_board[2][3] then

        if game_board[2][1] == "X" then 
            screen.print(SCREEN_UP, 0, 0, "Player 1 a gagne")
        else
            screen.print(SCREEN_UP, 0, 0, "Player 2 a gagne")
        end

        screen.drawFillRect(SCREEN_DOWN, 53, 90, 203, 90, red) 

        game = false
    
    end

    -- horizontale 3
    if game_board[3][1] ~= " " and game_board[3][1] == game_board[3][2] and game_board[3][2] == game_board[3][3] then

        if game_board[3][1] == "X" then 
            screen.print(SCREEN_UP, 0, 0, "Player 1 a gagne")
        else
            screen.print(SCREEN_UP, 0, 0, "Player 2 a gagne")
        end

        screen.drawFillRect(SCREEN_DOWN, 53, 140, 203, 140, red) 

        game = false
    
    end

    -- verticale 1
    if game_board[1][1] ~= " " and game_board[1][1] == game_board[2][1] and game_board[2][1] == game_board[3][1] then

        if game_board[1][1] == "X" then 
            screen.print(SCREEN_UP, 0, 0, "Player 1 a gagne")
        else
            screen.print(SCREEN_UP, 0, 0, "Player 2 a gagne")
        end

        screen.drawFillRect(SCREEN_DOWN, 71, 21, 71, 171, red) 

        game = false
    
    end

    -- verticale 2
    if  game_board[1][2] ~= " " and game_board[1][2] == game_board[2][2] and game_board[2][2] == game_board[3][2] then

        if game_board[1][2] == "X" then 
            screen.print(SCREEN_UP, 0, 0, "Player 1 a gagne")
        else
            screen.print(SCREEN_UP, 0, 0, "Player 2 a gagne")
        end

        screen.drawFillRect(SCREEN_DOWN, 121, 21, 121, 171, red)

        game = false
    
    end

    -- verticale 3
    if game_board[1][3] ~= " " and game_board[1][3] == game_board[2][3] and game_board[2][3] == game_board[3][3] then

        if game_board[1][3] == "X" then
            screen.print(SCREEN_UP, 0, 0, "Player 1 a gagne")
        else
            screen.print(SCREEN_UP, 0, 0, "Player 2 a gagne")
        end

        screen.drawFillRect(SCREEN_DOWN, 171, 21, 171, 171, red)

        game = false
    
    end

    -- diagonale
    if game_board[1][1] ~= " " and game_board[1][1] == game_board[2][2] and game_board[2][2] == game_board[3][3] then

        if game_board[1][1] == "X" then 
            screen.print(SCREEN_UP, 0, 0, "Player 1 a gagne")
        else
            screen.print(SCREEN_UP, 0, 0, "Player 2 a gagne")
        end

        screen.drawLine(SCREEN_DOWN, 53, 21, 203, 171, red)

        game = false
    
    end

    -- antidiagonale
    if game_board[1][3] ~= " " and game_board[1][3] == game_board[2][2] and game_board[2][2] == game_board[3][1] then

        if game_board[1][3] == "X" then 
            screen.print(SCREEN_UP, 0, 0, "Player 1 a gagne")
        else
            screen.print(SCREEN_UP, 0, 0, "Player 2 a gagne")
        end

        screen.drawLine(SCREEN_DOWN, 203, 21, 53, 171, red)
        
        game = false

    end

end


function replay()

    screen.print(SCREEN_UP, 0, 15, "Appuyer sur A pour rejouer")

    if Keys.held.A then 

        game_board =  {
            {" ", " ", " "},
            {" ", " ", " "},
            {" ", " ", " "}
        }
        turn = 1
        game = true
    
    end

end


while not Keys.newPress.Start do   -- boucle du programme

    Controls.read()  -- initialisation de la récupération des touches

    board_diplay()
    get_click()
    win()

    if not game then 
        replay()
    end

    render()    -- affichage 

end  -- fin de la boucle principale


-- on libère la mémoire
white = nil
red = nil
turn = nil
game = nil