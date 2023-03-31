strings = []

size = int(input("Enter the list size:"))

print("Enter the List Elements:")
for i in range(0,size):
    strings.append(input())


new_string = []

for x in strings:
    if x == x[::-1]:
        new_string.append(x)

print(new_string)