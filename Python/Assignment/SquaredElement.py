#. Write a program that takes a list of numbers and returns a new list with the
# elements squared

size = int(input("Enter the Size of the List:"))
numbers = []
newList = []

print("Enter the List Elements:")
for i in range(0,size):
    numbers.append(int(input()))

for x in numbers:
    newList.append(x**2)

print(newList)