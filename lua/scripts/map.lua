-- variables du jeu
tile_size = 16
map_x, map_y = 16, 15
sprite_width, sprite_height = 24, 32
x_velocity, y_velocity = 2, 2

-- chargement des fichiers
tiles = Image.load("data/img/tileset.png", VRAM) -- on charge les tiles
map = ScrollMap.new(tiles, "data/map/map.map", map_x, map_y, tile_size, tile_size) -- on charge la map
perso = Sprite.new("data/img/sprite.png", sprite_width, sprite_height, VRAM) -- on charge le sprite

-- variables du joueur
direction = 4 -- direction du joueur - 1: bas - 2: gauche - 3: haut - 4: droite
x, y = 0, 0 -- coordonnées du player
pressed = false -- pression d'une touche
x_scroll, y_scroll = 0, 0
x_scroll_max, y_scroll_max = 0, 3 * tile_size

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
		direction = 1 -- met à jour la direction correspondante
        if (y + sprite_height) < 192 then -- si on est pas à la bordure on se déplace
            y = y + y_velocity
        else
            screen.print(SCREEN_UP, 0, 0, "DEPLACEMENT BAS")
            if y_scroll < y_scroll_max then -- si on peut encore scroller la map on le fait
                y_scroll = y_scroll + tile_size / 8
            end
            ScrollMap.scroll(map, x_scroll, y_scroll) -- on affiche le scroll de la map
        end

	elseif Keys.held.Left then -- si on presse la touche de gauche alors on met à jour la direction et la position	
		direction = 2
        if x > 0 then
            x = x - x_velocity
        else
            screen.print(SCREEN_UP, 0, 0, "DEPLACEMENT GAUCHE")
            if x_scroll > 0 then -- si on peut encore scroller la map on le fait
                x_scroll = x_scroll + tile_size / 8
            end
            ScrollMap.scroll(map, x_scroll, y_scroll) -- on affiche le scroll de la map
        end

	elseif Keys.held.Up then -- si on presse la touche du haut alors on met à jour la direction et la position 
		direction = 3
        if y > 0 then
           y = y - y_velocity
        else
            screen.print(SCREEN_UP, 0, 0, "DEPLACEMENT HAUT")
            if y_scroll > 0 then -- si on peut encore scroller la map on le fait
                y_scroll = y_scroll - tile_size / 8
            end
            ScrollMap.scroll(map, x_scroll, y_scroll) -- on affiche le scroll de la map
        end

	elseif Keys.held.Right then -- si on presse la touche du droite  alors on met à jour la direction et la position 
		direction = 4
        if (x + sprite_width) < 256 then
            x = x + x_velocity
        else
            screen.print(SCREEN_UP, 0, 0, "DEPLACEMENT DROITE")
            if x_scroll < x_scroll then -- si on peut encore scroller la map on le fait
                x_scroll = x_scroll + tile_size / 8
            end
            ScrollMap.scroll(map, x_scroll, y_scroll) -- on affiche le scroll de la map
        end

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