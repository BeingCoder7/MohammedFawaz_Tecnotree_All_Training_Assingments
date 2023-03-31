# Write a program that takes a list of strings and returns a new list with all the
# strings sorted in alphabetical order

strings = []

size = int(input("Enter the list size:"))

print("Enter the List Elements:")
for i in range(0,size):
    strings.append(input())

print("Before Sort:")
print(strings)
strings.sort()
print("After sort:")
print(strings)