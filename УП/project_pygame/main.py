import pygame
import random


class Hero:
    """Класс Hero. Здесь описана вся работа с героем"""
    positions = list()  # Координаты героеа
    # Цвета для героев
    colors = {
        'RED': (237, 77, 12),
        'PURPLE': (130, 12, 247),
        'TURQUOISE': (22, 224, 214),
        'YELLOW': (213, 247, 12),
        'ORANGE': (240, 121, 40)
    }

    def __init__(self, size, type_hero):
        """Создание героя"""
        if type_hero == 'circle' or type_hero == 'square':
            self.width = size[0]
            self.height = size[0]
        else:
            self.width = size[0]
            self.height = size[1]
        self.type_hero = type_hero
        self.bgc = (125, 125, 125)
        self.x = 100
        self.y = 100
        self.speed = 1
        self.target = {'y': '', 'x': ''}
        self.__class__.positions.append([self.x, self.y])
        self.index = len(self.__class__.positions)-1
    
    #def __repr__(self):
    #    return f"{__class__.__name__ }(({self.width}x{self.height}), ({self.x}, {self.y}))"

    def update_positions(self):
        """Обновляем позиции героя в общеи списке позиций"""
        self.positions[self.index][0] = self.x
        self.positions[self.index][1] = self.y

    def get_all_positions(self, pos):
        """Вернет все позиции 'x' или 'y' """
        if pos == 'x':
            return [pos[0] for pos in self.positions]
        else:
            return [pos[1] for pos in self.positions]

    def set_map(self, x_start, x_end, y_start, y_end):
        """Создание карты для героя"""
        # Устанавливаем границы
        if self.type_hero == 'circle':
            x_start = x_start + self.width
            x_end = x_end - self.width
            y_start = y_start + self.width
            y_end = y_end - self.width
        elif self.type_hero == 'rect' or self.type_hero == 'square':
            x_end = x_end - self.width
            y_end = y_end - self.height
        self.mapp = {
            'x_start':x_start,
            'x_end': x_end,
            'y_start': y_start,
            'y_end': y_end
        }

    def set_color(self, **kwargs):
        """Установление цвета герою"""
        if kwargs.get('hex') != None:
            self.bgc = kwargs['hex']
        elif kwargs.get('color') != None:
            self.bgc = self.colors.get(kwargs['color'], (125, 125, 125))
        else:
            self.bgc = random.choice( list(self.colors.values()) )

    def set_type(self, type_hero):
        """Установление типа герою. (круг, квадрат, прямоугольник)"""
        if type_hero == 'circle' or type_hero == 'square':
            if self.width > self.height:
                self.height = self.width
            else:
                self.width = self.height
        self.type_hero = type_hero
        self.set_map(\
            self.mapp['x_start'],
            self.mapp['x_end'],
            self.mapp['y_start'],
            self.mapp['y_end'],
        )
    
    def set_speed(self, speed):
        """Установление скорости герою"""
        self.speed = speed

    def add_speed(self, speed):
        """Повышние скорости героя"""
        if speed < 0:
            self.sub_speed(speed)
        else:
            self.speed += speed
        print("speed: ", self.speed)
    
    def sub_speed(self, speed):
        """Понижение скорости героя"""
        if speed < 0:
            self.add_speed(speed)
        else:
            self.speed -= speed
            if self.speed < 0:
                self.speed = 0
        print("speed: ", self.speed)

    def set_pos(self, *args):
        """Установление позиций героя"""
        if args:
            self.x = args[0]
            self.y = args[1]
        else:
            self.x = random.randrange(self.mapp['x_start'], self.mapp['x_end'])
            self.y = random.randrange(self.mapp['y_start'], self.mapp['y_end'])
        self.update_positions()
    
    def draw(self, display):
        """Отрисовка героя"""
        if self.type_hero == 'circle':
            pygame.draw.circle(display, self.bgc, (self.x, self.y), self.width)
        elif self.type_hero == 'rect':
            pygame.draw.rect(display, self.bgc, (self.x, self.y, self.width, self.height))
        elif self.type_hero == 'square':
            pygame.draw.rect(display, self.bgc, (self.x, self.y, self.width, self.width))

    def set_target(self, *args):
        """Установление стороны в которую движется герой"""
        if not args:
            self.target['x'] = random.choice(['left', 'right'])
            self.target['y'] = random.choice(['top', 'bottom'])
        elif args[0] == 'left' or args[0] == 'right':
            self.target['x'] = args[0]
        elif args[1] == 'top' or args[1] == 'bottom':
            self.target['y'] = args[1]
        print(self.target)

    def navigation(self):
        """Передвижение героя"""
        if self.target['x'] == 'left':
            self.x -= self.speed
        elif self.target['x'] == 'right':
            self.x += self.speed
        if self.target['y'] == 'bottom':
            self.y += self.speed
        elif self.target['y'] == 'top':
            self.y -= self.speed

        # Уперся в другой объект
        is_altered = False
        for pos in self.positions:
            if (pos[0] == self.x) and (pos[1] == self.y):
                is_altered = True
                if self.target['x'] != '':
                    if self.target['x'] == 'left':
                        self.target['x'] = 'right'
                    elif self.target['x'] == 'right':
                        self.target['x'] = 'left'
                
                if self.target['y'] != '':
                    if self.target['y'] == 'top':
                        self.target['y'] = 'bottom'
                    elif self.target['y'] == 'bottom':
                        self.target['y'] = 'top'

        # Уперся в границу
        if not is_altered:
            if (self.x <= self.mapp['x_start']):
                self.target['x'] = 'right'
            elif (self.x > self.mapp['x_end']):
                self.target['x'] = 'left'
            
            if (self.y <= self.mapp['y_start']):
                self.target['y'] = 'bottom'
            elif (self.y >= self.mapp['y_end']):
                self.target['y'] = 'top'

        self.update_positions()


