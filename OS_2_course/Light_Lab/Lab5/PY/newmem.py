import argparse

parser = argparse.ArgumentParser()
parser.add_argument('-n', type=int)

args = parser.parse_args()

elements = list(range(10))
array = []

counter = 0

with open('report.log', 'w') as f:
    while True:
        array.extend(elements)
        
        counter += 1
        if counter % 10**5 == 0:
            print(len(array), file=f)

        if len(array) > args.n:
            break
