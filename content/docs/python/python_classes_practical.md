+++
title = "06/May - Object-oriented Python"
description = "Goals"
# weight = 10
+++

![python gif](https://cdn-images-1.medium.com/max/1300/1*TIyf0_kfMRRiJQFAUgp0QQ.png)

## Prerequisites

- \[Optional\]: review the w3 schools' [materials on Python classes](https://www.w3schools.com/python/python_classes.asp)

---

## Class Curriculum

| Section content                                        | Expected time (mins) | Pre - Requirements |
| ------------------------------------------------------ | -------------------- | ------------------ |
| Lesson Goals                                           | 5 minutes            | ❌                 |
| Check-in on pre-reqs, recap, questions from last class | 10 - 15 minutes      | ❌                 |
| Kahoot                                                 | 10 - 15 minutes      | ❌                 |
| Exercises in groups                                    | 30 minutes           | ❌                 |
| Break                                                  | 10 minutes           | ❌                 |
| Exercises in groups                                    | 40 minutes           | ❌                 |
| Check-out                                              | 10 minutes           | ❌                 |

## 0. Lesson Goals

- Practice object-oriented programming concepts

## 1. Check-In

- What was particularly challenging last class? Are there any remaining questions from last class?

## 2. Kahoot

Let's do [a Kahoot](https://create.kahoot.it/details/1b6aba45-138f-4af3-bb3a-3c8e290a26d5) to check our understanding of the concepts covered last class!

## 3. Exercises (part 1)

In groups, go through the exercises on [this tutorial](https://pynative.com/python-object-oriented-programming-oop-exercise/). Try not to look at the solutions until you have finished the problem. Copy the skeleton code into your local development setup (VSCode, PyCharm, or Google Colab) and try to achieve the "expected output" described for each exercise. Make sure everyone in your group has understood and produced the proper output before moving on to the next task in this section :)

## 4. Exercises (part 2)

In groups, let's start building a card game in Python. (While we won't implement an entire game in this activity, implementing a Blackjack, Poker, or other game-player could be a fun project!)

The goal will be to describe the real-world situation of a deck of cards using Python code. This is meant to be challenging; Google is your friend here, use it to look up how to do things and to help you understand the material!

0. If you aren't sure what a deck of cards is, feel free to check out [this Wikipedia page](https://en.wikipedia.org/wiki/Standard_52-card_deck) or chat with your group :). The rest of this exercise assumes a standard 52-card deck (French deck), but feel free to use a different style if you wish.
1. Define a `Card` class.
   - What properties should this class have?
   - Include an object method that displays the card. (Hint: you can `print` the properties of the card.)
   - Test your implementation by creating and displaying a few cards (ex. Ace of Spades, 4 of Hearts, 10 of Diamonds...)
2. Define a `Deck` class.
   - What properties should this class have?
   - In the **init** constructor, make sure to build some representation of the 52-card deck. (Hint: use a nested for loop to create all the necessary cards)
   - Include an object method that displays the deck.
   - Test your implementation by displaying the deck. Is the whole deck there and as you expect?
3. Define a `Hand` class. A Hand is a list of cards that has a total value. For now, go ahead and assume that the value of a Hand is the sum of the values of each card and you can feel free to use the following scheme: Ace = 1 point, 2 = 2 points ... , King = 13 points. (Hint: consider using a dictionary mapping from card type to value.)
   - What properties should this class have?
   - Include a method to get the value of the hand.
   - Include a method to display the hand.
   - Test your implementation by creating (instantiating) a few `Hand` objects and displaying them.
4. (Optional add-ons) Note: all of these are supposed to be challenging, and implementing a combination of these (or the last one) could be an exciting project later in the coming weeks as well! Pick any of the additional tasks to "add-on" to your deck of cards:
   - `Deck`: add a `draw` function which returns the next card drawn in the deck.
   - `Deck`: add a `shuffle` function which gives the deck a random order. (Hint: use the Python `random` library to do this; feel free to Google or ask for help on how to access these functions)
   - `Hand`: choose a game of your choice (i.e. Blackjack, Poker, ...) and write a method to either 1) compare two hands or 2) an object method that tells you if this is a winnning hand
   - `Game`: (this could be a project for later in the class ;)) choose a 2-player card game of your choice and implement a game played by two auto-players
   - ???: feel free to add additional classes or properties that you think make sense or are missing!
