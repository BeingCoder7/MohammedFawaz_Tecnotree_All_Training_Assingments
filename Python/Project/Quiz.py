import random

questions = [
    {
        "question": "What is the smallest continent?",
        "options": ["Europe", "Asia", "Africa", "Australia"],
        "answer": "Australia"
    },
    {
       "question": "What is the capital city of Karnataka?",
       "options":["Mysore","Banglore","Mandya","Hassan"],
       "answer":"Banglore"
    },
    {
      "question": "Which is the tallest animal in the world",
      "options":["Elephant","Tiger","Giraffe","Lion"],
      "answer":"Giraffe"
    },

]

def question():
    question = random.choice(questions)
    print(question["question"])
    for i, option in enumerate(question["options"]):
        print(f"{i+1}. {option}")
    answer = input("Enter your answer by giving the options (1-4): ")
    return question["answer"] == question["options"][int(answer)-1]

def main():
    print("Welcome to the Quiz Game!")
    score = 0
    NumOfQuestions = len(questions)
    for i in range(NumOfQuestions):
        print(f"\nQuestion {i+1}/{NumOfQuestions}:")
        if question():
            print("Correct!")
            score += 1
        else:
            print("Wrong!")
    print(f"\nGame over! Your score is {score}/{NumOfQuestions}.")

main()