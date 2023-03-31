# 4. Write a program that takes a list of numbers and returns the median value.


import math

def median(numbers):
    numbers.sort()
    length = len(numbers)
    if length % 2 == 0:
        return (numbers[length//2] + numbers[length//2-1]) / 2
    else:
        return numbers[length//2]
    

numbers = [1, 2, 3, 4, 5]
print(median(numbers)) 

numbers = [1, 2, 3, 4, 5, 6]
print(math.floor(median(numbers)))