# Функционал игры
def Update(display, map_size, heroes):
    global stop, mode

    # Какая операция со скоростью. 
    # 1 - повысить скорость
    # 0 - ничего не делать
    # -1 - понизить скорость
    operating_speed = 0

    # Какую кнопку нажали
    for event in pygame.event.get():
        # Выход
        if event.type == pygame.QUIT:
            pygame.quit()
            quit()
        # Нажатие кнопки = зажатию
        elif mode == 'press':
        	if event.type == pygame.KEYDOWN:
                # Приостановление игры
        	    if event.key == pygame.K_ESCAPE: 
        	        stop = not stop
        	        print(stop)

                if not stop:
                    # Смена мода
                    if event.key == pygame.K_TAB:
                        mode = 'touch'

        # Нажатие кнопки = нажатию
        elif mode == 'touch':
            if event.type == pygame.KEYDOWN:
                # Приостановление игры
                if event.key == pygame.K_ESCAPE: 
                    stop = not stop
                    print(stop)
                
                if not stop:
                    # Создание нового героя
                    if event.key == pygame.K_SPACE and not stop:
                        hero = Hero((25,), 'circle')
                        # hero = Hero((50,), 'square')
                        hero.set_map( map_size["x_start"], map_size["x_end"], map_size["y_start"], map_size["y_end"] )
                        hero.set_speed(1)
                        hero.set_pos()
                        hero.set_target()
                        # hero.set_pos(50, 100)
                        # hero.set_target('', '')
                        hero.set_color()
                        heroes.append(hero)
                        del hero
                    # статус скорости = Повышение
                    elif event.key == pygame.K_UP:
                        operating_speed = 1
                    # # статус скорости = Понижение
                    elif event.key == pygame.K_DOWN:
                        operating_speed = -1
                    # Смена мода
                    elif event.key == pygame.K_TAB:
                        mode = 'press'
    
    # Отрисовка фона
    display.fill(bgc)
    
    # Если игра не пиостановлена
    if not stop:
        if mode == 'press':
            keys = pygame.key.get_pressed()
            # Создание новых персонажей
            if keys[pygame.K_SPACE]:
                hero = Hero((25,), 'circle')
                # hero = Hero((50,), 'square')
                hero.set_map( map_size["x_start"], map_size["x_end"], map_size["y_start"], map_size["y_end"] )
                hero.set_speed(1)
                hero.set_pos()
                hero.set_target()
                # hero.set_pos(50, 100)
                # hero.set_target('', '')
                hero.set_color()
                heroes.append(hero)
                del hero
            # статус скорости = Повышение
            elif keys[pygame.K_UP]:
                operating_speed = 1
            # статус скорости = Понижение
            elif keys[pygame.K_DOWN]:
                operating_speed = -1
            
        # Относиельно статуса скорости повышаем/понижаем скорость
        for hero in heroes:
        	if operating_speed == 1:
        	    hero.add_speed(1)
        	elif operating_speed == -1:
        	    hero.sub_speed(1)
        	hero.navigation()
        	hero.draw(display)
    # Возращаем нейтральный статус для скорости
    if operating_speed != 0:
        operating_speed = 0
    # Обновляем окно
    pygame.display.update()


if __name__ == '__main__':
    # Инициализация окна
    pygame.init()

    # Данные для окна
    display_size = {"width": 800, "height": 600}
    display = pygame.display.set_mode((display_size['width'], display_size['height']))
    pygame.display.set_caption("Bruh")
    # bgc = (255, 255, 255)
    bgc = (40, 40, 40)

    # Размер карты
    map_size = {
        "x_start": 0,
        "x_end": display_size['width'],
        "y_start": 0,
        "y_end": display_size['height'],
    }

    # Создание героя (шарика). Кладем его в спсок со всеми героями
    heroes = list()
    hero = Hero((25,), 'circle')
    # hero = Hero((50,), 'square')
    hero.set_map( map_size["x_start"], map_size["x_end"], map_size["y_start"], map_size["y_end"] )
    hero.set_speed(1)
    hero.set_target()
    hero.set_pos()
    hero.set_color()
    heroes.append(hero)
    del hero

    game = True  # Запушена ли игра
    stop = False  # Приостановлена ли игра
    mode = "touch"  # Мод. Либо 'touch', либо 'press'

    # Запуск игры
    while game:
        Update(display, map_size, heroes)
