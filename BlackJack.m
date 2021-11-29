% 21 card game

% intro / welcome dialouge before game begins
fprintf("Welcome to Blackjack card simulator! \n \n") % prints out simple line to welcome user to game, so they understand what the purpose of this script is

player = input("Before you begin what is your name? ",'s'); % collects input data of user's name, to reference throughout gameplay

fprintf("\n Okay let's start, %s! \n \n",player) % more personalised welcome of user to the game

% game config
deck = [1:52]; % creates a fresh deck of cards at the start of each game 

% preallocating vectors
playerValues = []; % playerValues, to keep numerical values of cards in player's hand
playerCard = [""]; % playerCard, to keep strings, containing card information, such as 'queen of spades', of the cards in player's hand
dealerValues = []; % dealerValues, to keep numerical values of cards in dealer's hand
dealerCard = [""]; % dealerCard, to keep strings, containing card information, such as 'queen of spades', of the cards in d's hand

playerHand = 0; % initialises sum count of players hand
dealerHand = 0; % initialises sum count of dealers hand
    
for i = 1:2 % drawing of two inital cards for both human player and dealer
    [deck,playerCard(i),playerValues(i)] = dealCard(deck,playerHand); % assigns random card into players hand
    [deck,dealerCard(i),dealerValues(i)] = dealCard(deck,dealerHand); % assigns random card into players hand
end

playerHand = sum(playerValues); % counts sum of player's first two cards
dealerHand = sum(dealerValues); % counts sum of dealers first two cards

fprintf('The dealer reveals they have a %s. \n ============ \n\nYou turn over your cards and find a %s and %s, bringing you to a total of %d. \nPlease enter a number to continue: \n 1) Hit \n 2) Stand \n',dealerCard(2),playerCard(1),playerCard(2),playerHand) % reveals one of dealers card and gives user the choice to hit or stand
move = input(' '); % takes input from user to decide between hitting or standing

while move == 1 % when user inputs get get hit, and dealt another card.
    
    [deck,card,value] = dealCard(deck,playerHand); % runs function to get another card
    playerCard = [card,playerCard]; % assigns card string, as first variable in existing playerCard array
    playerValues = [value,playerValues]; % assigns value of new card, as the first
    playerHand = sum(playerValues); % calculates total of new hand
    fprintf('\n The dealer is showing their %s. \n ============ \n \nYou turn over a %s. \nYour hand now contains: ',dealerCard(2),playerCard(1)) % presents user with their new card, and the option to proceed by inputting a choice of either hitting or standing
    fprintf('%g, ',(playerValues)) % lists all cards in player's hand
    % code splits and has 3 potental cases
    if playerHand > 21 % if they exceed 21, instantly they loose the game
        fprintf('\nYou loose due to exceeding 21, with a total of %d \n', playerHand) % prints output to user explanining they have lost
        return % stops code
    end
    if playerHand < 21 % if user has less then 21, gives the option for them to hit again or stand
        fprintf('bringing you to a total of %d. \nPlease enter a number to continue: \n 1) Hit \n 2) Stand \n',playerHand) % presents user the option to proceed by inputting a choice of either hitting or standing
        move = input(' '); % takes input for anwser. if 1, restarts while move == 1, loop. if 2, code advances
    end
    if playerHand == 21 % if user gets exactly 21
        fprintf('	') % tells user they have 21, but continues to reveal how the dealer did.
    end
end

fprintf('The dealer turns over and reveals they have a %s along with their %s \nThis brings their total to %d. \n',dealerCard(1),dealerCard(2),dealerHand) % at this point user will have ended their turn, so dealers cards are outputted and displayed

% dealers play
while dealerHand < 17 % in blackjack logic, a dealer should always take another hit, until their hand is above 17 (blackjack.org,2020)
    [deck,card,value] = dealCard(deck,dealerHand); % runs function to get another card
    dealerCard = [card,dealerCard]; % assigns card string, as first variable in existing dealerCard array
    dealerValues = [value,dealerValues]; % assigns value of new card, as the first
    dealerHand = sum(dealerValues); % calculates total of dealers new hand
    fprintf('The dealer draws another card, its a %s. This brings their total to %d \n',dealerCard(1),dealerHand) % as user has already finished their turn, new card and total is instantly revealed
end

while move == 2 % this loop will only start to run after player has choosen to stand, and dealer has ended play (previous segment of code)
    if dealerHand > 21 % if dealer exceeded 21
        fprintf('The house exceeded 21, so you win the round %s \n',player) % informs the player the have won and the dealer has lost due to exceededing 21
        return % ends game
    end
    if dealerHand <= 21 % if the dealer has not exceeded 21
        if playerHand > dealerHand % if sum of player's hand is greater then dealers hand
            fprintf('Congratulations!! %s won with a score of %d, with the house only getting %d. \n',player, playerHand,dealerHand) % prints message to user explaining they won
            return % ends game
        end
        if dealerHand > playerHand % if dealer's hand is greater then player's hand
            fprintf('The house won with a score of %d. Unfortunately you only got %d. Better luck next time. \n',dealerHand,playerHand) % prints message to user explaining they lost
            return % ends game
        end
        if playerHand == dealerHand % if both dealer and player's hand has same sum
            fprintf('Wow, %s and the dealer tie, both with a score of %d. However unfortuantly the house wins, so you loose the round. \n',player,playerHand) % pints message explaining tie, and using blackjack rules, this means that the dealer/house wins the round
            return % ends game
        end
    end
end
    
