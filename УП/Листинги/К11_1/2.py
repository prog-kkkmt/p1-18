commands = {'execute' : 'X', 'write' : 'W', 'read' : 'R'}
filesPermissions = {}
n = int(input())
for i in range(n):
    file = input().split()
    filesPermissions.update({file[0] : file[1:]})
for i in range(int(input())):
    cmnd, file = input().split()
    cmnd = commands[cmnd]
    if cmnd not in filesPermissions[file]:
        print("Access denied")
    else:
        print("OK")
