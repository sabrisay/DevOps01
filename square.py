mylist = [2, -7, 10]
def squared(mylist):
    return [i*i for i in mylist]

def squared_dictionary(mylist):
        return {i*i for i in mylist}

print(squared(mylist))

print(squared_dictionary(mylist))

