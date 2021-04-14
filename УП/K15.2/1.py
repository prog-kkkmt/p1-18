from collections import defaultdict
a = defaultdict(set, **{"day":{"night"}, "night": {"month"}})
a["month"].add("day")
a["year"].add("day")
print(a)
