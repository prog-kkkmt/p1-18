import pygame
from random import randint as rnd
pygame.init()

display_width = 900
display_height = 900

hero_x = 100
hero_y = 100
hero_width = 35
hero_height = 35
hero_color = (125, 125, 125)
speed = 2

display = pygame.display.set_mode((display_width, display_height))
pygame.display.set_caption('MyGame')

def DrawEvent():
    global hero_color
    if hero_x >= 400 and hero_y >= 400:
        pygame.draw.rect(display, (rnd(1,255),\
                                   rnd(1,255), rnd(1,255)), (rnd(1,750), rnd(1,750), rnd(1, 100), rnd(1, 100)))
        pygame.draw.rect(display, (rnd(1, 255), rnd(1,\
                                    255), rnd(1, 255)), (rnd(1, 750), rnd(1, 750), rnd(1, 100), rnd(1, 100)))
        hero_color = (rnd(1, 255), rnd(1, 255), rnd(1, 255))

def DrawLab():
    pygame.draw.rect(display, (0, 0, 0), (250, 250, 20, 20))

def Dead():
    if hero_x in range(217, 270) and hero_y in range(216, 270):
        pygame.quit()
        quit()

def Move():
    global hero_x, hero_y
    keys = pygame.key.get_pressed()
    if keys[pygame.K_LEFT] and hero_x > 10:
        hero_x -= speed
    if keys[pygame.K_RIGHT] and hero_x < 850:
        hero_x += speed
    if keys[pygame.K_UP] and hero_y > 10:
        hero_y -= speed
    if keys[pygame.K_DOWN] and hero_y < 850:
        hero_y += speed

def Update():
    game = True

    while game:
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                pygame.quit()
                quit()

        display.fill((230, 230, 230))

        DrawEvent()
        Move()
        DrawLab()
        Dead()
        pygame.draw.rect(display, hero_color, (hero_x, hero_y, hero_width, hero_height))
        pygame.display.update()


Update()
