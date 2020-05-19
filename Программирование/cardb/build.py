#!/usr/bin/python3
COMPILER = 'g++'
SRC_DIR = 'src'
MODULE_FILES = ['main.cpp', 'lib.cpp']
BIN_NAME = 'cardb'


import subprocess
import os
import sys

debug = ''

# target choosing
def target_release():
    pass

def target_debug():
    global debug
    debug = '-g'

if len(sys.argv) >= 2:
    if sys.argv[1] == 'debug':
        target_debug()
    elif sys.argv[1] == 'release':
        target_release()
else:
    target_release()

# ===============


# os.chdir(os.path.abspath(__file__))
# os.mkdir('bin')
# subprocess.run([COMPILER, '-o', 'bin/'+BIN_NAME]+['src/'+x for x in MODULE_FILES])

script_dir = os.path.dirname(os.path.abspath(__file__))

# Создание структуры директорий
os.chdir(script_dir)
if os.path.isfile('build'):
    os.mkdir('build')
if os.path.isfile('build/obj'):
    os.mkdir('build/obj')
if os.path.isfile('build/bin'):
    os.mkdir('build/bin')

# Запуск компиляции модулей
os.chdir('build/obj')
#print(os.getcwd())
comp_procs = dict()
for m in MODULE_FILES:
    command_object = [COMPILER, debug, '-c', '../../'+SRC_DIR+'/'+m]
    print("Object file compilation: "+' '.join(command_object))
    comp_procs[subprocess.Popen(' '.join(command_object), shell=True)] = False
os.chdir(script_dir)

# Ожидание завершения компиляции модулей
while not all(comp_procs.values()):
    for proc in comp_procs.keys():
        if proc.poll() != None:
            comp_procs[proc] = True

# Финальная сборка
command_final = [COMPILER, debug, ]+['build/obj/'+x for x in os.listdir('build/obj')]+[ '-o', 'build/bin/'+BIN_NAME]
print("Final compilation: "+' '.join(command_final))
subprocess.run(' '.join(command_final), shell=True)