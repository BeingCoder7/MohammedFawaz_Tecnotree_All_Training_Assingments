
#Todo List

while True:
    print("\n\nWelcome to ToDo list Application:\n")
    print("Enter 1 to Add:\nEnter 2 to view:\nEnter 3 to Update:\nEnter 4 to Delete:\nEnter quit to Close:\n")
    inp = input()

    if inp == '1':
        with open('todolist.txt','a') as file:
            content = input("Enter the Task:")
            file.write(f"\n{content}")
            print("Added successfully\n")

    elif inp == '2':
        with open('todolist.txt','r') as file:
           print("TodoList:")
           content = file.read()
           print(content)
    
    elif inp == '3':
        with open('todolist.txt','r') as file:
            item = input("Enter the Item to Update:")
            content = file.read()

            if item in content:
                update = input("Enter Item:")
                newContent = content.replace(item,update)
                print("Update Successfull\nUpdated List:\n")
                print(newContent)
                with open('todolist.txt','w') as file:
                    file.write(newContent) 
            else:
                print("Item not Present in list")

    elif inp == '4':
        delete = input("Enter the item to Delete:")

        with open('todolist.txt','r') as file:
            content = file.read()

            if delete in content:
                newContent = content.replace(delete,'')
                print("Deletion Successfull\nUpdated List:")
                print(newContent.strip())
                with open('todolist.txt','w') as file:
                    file.write(newContent.strip()) 
            else:
                print("Item not Present in list")


    elif inp == 'quit':
        print("Thank You visit again")
        break

    else:
        print("Wrong Input")

