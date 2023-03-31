#Filter out even from list double the remaining odd number
size = int(input("Enter the Size of the List:"))
numbers = []

print("Enter the List Elements:")
for i in range(0,size):
    numbers.append(int(input()))

newlist = [x*2 for x in numbers if x%2!=0 ]
oddlist = [x for x in numbers if x%2!=0]
print(newlist)
print(oddlist)
