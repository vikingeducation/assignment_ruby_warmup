assignment_ruby_warmup
======================

Dice, dice, baby.

[A Ruby assignment from the Viking Codes School](http://www.vikingcodeschool.com)

Stephen Akuffo

Note most assignments were edited to allow for dynamic input.
Also, the Atom.io beautifier/linter tends to use implicit returns.

The assignments are split as such
- roll_dice.rb contains only the roll_dice method. It takes an number from the user (does not check for integer. None numbers mostly default to 0) and rolls that many dice

- dice_outcomes.rb borrows the roll_dice method (rewritten not 'required' for simplicity.), gets the number of dice the user wants to roll, the number of times the user wants to roll those dice, then uses the render_result method to draw out hashes for every time a particular result came up.

-fibonacci.rb gets the number the user wants to find the fibonacci sequence off and generates the sequence. Please note that because the method uses recursion which can very quickly increase the computation time required, I put in a simple naive cache which caches the fibonacci result of numbers as it goes along. If the base case is not reached, it will then check to see if the fibonacci result for a particular number has already been saved.

-stock_picker.rb rather than ask the user for input, the code generate an array of randomized integers between 10 and 50, it then loops over the array, checking each number against every other number in the array that is no before itself, is not less than itself and weather or not the profit made by the calculation is higher than the profit already stored.

- anagrams.rb is fairly straightforward. It loads up a list of words from a text file, removing the newline from each and loads the words into an array. It then asks the user for a word, finds all possible mutations of that word and loads those permutations into an array. It loops over this permutation array and check if any of the elements are included in the dictionary of words loaded up, and if it is, loads that permutation into an results array. Finally it makes sure the array only contains unique values and prints a the array in a sorted format.
