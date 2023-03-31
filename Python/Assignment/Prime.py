# Write a program that takes a list of numbers and returns a new list with
# only the prime numbers


size = int(input("Enter the Size of the List:"))
numbers = []

print("Enter the List Elements:")
for i in range(0,size):
    numbers.append(int(input()))


def is_prime(num):
    if num < 2:
        return False
    for i in range(2, int(num**0.5) + 1):
            return False
    return True

new_number = []

for x in numbers:
    if is_prime(x):
        new_number.append(x)

print(new_number)