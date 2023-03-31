# Write a program that takes a string and returns the number of times each
# letter appears in the string.

def count_letters(string):
    letter_count = {}
    for letter in string:
        if letter.isalpha():
            letter = letter.lower()
            if letter in letter_count:
                letter_count[letter] += 1
            else:
                letter_count[letter] = 1
    return letter_count


string = "Tecnotree Training"
letter_count = count_letters(string)
print(letter_count)
