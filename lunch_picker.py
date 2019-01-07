#!/usr/bin/env python3
import random
from collections import defaultdict

lunch_options = ["num pang", "sweet green", "dig inn"]

option1_chosen = defaultdict(int)
option2_chosen = defaultdict(int)
same_count = defaultdict(int)

for i in range(999):
    choice1 = lunch_options[random.randint(0,2)]
    print(choice1)
    option1_chosen[choice1] += 1


    choice2 = random.choice(lunch_options)
    print(choice2)
    option2_chosen[choice2] += 1

    if choice1 is choice2:
        same_count[choice1] += 1

print(option1_chosen)
print(option2_chosen)
print(same_count)
