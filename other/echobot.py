import telebot

bot = telebot.TeleBot("2138842520:AAH4XE7OI5UCdWhczh8CuN8qT0VugpP7PUY", parse_mode = None)

@bot.message_handler(commands = ['start', 'help'])
def bot_welcome(message):
	bot.reply_to(message, "Здарова заебал")

@bot.message_handler(func = lambda m: True)
def bot_echo(message):
	#bot.reply_to(message, message.text)
        bot.send_message(message.chat.id, message.text)

bot.infinity_polling()
