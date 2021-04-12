import pygame
import random as rand

pygame.init()

display_witdh = int(800) # выбираем размеры окна игры
display_height = int(600)

display = pygame.display.set_mode((display_witdh, display_height)) # тут мы установили разрешение окна
pygame.display.set_caption("Dino") # тут я написал название игры сверху в окне

icon = pygame.image.load('icon.png') # тут загрузил и поставил иконку игры
pygame.display.set_icon(icon)

objects_image = [pygame.image.load('billy.png'), pygame.image.load('van.png'), pygame.image.load('mmm.png')]
boys_options = [69, 451, 37, 420, 40, 410]

cloud_img = [pygame.image.load('cloud.png'), pygame.image.load('cloud1.png')]

dino_animation = [pygame.image.load('dino1.png'), pygame.image.load('dino2.png'), pygame.image.load('dino3.png'),
                  pygame.image.load('dino4.png'), pygame.image.load('dino5.png')]

image_count = 0

pygame.mixer.music.load('background.mp3')
#jump_sound = pygame.mixer.music.load('jump.mp3')
#death_sound = pygame.mixer.music.load('death.mp3')

class objects():
    def __init__(self, x, y, width, image, speed):
        self.x = x
        self.y = y
        self.width = width
        self.image = image
        self.speed = speed


    def move(self):
        if self.x >= -self.width:
            display.blit(self.image, (self.x, self.y))
            #pygame.draw.rect(display, (0, 255, 0), (self.x, self.y, self.width, self.height))
            self.x -= self.speed
            return True
        else:
            # self.x = display_witdh + 150 + rand.randrange(-100, 80)
            return False

    def return_self(self, radius, y, width, image):
        self.x = radius
        self.y = y
        self.width = width
        self.image = image
        display.blit(self.image, (self.x, self.y))


hero_width = 60 # размеры персонажа
hero_height = 100

hero_x_position = display_witdh // 3 # тут я выбираю позицию где будет персонаж
hero_y_position = display_height - hero_height - 100

billy_width = 20
billy_height = 70
billy_x = display_witdh - 50
billy_y = display_height - billy_height - 300

display_update_time = pygame.time.Clock() # тут будет установлено время обновления экрана

make_jump = False

jump_count = 30

scores = 0
best_result = 0

above_objects = False

def run_game(): # запускаю функцию бесконечного цикла в которой работает игра
    global make_jump
    game = True
    pygame.mixer.music.play(-1)

    objects_arr = []
    create_boys(objects_arr)
    land = pygame.image.load('LandLevel.jpg')

    cloud = clouds()

    while True:
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                pygame.quit()
                quit()

        keys = pygame.key.get_pressed()
        if keys[pygame.K_SPACE]:
            make_jump = True
        if keys[pygame.K_ESCAPE]:
            pause()


        if make_jump:
            jump()

        score_count(objects_arr)

        display.blit(land, (0, 0))
        print_text('score: ' + str(scores), 700, 10)
        draw_array(objects_arr)
        move_objects(cloud)
        dino_anim()

        if check_collision(objects_arr):
            game = False
            #pygame.mixer.Sound.play(death_sound)
            pygame.mixer.music.stop()
            return over()

        pygame.display.update() # обновляю экран чтобы он выводил все
        display_update_time.tick(80)



def jump():
    global hero_y_position, jump_count, make_jump
    if jump_count >= -30:
        #if jump_count == 30:
            #pygame.mixer.music.play(jump_sound)
        hero_y_position -= jump_count / 2.5
        jump_count -= 1
    else:
        jump_count = 30
        make_jump = False

def create_boys(array):
    choice = rand.randrange(0, 3)
    img = objects_image[choice]
    width = boys_options[choice * 2]
    height = boys_options[choice * 2 + 1]
    array.append(objects(display_witdh + 20, height, width, img, 4))

    choice = rand.randrange(0, 3)
    img = objects_image[choice]
    width = boys_options[choice * 2]
    height = boys_options[choice * 2 + 1]
    array.append(objects(display_witdh + 300, height, width, img, 4))

    choice = rand.randrange(0, 3)
    img = objects_image[choice]
    width = boys_options[choice * 2]
    height = boys_options[choice * 2 + 1]
    array.append(objects(display_witdh + 600, height, width, img, 4))

def find_radius(array):
    maximum = max(array[0].x, array[1].x, array[2].x)

    if maximum < display_witdh:
        radius = display_witdh
        if radius - maximum < 50:
            radius += 150
    else:
        radius = maximum

    choice = rand.randrange(0, 5)
    if choice == 0:
        radius += rand.randrange(5, 10)
    else:
        radius += rand.randrange(500, 600)

    return radius

def draw_array(array):
    for gachi in array:
        check = gachi.move()
        if not check:
            radius = find_radius(array)

            choice = rand.randrange(0, 3)
            img = objects_image[choice]
            width = boys_options[choice * 2]
            height = boys_options[choice * 2 + 1]

            gachi.return_self(radius, height, width, img)

def clouds():
    choice = rand.randint(0, 1)
    img_rand_cloud = cloud_img[choice]

    cloud = objects(display_witdh, 80, 50, img_rand_cloud, 2)

    return cloud

def move_objects(cloud):
    check = cloud.move()
    if not check:
        choice = rand.randint(0, 1)
        img_rand_cloud = cloud_img[choice]
        cloud.return_self(display_witdh, rand.randrange(10, 200), cloud.width, img_rand_cloud)

def dino_anim():
    global image_count
    if image_count == 25:
        image_count = 0
    display.blit(dino_animation[image_count // 5], (hero_x_position, hero_y_position))
    image_count += 1

def print_text(message, x, y, font_color = (0, 0, 0), font_type = 'pixel.ttf', font_size = 30):
    font_type = pygame.font.Font(font_type, font_size)
    text = font_type.render(message, True, font_color)
    display.blit(text, (x, y))

def pause():
    paused = True
    pygame.mixer.music.pause()
    while paused:
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                pygame.quit()
                quit()

        print_text('Paused. Press enter to continue.', 160, 300)

        keys = pygame.key.get_pressed()
        if keys[pygame.K_RETURN]:
            paused = False

        pygame.display.update()
        display_update_time.tick(15)
    pygame.mixer.music.unpause()

def check_collision(barriers):
    for barrier in barriers:
        if hero_y_position + hero_height >= barrier.y:
            if barrier.x <= hero_x_position <= barrier.x + barrier.width:
                return True
            elif barrier.x <= hero_x_position + hero_width <= barrier.x + barrier.width:
                return True
    return False

def score_count(barriers):
    global scores, above_objects

    if not above_objects:
        for barrier in barriers:
            if barrier.x <= hero_x_position + hero_width / 2 <= barrier.x + barrier.width:
                if hero_y_position + hero_height - 5 <= barrier.y:
                    above_objects = True
                    break
    else:
        if jump_count == -30:
            scores += 1
            above_objects = False


def over():
    global scores, best_result
    if scores > best_result:
        best_result = scores
    stop = True
    while stop:
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                pygame.quit()
                quit()

        print_text('You lose. Retry? Y/ENTER, N/ESC', 100, 300)
        print_text('Best result: ' + str(best_result), 100, 320)

        keys = pygame.key.get_pressed()
        if keys[pygame.K_RETURN]:
            scores -= scores
            return True
        if keys[pygame.K_ESCAPE]:
            return False

        pygame.display.update()
        display_update_time.tick(15)

while run_game():
    pass
pygame.quit()
quit()