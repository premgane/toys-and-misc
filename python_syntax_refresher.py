#!/usr/bin/env python3

print("{0} be nimble, {1} be quick, {0} sit on a candlestick".format("Jack", "Jack Flash"))

li = []

li.append("blah")
li.append(4)

print(li)


li.extend(["five", 5, 6, 7])
print(li[2:5])

print(li)

print(len(li))

print(li.extend(li))
print(li)
print(li + li)

print((2,3,'hello'))
print((5,))

d, e, f = 5, 6, 7

d, f = f, e

mapping = {}

mapping['whatever'] = 5
mapping[5] = 6

print(mapping.keys())
list(mapping.keys())

mapping.update({7:8})

print(list(mapping))

print(mapping)

my_set = set()
my_set = my_set | {4, 5, 6}
print(my_set)

print(my_set & {5, 6})

five = 5
if five not in my_set:
    print("{} is in the set! wow".format(five))
elif 6 in my_set:
    print("6 is in the set")

for element in li + [9, 0, 0, 0, 43]:
    print(element, end=" | ")
    
print()

total = 0
for num in range(99):
    total += num

print(total)

with open("README.md") as f:
    for line in f:
        print(line[0])

def print_nums(x, y):
    '''
    Print two numbers and return them but swapped
    '''
    print("{a} and {b}".format(a=x, b=y))
    return y, x

wow, hey = print_nums(6, 5)
print(wow)

# List comprehension with a filter on it
print(list([x for x in range(99) if x % 30 is 0]))

# Map an anonymous function on a list
print(list(map(lambda x: x ** 4, [6, 7, 8, 9])))

print({x : x ** 8 for x in range(9)})
