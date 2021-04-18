def getPopularCourses(students):
    coursesDict = {}
    result = []
    for student in students:
        courses = [x.strip() for x in student[3].split(',')]
        for course in courses:
            if course not in coursesDict:
                coursesDict.update({course : 1})
            else:
                coursesDict[course] += 1
    _max = 1
    for course in coursesDict:
        if _max < coursesDict[course]:
            _max = coursesDict[course]
    for course in coursesDict:
        if coursesDict[course] == _max:
            result.append(course)
    return result

students = []
f = open("data.txt", "r")
for line in f:
    students.append(line.split(';'))

popularCourses =  getPopularCourses(students)
print("Чаще всего встречается: ")
for course in popularCourses:
    print(course)
coursesIn2017 = set()
for student in students:
    if student[2] == "2017":
        for course in student[4].split(','):
            coursesIn2017.add(course.strip())
print("Среды и языки 2017 года: ")
for elem in coursesIn2017:
    print(elem)
