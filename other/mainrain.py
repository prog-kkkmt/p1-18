from pyowm import OWM
from pyowm.utils.config import get_default_config

config_dict = get_default_config()
config_dict['language'] = 'ru'

owm = OWM('862d656378efbba3a51c6c7b8909a443', config_dict)
mgr = owm.weather_manager()

place = input('Введите город: ')

observation = mgr.weather_at_place(place)
w = observation.weather
temp = w.temperature('celsius')['temp'] 

print("\nВ городе", place, w.detailed_status + ", температура примерно", str("%.0f" % temp) + "°")

if temp < 0:
    print("Пора включать форсаж !")
elif temp < 10:
    print("Лучше оставаться в безопасности, на улице дубак.")
elif temp < 20:
    print("Оденься потеплее, на улице прохладно.")
else:
    print("Погодка кайф, пора идти купаться с мегалодоном.")

