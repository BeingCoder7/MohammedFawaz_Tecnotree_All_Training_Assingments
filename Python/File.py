# file = open("demo.txt",'r')
# content = file.read()
# print(content)
# file.close()


# file = open("demo.txt",'w')
# content = "\nfile is writing"
# file.write(content)
# file.close()




# file = open("demo.txt",'a')
# content = "\nfile is writing"
# file.write(content)
# file.close()


# //Demo Example of file handling in Python that demonstrates how to open a file, read its contents, and write to it:

# Opening a file
file = open('demo.txt', 'r')

# Reading from a file
content = file.read()
print(content)

# Closing a file
file.close()

# Writing to a file
with open('demo.txt', 'a') as file:
    file.write('\nThis is a new line added to the file.')

# Reading from a file again
with open('demo.txt', 'r') as file:
    content = file.read()
    print(content)

with open('fawaz.txt','w') as file:
    file.write("Tecnotree Technology Training")
    file.close()


with open('sample.txt','r') as file:
    file.write("Tecnotree Technology Training")
    file.close()

