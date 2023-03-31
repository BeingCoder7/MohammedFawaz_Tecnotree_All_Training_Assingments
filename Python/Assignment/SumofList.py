# Write a program that takes a list of numbers and returns the sum of
# all even numbers in the list.

size = int(input("Enter the Size of the List:"))
numbers = []
sum = 0

print("Enter the List Elements:")
for i in range(0,size):
    numbers.append(int(input()))

for x in numbers:
    if x % 2 == 0:
        sum += x

print("Sum of Even Number is:",sum)