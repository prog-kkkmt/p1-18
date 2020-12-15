def getAllLanguages(members):
    founded = []
    for member in members:
        if member[2] not in founded:
            founded.append(member[2])
    return founded

def printTeams(teams):
    k = 1
    for team in teams:
        print("Команда " + str(k))
        print("Coder: " + team[0][0] + " " + team[0][1])
        print("Designer: " + team[1][0] + " " + team[1][1])
        print("Tester: " + team[2][0] + " " + team[2][1])
        print("Writer: " + team[3][0] + " " + team[3][1])
        k += 1
        print()

f = open("data.txt")
students = [x.split() for x in f]

#team = [coder, designer, tester, writer]
teams = []
for language in getAllLanguages(students):
    #coders = findMembers(students, language, "coder")
    coders = [x for x in students if x[2] == language and x[3] == "coder"]
    designers = [x for x in students if x[2] == language and x[3] == "designer"]
    testers = [x for x in students if x[2] == language and x[3] == "tester"]
    writers = [x for x in students if x[2] == language and x[3] == "writer"]
    for coder in coders:
        for designer in designers:
            for tester in testers:
                for writer in writers:
                    teams.append([coder, designer, tester, writer])
                    print([coder, designer, tester, writer])

printTeams(teams)
