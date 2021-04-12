from string import Template
t = Template('Hey, $name!')
print(t.substitute(name=name)) # Вывод: 'Hey, Andrey!'

templ_string = 'Hey $name, there is a $error error!'
print(Template(templ_string).substitute(name=name, error=hex(errno)))
# Вывод: 'Hey Andrey, there is a 0xbadc0ffee error!'
templ_string = 'Hey $name, there is a $error error!'
