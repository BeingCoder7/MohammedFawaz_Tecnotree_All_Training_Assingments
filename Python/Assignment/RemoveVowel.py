# Write a program that takes a string and returns a new string with all the
# vowels removed


sentence = input("Enter a String to Remove Vowel:")

def removeVowel(sentence):
    new_sent = ''
    for x in sentence:
        if x in ['a','e','i','o','u','A','E','I','O','U']:
            pass
        else:
            new_sent += x

    return new_sent


print("Result String:",removeVowel(sentence))











