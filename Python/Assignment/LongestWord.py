# write a program that takes a list of words and returns the longest word in
# the list

strings = []

size1 = int(input("Enter the list size:"))

def longestword(strings):
   element = ' '
   for word in strings:
       if len(word) > len(element):
           element = word
   return element

print("Enter the List Elements:")
for i in range(0,size1):
    strings.append(input())



print("Longest Word:",longestword(strings))