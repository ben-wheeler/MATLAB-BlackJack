function [deck,cardName,cardValue]  =  dealCard(deck,hand)
% dealCard returns a random card, from a deck, simulating card being pulled from a shuffled deck.
 
% takes INPUT of the current 'deck' of cards, as well as the sum of the
%  users 'hand' - to determine inforomation such as if an ace should equal
%  1 or 11. returns OUTPUT of an updated deck, without dealt card, along
%  with the dealt card's name (in the form of a string), as well as the
%  actual value, eg, 5

i = 1; % initiallising variable for a while loop
while i == 1 % while loop used to check before a card is dealt, that it isn't already in play.
    % If card is in play, it gets updated in deck to equal 0, if not in play it will be equal to it's orignal value within 1:52
    pos  =  randi(length(deck)); % generates a random number, representing a postion in the deck
    if deck(pos) ~= 0 % checks card in that position doesn't equal 0, to ensure that it isn't already in play
        i = 0; % if card isn't in play, breaks condition ending while loop
    end
end
deck(pos)  =  0; % updates choosen card to be equal to 0, meaning it's in play

if pos == 1 % if cases, ranging from 1:52, representing each differnt card in deck. Depending on what position in deck, only one of these will be run
    cardName = ("Ace of Spades"); % assigns a card name based on position in deck. 
    % in the case of an ace, determines if it should have a value of 11 or 1
    plus11 = ((hand)+11); % calculates sum of hand + 11
    if plus11 > 21 % checks too see if this exceeds 21, if so, assigns value of 1
        cardValue = 1;
    else  % if does not exceed 21, assigns value of 11
        cardValue = 11;
    end

    % same process occurs for remaining cards positions in deck
elseif pos == 2
    cardName = ("Ace of Clubs");
    % in the case of an ace, determines if it should have a value of 11 or 1
    plus11 = ((hand)+11);
    if plus11 > 21 
        cardValue = 1;
    else 
        cardValue = 11;
    end
    
elseif pos == 3
    cardName = ("Ace of Diamonds");
    % in the case of an ace, determines if it should have a value of 11 or 1
    plus11 = ((hand)+11);
    if plus11 > 21 
        cardValue = 1;
    else 
        cardValue = 11;
    end
    
elseif pos == 4
    cardName = ("Ace of Hearts");
    % in the case of an ace, determines if it should have a value of 11 or 1
    plus11 = ((hand)+11);
    if plus11 > 21 
        cardValue = 1;
    else 
        cardValue = 11;
    end
    
elseif pos == 5
    cardName = ("Two of Spades");
    cardValue = 2;
    
elseif pos == 6
    cardName = ("Two of Clubs");
    cardValue = 2;
    
elseif pos == 7
    cardName = ("Two of Diamonds");
    cardValue = 2;
    
elseif pos == 8
    cardName = ("Two of Hearts");
    cardValue = 2;
    
elseif pos == 9
    cardName = ("Three of Spades");
    cardValue = 3;
    
elseif pos == 10
    cardName = ("Three of Clubs");
    cardValue = 3;
    
elseif pos == 11
    cardName = ("Three of Diamonds");
    cardValue = 3;
    
elseif pos == 12
    cardName = ("Three of Hearts");
    cardValue = 3;
    
elseif pos == 13
    cardName = ("Four of Spades");
    cardValue = 4;
    
elseif pos == 14
    cardName = ("Four of Clubs");
    cardValue = 4;
    
elseif pos == 15
    cardName = ("Four of Diamonds");
    cardValue = 4;
    
elseif pos == 16
    cardName = ("Four of Hearts");
    cardValue = 4;
    
elseif pos == 17
    cardName = ("Five of Spades");
    cardValue = 5;
    
elseif pos == 18
    cardName = ("Five of Clubs");
    cardValue = 5;
    
elseif pos == 19
    cardName = ("Five of Diamonds");
    cardValue = 5;
    
elseif pos == 20
    cardName = ("Five of Hearts");
    cardValue = 5;
    
elseif pos == 21
    cardName = ("Six of Spades");
    cardValue = 6;
    
elseif pos == 22
    cardName = ("Six of Clubs");
    cardValue = 6;
    
elseif pos == 23
    cardName = ("Six of Diamonds");
    cardValue = 6;
    
elseif pos == 24
    cardName = ("Six of Hearts");
    cardValue = 6;
    
elseif pos == 25
    cardName = ("Seven of Spades");
    cardValue = 7;
    
elseif pos == 26
    cardName = ("Seven of Clubs");
    cardValue = 7;
    
elseif pos == 27
    cardName = ("Seven of Diamonds");
    cardValue = 7;
    
elseif pos == 28
    cardName = ("Seven of Hearts");
    cardValue = 7;
    
elseif pos == 29
    cardName = ("Eight of Spades");
    cardValue = 8;
    
elseif pos == 30
    cardName = ("Eight of Clubs");
    cardValue = 8;
    
elseif pos == 31
    cardName = ("Eight of Diamonds");
    cardValue = 8;
    
elseif pos == 32
    cardName = ("Eight of Hearts");
    cardValue = 8;
    
elseif pos == 33
    cardName = ("Nine of Spades");
    cardValue = 9;
    
elseif pos == 34
    cardName = ("Nine of Clubs");
    cardValue = 9;
    
elseif pos == 35
    cardName = ("Nine of Diamonds");
    cardValue = 9;
    
elseif pos == 36
    cardName = ("Nine of Hearts");
    cardValue = 9;
    
elseif pos == 37
    cardName = ("Ten of Spades");
    cardValue = 10;
    
elseif pos == 38
    cardName = ("Ten of Clubs");
    cardValue = 10;
    
elseif pos == 39
    cardName = ("Ten of Diamonds");
    cardValue = 10;
    
elseif pos == 40
    cardName = ("Ten of Hearts");
    cardValue = 10;
    
elseif pos == 41
    cardName = ("Jack of Spades");
    cardValue = 10;
    
elseif pos == 42
    cardName = ("Jack of Clubs");
    cardValue = 10;
    
elseif pos == 43
    cardName = ("Jack of Diamonds");
    cardValue = 10;
    
elseif pos == 44
    cardName = ("Jack of Hearts");
    cardValue = 10;
    
elseif pos == 45
    cardName = ("Queen of Spades");
    cardValue = 10;
    
elseif pos == 46
    cardName = ("Queen of Clubs");
    cardValue = 10;
    
elseif pos == 47
    cardName = ("Queen of Diamonds");
    cardValue = 10;
    
elseif pos == 48
    cardName = ("Queen of Hearts");
    cardValue = 10;
    
elseif pos == 49
    cardName = ("King of Spades");
    cardValue = 10;
    
elseif pos == 50
    cardName = ("King of Clubs");
    cardValue = 10;
    
elseif pos == 51
    cardName = ("King of Diamonds");
    cardValue = 10;
    
elseif pos == 52
    cardName = ("King of Hearts");
    cardValue = 10;
end
 

