#include <stdio.h>
#include <stdbool.h>

enum Suit {Diamonds, Hearts, Spades, Clubs};
enum Card_N {Jack=11, Lady, King, Ace};

struct Card {
	enum Suit suit;
	enum Card_N card_n;
}; 
typedef struct Card Card;

bool beat(Card first, Card second, enum Suit trump){
	if(first.suit == trump && second.suit != trump)
		return true;
	else if(first.suit != trump && second.suit == trump)
		return false;
	else if(first.suit != second.suit)
		return false;
	else
	{
		if (first.card_n > second.card_n)
			return true;
		else
			return false;
	}
}
