+++
title = "19/April - Practing Object-oriented Python"
description = "Goals"
# weight = 10
+++

![python gif](https://cdn-images-1.medium.com/max/1300/1*TIyf0_kfMRRiJQFAUgp0QQ.png)

## Class Curriculum

| Section content                   | Expected time (mins) | Pre - Requirements |
| --------------------------------- | -------------------- | ------------------ |
| Lesson Goals                      | 5 minutes            | ❌                 |
| Recap & questions from last class | 10 minutes           | ❌                 |
| Exercises explanation             | 10 minutes           | ❌                 |
| Exercises in groups               | 30 minutes           | ❌                 |
| Break                             | 10 minutes           | ❌                 |
| Exercises in groups               | 40 minutes           | ❌                 |
| Check-out                         | 10 minutes           | ❌                 |

## 0. Lesson Goals

- Recap content and activity from last class
- Complete object oriented python exercises

## 1. Check-In

- What was particularly challenging last class? Are there any remaining questions from last class?

## 2. Recap

```python
class Pet:
  def __init__(self, name):
    self.name = name

  def hello(self):
    print("Hello my name is " + self.name)

class Cat(Pet):
  def meow(self):
    print("Meeeeeooooww! I am a cat!")

cat_one = Cat("maya")
cat_one.hello()
cat_one.meow()

# In groups, we created:

# cats with ages
cat_one = Cat("maya", 5)
cat_one.age() # 5

# we got a list of many different animals and made the ones with even ages say hello

# array called animals
animals = [cat_one, cat_two, dog_one] # etc
for animal in animals:
  if animal.age() % 2 == 0:
    animal.hello()

# recap on dictionaries
amount_of_pets_you_have = {'Cats' : 1, 'Dogs' : 2, 'Rabbit' : 1}
amount_of_pets_you_have['Cats'] # 1
```

## 3. Exercises (Card Game)

In groups, let's start building a card game in Python. (While we won't implement an entire game in this activity, implementing a Blackjack, Poker, or other game-player could be a fun project!)

The goal will be to describe the real-world situation of a deck of cards using Python code. This is meant to be challenging; Google is your friend here, use it to look up how to do things and to help you understand the material!

Example solutions to parts 1-3 will be posted after class :)

0. If you aren't sure what a deck of cards is, feel free to check out [this Wikipedia page](https://en.wikipedia.org/wiki/Standard_52-card_deck) or chat with your group :). The rest of this exercise assumes a standard 52-card deck (French deck), but feel free to use a different style if you wish.
1. Define a `Card` class.

   - What properties should this class have?
   - Include an object method that displays the card. (Hint: you can `print` the properties of the card.)
   - Test your implementation by creating and displaying a few cards (ex. Ace of Spades, 4 of Hearts, 10 of Diamonds, Queen of Clubs...)
   <!--
      Possible solution:

   ```python
       class Card:
           def __init__(self, suit, name):
               # Note: you can add additional checks here
               self.suit = suit
               self.name = name

           def display(self):
               print(self.name, "of", self.suit)

       # Test instantiating and displaying a card
       test_card = Card("spades", "A")
       test_card.display()

<<<<<<< HEAD
   ```
=======
   ``` -->
>>>>>>> 6cadd595d7fe5277e842f5c657f47281ada4d09e

2) Define a `Deck` class.

   - What properties should this class have?
   - In the **init** constructor, make sure to build some representation of the 52-card deck. (Hint: use a nested for loop to create all the necessary cards)
   - Include an object method that displays the deck.
   - Test your implementation by displaying the deck. Is the whole deck there and as you expect?

   <!-- Possible solution:

   ```python
       class Deck:
           def __init__(self):
               # Define the suits and names that we will iterate over
               suits = ["spades", "hearts", "diamonds", "clubs"]
               names = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]
               # Create a list of Cards, one value for each suit
               self.cards = []
               for suit in suits:
                   for name in names:
                       self.cards.append(Card(suit, name))

           def display(self):
               print("deck:")
               # Let's display each card in the deck using the Card's display object method
               for card in self.cards:
                   card.display()

       # Test out instantiating and displaying the Deck
       deck = Deck()
       deck.display()
   ``` -->

3) (Challenge) Define a `Hand` class. A Hand is a list of cards that has a total value. For now, go ahead and assume that the value of a Hand is the sum of the values of each card and you can feel free to use the following scheme: Ace = 1 point, 2 = 2 points ... , King = 13 points. (Hint: consider using a dictionary mapping from card type to value.)

   - What properties should this class have?
   - Include a method to get the value of the hand.
   - Include a method to display the hand.
   - Test your implementation by creating (instantiating) a few `Hand` objects and displaying them.

   <!-- Possible solution:

   ```python
       class Hand:
           def __init__(self):
               # This is one way of implementing this; you could also take in a list of cards and set that here (and add the value) for example.
               self.cards = []
               self.value = 0

           def add_card(self, card):
               # We could also make this a "global variable" instead of duplicating across Deck and Hand
               # As a bonus task: feel free to try making card_values a "global variable" and use this in Deck and Hand :)
               card_values = {
                   "A": 1,
                   "2": 2,
                   "3": 3,
                   "4": 4,
                   "5": 5,
                   "6": 6,
                   "7": 7,
                   "8": 8,
                   "9": 9,
                   "10": 10,
                   "J": 11,
                   "Q": 12,
                   "K": 13,
               }
               # Add the card to the hand's list of cards
               self.cards.append(card)
               # Add the card's point value (from the mapping above) to the total value of the hand
               self.value += card_values[card.name]

           def display(self):
               print("value of hand:", self.value)
               print("cards in hand:")
               for card in self.cards:
                   card.display()

        # Test instantiating a Hand and adding two cards to it, then displaying the hand
        hand = Hand()
        # Can create a Card to add to the hand and pass in as a variable
        test_card = Card("spades", "A")
        hand.add_card(test_card)
        # Or we can directly create and add a Card in the same line
        hand.add_card(Card("hearts", "10"))
        hand.display()
   ``` -->

(Optional challenge tasks / Project ideas) Note: all of these are supposed to be challenging, and implementing a combination of these (or the last one) could be an exciting project later in the coming weeks as well! Feel free to extend the example above by picking any of the additional tasks to "add-on" to your deck of cards:

- `Deck`: add a `draw` function which returns the next card drawn in the deck.
- `Deck`: add a `shuffle` function which gives the deck a random order. (Hint: use the Python `random` library to do this; feel free to Google or ask for help on how to access these functions)
- `Hand`: choose a game of your choice (i.e. Blackjack, Poker, ...) and write a method to either 1) compare two hands or 2) an object method that tells you if this is a winnning hand
- `Game`: (this could be a project for later in the class ;)) choose a 2-player card game of your choice and implement a game played by two auto-players
- ???: feel free to add additional classes or properties that you think make sense or are missing!
