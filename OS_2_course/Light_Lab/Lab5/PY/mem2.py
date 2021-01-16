import sys

elements = list(range(10))
array = []

counter = 0

with open('report2.log', 'w') as f:
    while True:
        array.extend(elements)
        counter += 1
        if counter % 10**5 == 0:
            print(len(array), file=f)
