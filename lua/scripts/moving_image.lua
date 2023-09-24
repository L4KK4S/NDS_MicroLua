-- Exercice consistant à bouger une image avec le stylet

-- load the background image
background = Image.load("data/img/forest.png", VRAM)
screen.blit(SCREEN_DOWN, 0, 0, background) -- display the background

-- image specification
x, y = 0, 0 
slime = Image.load("data/img/slime.png", VRAM) -- load the slime image
image_size = Image.width

while not Keys.newPress.Start do   -- boucle du programme

    Controls.read()  -- initialisation de la récupération des touches

    screen.blit(SCREEN_DOWN, 0, 0, background) -- display the background
    screen.blit(SCREEN_DOWN, x, y, slime) -- display the slime

    -- on update la position grace à la lecture des mouvements du stylet
    x = x + Stylus.deltaX
    y = y + Stylus.deltaY

    -- gestion de la sortie de l'image hors du cadre
    if y > 192 -  Image.height(slime) then  -- s'il va trop bas on le régularise
        y = 192 - Image.height(slime)
    end
    if y < 0 then -- s'il va trop haut on le régularise
        y = 0
    end
    if  x > 256 -  Image.width(slime) then  -- s'il va trop à gauche on le régularise
        x = 256 - Image.width(slime)
    end
    if x < 0 then -- s'il va trop à droite on le régularise
        x = 0
    end

    screen.print(SCREEN_UP, 0, 0, "delta x: "..Stylus.deltaX.."\ndelta y: "..Stylus.deltaY) -- on montre les mouvements du styles (pour débug)

    render()    -- affichage 

end  -- fin de la boucle principale

-- on détruit les variables et on efface la mémoire
Image.destroy(background) 
Image.destroy(slime)

background = nil
slime = nil

x = nil
y = nil
