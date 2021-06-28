import pygame

pygame.init()

display_width = 800
display_height = 800



display = pygame.display.set_mode((display_height,display_width))

hero_x = 100
hero_y = 100
hero_width = 20
hero_height = 25
speed = 2

pygame.display.set_caption('ABOBA')

def Update():
    global hero_x,hero_y
    game = True
    while game:
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                pygame.quit()
                quit()

        keys = pygame.key.get_pressed()
        if keys[pygame.K_RIGHT] and hero_x < 780:
            hero_x += speed
        if keys[pygame.K_DOWN] and hero_y < 780:
            hero_y += speed
        if keys[pygame.K_LEFT] and hero_x > 1:
            hero_x -= speed
        if keys[pygame.K_UP] and hero_y > 1:
            hero_y -= speed
        if (hero_x > 699 and hero_y > 699):
            pygame.quit()
            quit()
        display.fill((247,164,127))
        pygame.draw.rect(display, (255, 0, 0), (700, 700, 100, 100))
        pygame.draw.rect(display,(126,165,243),(hero_x,hero_y,hero_height,hero_width))
        pygame.display.update()
Update()
