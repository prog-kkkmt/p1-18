list_docs = ["", "Append(x): Add an item to the end of the list.", 
            "Extend(iterable): Extend the list by appending all the items from the iterable.", 
            "Insert(i, x): Insert an item at a given position. The first argument is the index of the element before which to insert."]
            
dict_docs = ["", "Clear(): Removes all the elements from the dictionary.",
            "Values(): Returns a list of all the values in the dictionary.",
            "Update({key:value}): Updates the dictionary with the specified key-value pairs."]

set_docs = ["", "Add(x): Adds an element to the set",
            "Discard(x): Remove the specified item",
            "Union(...): Return a set containing the union of sets"]

while(1):
    print("Выберите структуру данных:")
    print("1: List", "2: Dict", "3: Set", "0: Exit", sep='\n')
    n = int(input())
    if n == 0:
        break
    print("Выберите метод: ")
    if n == 1:
        print("1: Append", "2: Extend", "3: Insert", sep='\n')
        k = int(input())
        print(list_docs[k])
    elif n == 2:
        print("1: Clear", "2: Values", "3: Update", sep='\n')
        k = int(input())
        print(dict_docs[k])
    elif n == 3:
        print("1: Add", "2: Discard", "3: Union", sep='\n')
        k = int(input())
        print(set_docs[k])
