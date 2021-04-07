# Sub Strings

Sub Strings project from The Odin Project, [found here](https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby-programming/lessons/caesar-cipher)

## Sub Strings Explanation

The goal of this project was to create a method that checks a message against a word list. A hash would be returned to the user detailing the frequency each of the words from the word list appeared within the message.

## Project Guidelines

The project had the following guidelines:

- The method must accept a message (string) and a dictionary (array)
- The method must be able to handle multiple words in the message string
- The method must return a hash listing the frequency of each dictionary word
- Case is ignored when comparing the words from the message and the dictionary
- Words with 0 frequency are excluded from the returned hash

## Design Decisions

Code formatting follows the [Ruby Style Guide](https://github.com/rubocop/ruby-style-guide) by rubocop.

My initial instict for implementing this method was to make a hash for the dictionary, an array for the message using split, and then to iterate through the message array and the dictionary hash using include to check for matches. This implementation only took a few minutes to put together, but I was not satisfied with it. Looping through the entire hash for every word in the message did not seem very efficient. This also required a final pass through the hash to eliminate 0 values. This looping and filtering could be cumbersome with a large message or dictionary of words.

I knew there had to be a better way to solve this. It was time to review the Ruby documentation! The scan method presented itself and I knew this was the way forward. A returned array of matches would give me a count, which fit my needs perfectly.
