# Write a program that takes two lists of numbers and returns a new list with
# the elements that appear in both lists

strings = []
strings1 = []
new_list = []

size1 = int(input("Enter the list 1 size:"))
size2 = int(input("Enter the list 2 size:"))

print("Enter the List 1 Elements:")
for i in range(0,size1):
    strings.append(input())

print("Enter the List 2 Elements:")
for i in range(0,size2):
    strings1.append(input())

for i in range(0,size1):
    if strings[i] in strings1[i]:
        new_list.append(strings[i])

print(new_list)