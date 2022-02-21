+++
title = "25/November - Project Overview & Adventures in Python"
description = "Building a Python Project"
# weight = 10
+++

![python gif](https://media.giphy.com/media/KAq5w47R9rmTuvWOWa/giphy.gif)

## Prerequisites

- \[Optional\]: Finish the materials from the [previous lesson](./python_classes_practical.md)

---

## Class Curriculum

| Section content                        | Expected time (mins) | Pre - Requirements |
| -------------------------------------- | -------------------- | ------------------ |
| Check-in on questions from last class  | 5 minutes            | ❌                 |
| Lesson Goals                           | 5 minutes            | ❌                 |
| Final Project Overview & Brainstorming | 20-60 minutes        | ❌                 |
| Break                                  | 10 minutes           | ❌                 |
| Kahoot                                 | 10 - 15 minutes      | ❌                 |
| Start working through Python activity  | rest of class        | ❌                 |

## Check-In

Respond to the post on the class slack channel responding to the following question:

- What was particularly challenging last class? Are there any remaining questions from last class?

## Lesson Goals

- Get an overview of the final project phase, generate ideas for this, and brainstorm + submit ideas for project(s) that you would be interested in working on

- Build a text adventure game in Python and practice:
  - Object-oriented programming concepts
  - Flow control
  - Methods and functions

## Final Project Overview

Optional: please watch [this video from the ReDI school](https://www.youtube.com/watch?v=t9yrXDJmpKQ) explaining what the final project is.

In the next sessions, you will be working in small groups (2-3 people) on a project. In today's class, we will brainstorm a list of possible projects. Later, we will ask you to rank your preferences, and the teachers will then put you in project groups. At the end of the semester, you will have the chance to present your project at the ReDI Demo Day.

This project is a chance to have fun and gain more practice with some topic(s) that you have seen this semester. If you are particularly interested in continuing with Python or web development, this is a great opportunity to work on a project relating to one of these areas, so that you are even more prepared for the coming semesters!

Here are some example projects from last semester, to give you a sense of what is possible:

- "Lease contract app for apartments": A command line app written in Python that creates an apartment contract based on user inputs (i.e. takes in a user's name, address, etc. and outputs the filled-in contract)
- "Plant watering app": An app written in Python that reminds you when to water your plants and put them into the sun based on your location
- "Geography Quiz Game": A command line geography quiz
  game in python that prompts users with multiple choice quiz questions, asks the user to choose the correct answer, and gives the user a total score
- "Event website": Event finder website written in HTML/CSS and Javascript
- "TODO List": TODO List user interface (UI) written in HTML/CSS and Javascript

Other possible project ideas:

- Game of some kind (Python)
- Website (HTML/CSS, JS)
- Scavenger hunt Github Repo (Command line, git, Github)
- Extended version of the Deck of Cards/Card Game from the object-oriented Python activity (Python)
- Mini web-scraper (Python)
- ???

## Kahoot: Python Classes Review

Let's do [a Kahoot](https://create.kahoot.it/details/c5827f0b-a774-4602-babe-b0ea5b10aba0) to check our understanding of the concepts we've learned so far.

## Python Activity

### 0. Introduction

We are going to use Python to create a text adventure which runs on the command line.

The `story` will follow you as the main `character`, and your attempt to travel out of
Berlin to visit Müggelsee on a sunny day.

You will have to choose a mode of `transport` and will encounter different `obstacles`
on your way to the lake. The modes of transport that you can choose are walking,
bicycle or S-Bahn.

Based on the choices you make, the game will have a different outcome.

DEMO

### 1. Setup project

- Create a new folder called `python_adventures`
- In the folder, create a new file called, `adventure.py`

### 2. Classes and Objects

Brainstorm what you would want to represent as objects in order to create a story which contains a
character and different modes of transport.

- What classes can you come up with?
- What instance attributes could they have?
- What class methods could they have?

<br>
<br>

<details>

  <summary> SOLUTION </summary>
 
  There are many ways that you could solve this, which means there is no exact right or wrong answer.
  However, for the purpose of this exercise, we will create the following:
  1. A `Story` class, with three methods: `start`, `middle`, `end`.
  2. A `Character` class, with two instance attributes: `name` and `transportation`.
  3. A `Transportation` class, with two instance attributes: `speed` and `description`, and with one method: `encounter_obstacles`
  4. Since we have three methods of transportation, we will have three subclasses of transportation: `Walk`, `Bicycle` and `SBahn`.
</details>

<br>
<br>

i. Go ahead and create these classes and methods in `adventure.py`.
For now, leave the methods empty.

<details>

  <summary> SOLUTION - Story Class </summary>

```python
class Story:
  def __init__(self):
      pass

  def start(self):
    pass

  def middle(self, character, transportation):
    pass

  def end(self, character):
    pass

  new_story = Story()
  new_story.start()
```

</details>

<details>

  <summary> SOLUTION - Character Class </summary>

```python
class Character:
  def __init__(self, name, transportation):
      self.name = name
      self.transportation = transportation
```

</details>

When defining the `Bicycle`, `Walk` and `SBahn` classes, you can already set the following `name`, `speed`, and `description`:

**Walk**  
name: `"walking"`  
speed: `"slow"`  
description: `"It is a long and tiring walk, but scenic.🚶"`

**Bicycle**  
name: `"bicycle"`  
speed: `"average"`  
description: `"Efficient and green - cycling is a great way to explore! 🚲"`

**S-Bahn**  
name: `"S-Bahn"`  
speed: `"fast"`  
description: `"The S-Bahn is busy with people getting out of the city today, but you can read a book, listen to music and gaze out the window. 🚉"`

<details>

  <summary> SOLUTION - Transportation Classes </summary>

```python
class Transportation:
  def __init__(self, name, speed, description, obstacles):
      self.name = name
      self.speed = speed
      self.description = description

  def encounter_obstacles(self):
      pass


class Walk(Transportation):
  def __init__(self):
      self.name = "walking"
      self.speed = "slow"
      self.description = "It is a long and tiring walk, but scenic.🚶"

  def encounter_obstacles(self):
      pass


class SBahn(Transportation):
  def __init__(self):
      self.name = "sbahn"
      self.speed = "fast"
      self.description = "The S-Bahn is busy with people getting out of the city today, but you can read a book, listen to music and gaze out the window. 🚉"

  def encounter_obstacles(self):
      pass


class Bicycle(Transportation):
  def __init__(self):
      self.name = "bicycle"
      self.speed = "average"
      self.description = "Efficient and green - cycling is a great way to explore! 🚲"

  def encounter_obstacles(self):
      pass
```

</details>

ii. At the end of the file, create a `new_story` object from the `Story` class. Call
the `start` method on new story, so that a new story is created when the program is run.

### 3. Create the story introduction

The introduction of the story will always be the same. We should ask the player for their
name, introduce the story with some opening text and ask the player which mode of transport they would like to take.

i. First, we want to create an introduction for the player to start the story. Please copy and paste the following function into `python_adventure.py`. This function should be kept outside of any class. (Ordinarily you should not copy and paste from tutorials, but in this case there is a lot of text which is not useful for you to type out):

```python
def introduction_text(name):
    print("")
    print(
        "It's a beautiful summer's day in Berlin, and you are stuck in Hermannplatz :("
    )
    print(
        "You don't want to be here. It is too noisy, there is too much traffic and all this concrete makes it uncomfortably warm"
    )
    print("The lakes are calling...")
    print("") # The purpose of this print statement is to make the CLI output easier to read
    print(f"Well {name}, today we go to Müggelsee!")
    print("")
```

ii. Go to the `start()` method of the `Story` class. Using the `input()` method, ask the player what their name is. Assign their input to a variable, `name`.

iii. In the next line of `start()`, call the function `introduction_text` and pass in the `name` variable as an argument.

iv. In the next line of `start()`, ask the user how they plan to travel to the lake using the string `"The only question is, how should we go to the lake? a. walking, b. bicycle or c. sbahn\n"`. Assign the input to a variable called `choice`.

v. In the next part of `start()`, we will be using an `if, elif, else` statement to check the `choice`. If it is `a`, create a new variable called `transportation` and assign the object `Walk()` to it, if choice is `b` assign the object `Bicycle()` to `transportation`, otherwise if the choice is `c` assign the object `SBahn()` to `transportation`. Use the `else` branch to catch the scenario where a player inputs none of these options by printing a message to the player and `exiting`.

vi. In the next part of start, we want to create a `Character` object, using the `name` and `transportation` choice that the player has given us already.

vii. Finally, to complete this method, we will want to call the method to start
the next part of the story `middle`, and pass the `character` and `transportation`
objects to it.

<details>

  <summary> SOLUTION - START  </summary>

```python
def introduction_text(name):
  print("")
  print(
      "It's a beautiful summer's day in Berlin, and you are stuck in Hermannplatz :("
  )
  print(
      "You don't want to be here. It is too noisy, there is too much traffic and all this concrete makes it uncomfortably warm"
  )
  print("The lakes are calling...")
  print("")
  print(f"Well {name}, today we go to Müggelsee!")
  print("")

class Story:
  def __init__(self):
      pass

  def start(self):
      name = input("What is your name?\n")
      introduction_text(name)

      choice = input(
          "The only question is, how should we go to the lake? a. walking, b. bicycle or c. sbahn\n"
      )
      if choice == "a":
          transportation = Walk()
      elif choice == "b":
          transportation = Bicycle()
      elif choice == "c":
          transportation = SBahn()
      else:
          print("You have not selected a valid option!")
          exit()

      character = Character(name, transportation)

      self.middle(character, transportation)
```

</details>

Run the program and see what happens

### 4. The middle of the story

The middle or content of the story will vary depending on the mode of transportation
that the user takes. We will use the `middle()` method as a way to begin this in the same
way for each mode of transport, and then use the `encounter_obstacles()` method of
each transport type to create a different storyline.

i. To begin the `middle()` of the story, we print a message to the player to confirm their choice of transport and share some details about it. In the first line of `middle()`, print the following message to the player: `"Travelling by {transportation.name} is {transportation.speed}. {transportation.description}\n"` (Hint: you will need to use an [f-string](https://datagy.io/python-f-strings/)).

ii. Next call the `encounter_obstacles()` method of the `transportation` object that
you passed into `middle()` method.

iii. Lastly, call the `end()` method which will trigger the end of the story.

We haven't yet created any obstacles for the player, we will do this in Section 6.

<details>

  <summary> SOLUTION - MIDDLE  </summary>

```python
   def middle(self, character, transportation):
      print(
          f"Travelling by {transportation.name} is {transportation.speed}. {transportation.description}\n"
      )
      transportation.encounter_obstacles()
      self.end(character)
```

</details>

Run the program and see what happens!

### 5. End of the story

We will reach the end of the story when the player's character has reached the lake.
When this happens, we will print a message to the player and the game will end.

i. Print a message to the player, which says: `"Yay, {character.name}! You reached the lake by {character.transportation.name}. Time to swim and spend the rest of the day snoozing in the sun ⛵"`

<details>

  <summary> SOLUTION - END  </summary>

```python
  def end(self, character):
      print(
          f"Yay, {character.name}! You reached the lake by {character.transportation.name}. Time to swim and spend the rest of the day snoozing in the sun ⛵"
      )
```

</details>

Run the program and see what happens!

### 6. Fill in the obstacles of the story

Each story will have some obstacles, and depending on the player's choice when encountering these obstacles, the character will or will not make it to the lake.

#### Walk

There is one obstacle when walking. Since it is a long walk from Hermannplatz, if
the player leaves too late it will be dark when they arrive.

i. Write code to ask the player the following question: `"What time do you leave Hermannplatz? a. Before 14:00 b. After 14:00\n"`. Assign their input to a variable
called `choice`.

ii. If the `choice` is `a`, print the following message: `"You are very tired when you get to the lake and fall asleep.\n While you are asleep a wild boar runs off with your belongings 🐗"`

iii. If the `choice` is `b`, print the following message: `"Oh no, it is too late. By the time you reach the lake, it is already dark and time to go home. 🌉 :("` and `exit` the program.

Question: what happpens if the choice is neither a nor b?

<details>

  <summary> SOLUTION - WALK OBSTACLES  </summary>

```python
  def encounter_obstacles(self):
      choice = input(
          "What time do you leave Hermannplatz? a. Before 14:00 b. After 14:00\n"
      )
      if choice == "a":
          print(
              "You are very tired when you get to the lake and fall asleep.\n While you are asleep a wild boar runs off with your belongings 🐗"
          )
      if choice == "b":
          print(
              "Oh no, it is too late. By the time you reach the lake, it is already dark and time to go home. 🌉 :("
          )
          exit()
```

</details>

#### Bicycle

There are two obstacles that the player can encounter while cycling: the cobblestones of Berlin and seeing your friends having fun in Neukölln.

i. Write code to ask the player the following question: `"You are cycling past the Landwehr canal and spot your friend in a boat on the canal.\nWhat do you do? a. Stop and join the boat party or b. wave and continue\n"`. Assign their input to a variable
called `choice`.

ii. If the `choice` is `a`, print the following message: `"Who needs the lake? Put on some sunglasses and bob along the canal all day.🚣"` and `exit` the program.

iii. If the `choice` is `b`, do nothing and let the program continue.

iv. Write code to ask the player the following question: `"Uh oh, another cobble stone road gives you a flat tire.\nWhat do you do? a. Fix it b. Go home\n"`. Assign their input to a variable
called `choice`.

v. If the `choice` is `a`, do nothing and let the program continue.

vi. If the `choice` is `b`, print the following message: `"That's all the adventure for today! The lake will have to wait for another day"` and `exit` the program.

<details>

  <summary> SOLUTION - BICYCLE OBSTACLES  </summary>

```python
  def encounter_obstacles(self):
      choice = input(
          "You are cycling past the Landwehr canal and spot your best friend in a boat on the canal.\nWhat do you do? a. Stop and join the boat party or b. wave and continue\n"
      )
      if choice == "a":
          print(
              "Who needs the lake? Put on some sunglasses and bob along the canal all day.🚣"
          )
          exit()
      if choice == "b":
          pass

      choice = input(
          "Uh oh, another cobble stone road gives you a flat tire.\nWhat do you do? a. Fix it b. Go home\n"
      )
      if choice == "a":
          pass
      if choice == "b":
          print(
              "That's all the adventure for today! The lake will have to wait for another day"
          )
          exit()
```

</details>

#### S-Bahn

There is one obstacle when on the S-Bahn: the player misses there stops and ends up
at Erkner.

i. Write code to ask the player the following question: `"You miss your stop and end up in Erkner. What do you do? a. Stay there b. Get back on the s-bahn\n"`. Assign their input to a variable
called `choice`.

ii. If the `choice` is `a`, print the following message: `"Great! Spend the rest of the day exploring the sights and sounds around Erker!"` and `exit` the program.

iii. If the `choice` is `b`, do nothing and let the program continue.

<details>

  <summary> SOLUTION - WALK OBSTACLES  </summary>

```python
  def encounter_obstacles(self):
      choice = input(
          "You miss your stop and end up in Erkner. What do you do? a. Stay there b. Get back on the s-bahn\n"
      )
      if choice == "a":
          print(
              "Great! Spend the rest of the day exploring the sights and sounds around Erker!"
          )
      elif choice == "b":
          pass
```

</details>

### 7. Run the program

Ta-da, you have finished developing the program! Now trying playing the game.

### 8. Follow-up ideas

- Add another mode of transport that the player can take
- Add more obstacles and choices for the player for each mode of transport
- Use the things you've learned to make an entirely different story

### Continue Learning

- Get involved with the Python Community. Organisations and meetups: [PyLadies Berlin](https://www.meetup.com/PyLadies-Berlin), [PyBerlin](https://www.meetup.com/PyBerlin/) and [more](https://www.python.berlin/).
