-- Exercice consistant à afficher deux rectangles avec l'un ayant une transparence opposée à l'autre
-- La transparence est affichée puis gérée avec les boutons haut et bas


coefficient = 50  -- initialisation du coefficient

while not Keys.newPress.Start do   -- boucle du programme

    Controls.read()  -- initialisation de la récupération des touches

    if Keys.held.Up and coefficient < 99 then  -- cas touche haut
        coefficient = coefficient + 1
    end

    if Keys.held.Down and coefficient > 0 then  -- cas touche bas
        coefficient = coefficient - 1
    end

    -- affichage premier rect
    tmp = coefficient 
    screen.setAlpha(tmp)
    screen.drawFillRect(SCREEN_DOWN, 0, 0, 50, 50, Color.new(31, 0, 0))

    -- affichage deuxième rect
    screen.setAlpha(99 - tmp)
    screen.drawFillRect(SCREEN_DOWN, 110, 0, 50, 50, Color.new(0, 31, 0))

    -- affichage texte
    screen.setAlpha(99)
    screen.print(SCREEN_UP, 0, 0, "Le coefficient est de:"..coefficient)

    screen.setAlpha(coefficient)    -- ajustement coeff

    render()    -- affichage 

end  -- fin du programme

coefficient = nil  -- libération de la mémoire
