-- chargement des fichiers
tiles = Image.load("data/img/tileset.png", VRAM) -- on charge les tiles
map = ScrollMap.new(tiles, "map.map", 16, 12, 16, 16) -- on charge la map
perso = Sprite.new("data/img/sprite.png", 24, 32, VRAM) -- on charge le sprite

-- variables du joueurs
direction = 4 -- direction du joueur - 1: bas - 2: gauche - 3: haut - 4: droite
x, y = 0, 0 -- coordonnées du player
pressed = false -- pression d'une touche

-- Ajout des animations, avec un intervalle de 300ms entre chaque frame
perso:addAnimation ({6,7,8}, 300)		-- Marcher vers le bas
perso:addAnimation ({9,10,11}, 300)	-- Marcher vers la gauche
perso:addAnimation ({0,1,2}, 300)		-- Marcher vers le haut
perso:addAnimation ({3,4,5}, 300)  -- Marcher vers la droite

while not Keys.newPress.Start do

    -- initialisation de la map et de la lecture des touches
    Controls.read()
    ScrollMap.draw(SCREEN_DOWN, map)

    touche = true  
	if Keys.held.Down then -- si on presse la touche du bas alors on met à jour la direction et la position		
		direction, y = 1, y+2	

	elseif Keys.held.Left then -- si on presse la touche de gauche alors on met à jour la direction et la position	
		direction, x = 2, x-2	

	elseif Keys.held.Up then -- si on presse la touche du haut alors on met à jour la direction et la position 
		direction, y = 3, y-2

	elseif Keys.held.Right then -- si on presse la touche du droite  alors on met à jour la direction et la position 
		direction, x = 4, x+2

	else					
		touche = false	

	end


    perso:playAnimation(SCREEN_DOWN, x, y, direction) -- on affiche le perso avec la direction actuelle

    if touche then -- s'il il bouge on comme l'animation
        perso:startAnimation(direction)
    else -- sinon on l'arrete						
		perso:resetAnimation(direction)	
    end

    render()
end

-- libération de la mémoire
perso:destroy()
perso = nil
map = Map.destroy(map)
map = nil
Image.destroy(tiles)
tiles = nil