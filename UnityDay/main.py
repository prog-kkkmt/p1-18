import pygame
import webbrowser
pygame.init()

click_sound = pygame.mixer.Sound('click.wav')
pygame.mixer.music.load('zazigai.mp3')
pygame.mixer.music.play(-1)

display_width = 1280
display_height = 1024

display = pygame.display.set_mode((display_width, display_height))


# Screen
class Screen:
    def __init__(self):
        self.Wind = True
        self.Full = False
        self.tokenvid = 0
        self.tokenvid1 = 0
        self.tokenvid2 = 0
        self.tokenwik = 0
        self.tokenaud = 0
        self.tokentes = 0
        self.tokenwikmin = 0
        self.tokenwikpoz = 0
        self.slide = 0
        self.play = 1
        self.noplay = 1

def fullscreen():
    global display
    display = pygame.display.set_mode((display_width, display_height), pygame.FULLSCREEN)
    sd.Wind = False
    sd.Full = True

def window():
    global display
    display = pygame.display.set_mode((display_width, display_height))
    sd.Wind = True
    sd.Full = False
# Button, Text
class Button: # создаем класс кнопки
    def __init__(self, width, height):
        self.width = width # ширина и высота кнопки
        self.height = height
        self.active_color = (151, 151, 151) # выбираем цвет кнопки в простое и наведении
        self.inactive_color = (192, 192, 192)

    def Draw(self, x, y, message, action=None, font_size=30): # координаты, сообщение, действие при нажатии, размер шриф
        mouse = pygame.mouse.get_pos()
        click = pygame.mouse.get_pressed()
        if x < mouse[0] < x + self.width and y < mouse[1] < y + self.height:
            pygame.draw.rect(display, self.active_color, (x, y, self.width, self.height))
            if click[0] == 1 and action is not None:
                pygame.mixer.Sound.play(click_sound)
                if action == quit:
                    pygame.quit()
                    quit()
                action()
                pygame.time.delay(200)
        else:
            pygame.draw.rect(display, self.inactive_color, (x, y, self.width, self.height))
        print_text(message=message, x=x + 10, y=y + 10, font_size=font_size)

def video():
    if sd.tokenvid == 0:
        webbrowser.open('https://www.youtube.com/watch?v=PjJzuSK-WF4', new=1)
        sd.tokenvid = 1

def video1():
    if sd.tokenvid1 == 0:
        webbrowser.open('https://www.youtube.com/watch?v=4QynvHbvICI', new=1)
        sd.tokenvid1 = 1

def video2():
    if sd.tokenvid2 == 0:
        webbrowser.open('https://www.youtube.com/watch?v=nb3OfToV5T0', new=1)
        sd.tokenvid2 = 1

def wikiUnity():
    if sd.tokenwik == 0:
        webbrowser.open('https://ru.wikipedia.org/wiki/%D0%94%D0%B5%D0%BD%D1%8C_%D0%BD%D0%B0%D1%80%D0%BE%D0%B4%D0%BD%D0%BE%D0%B3%D0%BE_%D0%B5%D0%B4%D0%B8%D0%BD%D1%81%D1%82%D0%B2%D0%B0', new=1)
        sd.tokenwik = 1

def wikiMinin():
    if sd.tokenwikmin == 0:
        webbrowser.open('https://ru.wikipedia.org/wiki/%D0%9A%D1%83%D0%B7%D1%8C%D0%BC%D0%B0_%D0%9C%D0%B8%D0%BD%D0%B8%D0%BD', new=1)
        sd.tokenwikmin = 1

def wikiPozar():
    if sd.tokenwikpoz == 0:
        webbrowser.open('https://ru.wikipedia.org/wiki/%D0%9F%D0%BE%D0%B6%D0%B0%D1%80%D1%81%D0%BA%D0%B8%D0%B9,_%D0%94%D0%BC%D0%B8%D1%82%D1%80%D0%B8%D0%B9_%D0%9C%D0%B8%D1%85%D0%B0%D0%B9%D0%BB%D0%BE%D0%B2%D0%B8%D1%87', new=1)
        sd.tokenwikpoz = 1

def aud():
    if sd.tokenaud == 0:
        webbrowser.open('https://www.youtube.com/watch?v=ScMFk-_bWMU', new=1)
        sd.tokenaud = 1

def test():
    if sd.tokentes == 0:
        webbrowser.open('http://fishtest.mcdir.ru.mcpre.ru/', new=1)
        sd.tokentes = 1

