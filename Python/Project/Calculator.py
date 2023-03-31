
#Calculator

print("Calculator")

while True:
    num1 = float(input("Enter the First Number:"))
    num2 = float(input("Enter the Second Number:"))

    operator  = input("Select the Operator:+\t-\t*\t/\t%\tq-quit\n")

    if operator == '+':
        result = num1 + num2
        print(result)

    elif operator == '-':
        result = num1 - num2
        print(result)

    elif operator == '*':
        result = num1 * num2
        print(result)

    elif operator == '/':
        result = num1 / num2
        print(result)

    elif operator == '%':
        result = num1 % num2
        print(result)
    
    elif operator == 'q':
       print("closed")
       break

    else:
        print("Invalid input")


