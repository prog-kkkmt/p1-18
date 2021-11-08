from pyowm import OWM
from pyowm.utils.config import get_default_config
import telebot

config_dict = get_default_config()
config_dict['language'] = 'ru'

owm = OWM('862d656378efbba3a51c6c7b8909a443', config_dict)
bot = telebot.TeleBot("2138842520:AAH4XE7OI5UCdWhczh8CuN8qT0VugpP7PUY", parse_mode = None)

@bot.message_handler(content_types=["text"])
def bot_answer(message):
        mgr = owm.weather_manager()
        observation = mgr.weather_at_place(message.text)
        w = observation.weather 
        temp = w.temperature('celsius')["temp"] 

        answer = "В городе " + message.text + " " + w.detailed_status + ", температура примерно " + str("%.0f" % temp) + "°\n"

        if temp < 0:
                answer += "Пора включать форсаж !"
        elif temp < 10:
                answer += "Лучше оставаться в безопасности, на улице дубак."
        elif temp < 20:
                answer += "Оденься потеплее, на улице прохладно."
        else:
                answer += "Погодка кайф, пора идти купаться с мегалодоном."


        
        bot.send_message(message.chat.id, answer)

bot.infinity_polling()