def sld():
    sd.slide = 1
def sld1():
    sd.slide = 0
def sld2():
    sd.slide = 2
def sld3():
    sd.slide = 3

def ref():
    sd.tokenvid = 0
    sd.tokenvid1 = 0
    sd.tokenvid2 = 0
    sd.tokenwik = 0
    sd.tokenaud = 0
    sd.tokentes = 0
    sd.tokenwikmin = 0
    sd.tokenwikpoz = 0

def mus():
    if sd.play == 1:
        pygame.mixer.music.pause()
        sd.play = 0
        sd.noplay = 1
    elif sd.noplay == 1:
        pygame.mixer.music.unpause()
        sd.play = 1
        sd.noplay = 0

def print_text(message, x, y, font_color = (0, 0, 0), font_type = 'bold.ttf', font_size = 30):
    font_type = pygame.font.Font(font_type, font_size)
    text = font_type.render(message, True, font_color)
    display.blit(text, (x, y))

sd = Screen()

while True:
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            pygame.quit()
            quit()
    button_exit = Button(85, 40)
    button_wiki = Button(85, 40)
    button_wikiT = Button(280, 40)
    button_wikiTT = Button(320, 40)
    button_video = Button(75, 40)
    button_refresh = Button(100, 40)
    button_music = Button(130, 40)
    button_audio = Button(135, 40)
    button_test = Button(65, 40)
    button_geo = Button(85, 40)
    button_back = Button(75, 40)
    if sd.Wind == True:
        button_fullscreen = Button(155, 40)
    else:
        button_fullscreen = Button(175, 40)
    display.fill((212, 210, 210))
    if sd.slide == 0:
        print_text('Материалы', 100, 300, font_size= 60)
        print_text('Интерактив', 550, 300, font_size=60)
        print_text('Мероприятия', 950, 300, font_size=60)
        print_text('День народного единства', display_width/2 - 250, 100, font_size=60)
        button_wiki.Draw(100, 350, 'Статьи', sld2)
        button_video.Draw(100, 400, 'Видео', sld3)
        button_audio.Draw(100, 450, 'Аудиокнига', aud)
        button_test.Draw(550, 350, 'Тест', test)
        button_geo.Draw(950, 350, 'Адреса', sld)
    elif sd.slide == 1:
        print_text('Мероприятия и адреса.', 480, 300, font_size=60)
        print_text('Памятник Минину И Пожарскому, адрес: Красная Площадь, Москва, 109012', 100, 400)
        print_text('Фестиваль День народного единства! ВДНХ с 4 по 8 ноября.', 100, 450)
        button_back.Draw(650, 500, 'Назад', sld1)
    elif sd.slide == 2:
        print_text('Статьи.', 580, 300, font_size=60)
        button_wikiT.Draw(100, 350, 'День народного единства.', wikiUnity)
        button_wikiT.Draw(100, 400, 'Кузьма Минин.', wikiMinin)
        button_wikiT.Draw(100, 450, 'Дмитрий Пожарский', wikiPozar)
        button_back.Draw(620, 500, 'Назад', sld1)
    elif sd.slide == 3:
        print_text('Видео.', 580, 300, font_size=60)
        button_wikiTT.Draw(100, 350, 'Советский фильм.', video)
        button_wikiTT.Draw(100, 400, 'Подвиг народного ополчения.', video1)
        button_wikiTT.Draw(100, 450, 'Документальный фильм', video2)
        button_back.Draw(600, 500, 'Назад', sld1)
    button_refresh.Draw(display_width - 180, display_height - 150, 'Refresh', ref)
    if sd.play == 1:
        button_music.Draw(display_width - 180, display_height - 200, 'Музыка ON', mus)
    else:
        button_music.Draw(display_width - 180, display_height - 200, 'Музыка OFF', mus)
    if sd.Wind == True:
        button_fullscreen.Draw(display_width - 180, display_height - 100, 'Полный экран', fullscreen)
    elif sd.Full == True:
        button_fullscreen.Draw(display_width - 180, display_height - 100, 'Оконный режим', window)
    print_text('Нажав на кнопку, нажмите REFRESH, чтобы обновить ее.', display_width / 2 - 250, 950, font_size=30)
    button_exit.Draw(display_width - 180, display_height - 50, 'Выход', quit)
    pygame.display.update()