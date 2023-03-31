
#Hangman Game

import random

words = ["Apple","Banana","Magic","Airpot","Company","Calculator"]

rand = random.randint(1,5)
chances = 6
guessing_word = words[rand]

arr =['_' for x in guessing_word]
hangman = ['  o','/','|',"\\",'/',"\\" ]

j=1
print("Hangman")
while chances> 0:
    inp = input("Enter the Letter:")
    if inp in guessing_word:
        for i in range(0,len(guessing_word)):
            if inp == guessing_word[i]:
                arr[i] = inp
        print(arr)
    else:
       for i in range(0,j):
           if i!=1 and i!=2 and i!=4 and i!=6: 
                print(hangman[i])
           else:
                print(hangman[i],end=' ')
       j = j+1
       chances = chances -1

if chances ==0:
    print("Game Over")

   

    




























# print(" o\n/|\\\n/ \\")