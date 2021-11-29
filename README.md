# MATLAB-BlackJack

## ABOUT PROJECT

This project containts a simple MATLAB command line BlackJack (21) Card Game to play against a computer.
A full 52 Card Deck is implemented for gameplay purposes that includes each Card's unique name; such as King of Hearts, as well as values. 
The game will automatically calulates your best possible hand by interchanging the value of an Aces between 11 or 1 to best benifit the player. Gameplay is simple and controlled via the Command Window.

#### THIS IS AN UPLOADED PROJECT COMPLETED WHILE AT UNIVERSITY

## INSTALLATION
1. Download Contents of this Repository
2. Open files in MATLAB
3. `Run` from within `BlackJack.m` file

## GAMEPLAY INSTRUCTIONS
### GAMEPLAY CONCEPTS / RULES 
BlackJack (also known as 21) is a simple card game that uses a deck of 52 standard playing cards. You verse the dealer (your computer) with the goal of getting cards as close, but not greator then or equal to 21. Initally both the dealer and player receieve two cards. The sum of the cards is equal to the number, ie:
a `Two of Spades` = 2
and a `Seven of Hearts` = 7.
This gives a total of `2 + 7` = 9. Alphabetical cards such as a `King`, `Queen` or `Jack` are all equal 10. An `Ace` is equal to 1 or 11 depending on what benifits the player.

### GAMEPLAY IN MATLAB
After running the program within `BlackJack.m`:
- Input the player's name (your name) followed by `enter`/`return` on your keyboard.
- Read outputed text to try and understand the dealer's hand.
- Contine to input the following commands until you are happy with your hand:
  - `1` to hit (recieve another card)
  - `2` to stand (finalise your hand).
- Final outcome of the game is revealed. Game can be replayed by pressing `Run`.
