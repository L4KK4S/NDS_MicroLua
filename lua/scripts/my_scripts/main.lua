-- On charge l'image dans la VRAM
image = Image.load("slime.png", VRAM)

while not Keys.held.Start do

    screen.drawGradientRect(SCREEN_UP, 0, 0, 256, 192, Color.new(31, 0, 0), Color.new(0, 31, 0), Color.new(31, 0, 0), Color.new(0, 31, 0))


    -- On affiche l'image en haut à gauche de l'écran tactile
    screen.blit(SCREEN_DOWN, 0, 0, image) -- Affiche l'image
    render()
end

-- Et on efface l'image de la mémoire
Image.destroy(image)
image = nil
