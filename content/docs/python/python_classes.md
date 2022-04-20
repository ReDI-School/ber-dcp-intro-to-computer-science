+++
title = "12/April - Object-oriented Python"
description = "Basics of OOP"
# weight = 10
+++

![python gif](https://cdn-images-1.medium.com/max/1300/1*TIyf0_kfMRRiJQFAUgp0QQ.png)

## Prerequisites

- You have completely set up one of the three Python development options
  - [VsCode](../installing_python/#setup-instructions-1)
  - [PyCharm](../installing_python/#setup-instructions-2)
  - [Google Colab Notebook](../installing_python/#setup-instructions)
- You have solved the [tasks](../installing_python/#5-hands-on-python-tasks) from the last class    

---

## Class Curriculum

| Section content                                        | Expected time (mins) | Pre - Requirements                         |
| ------------------------------------------------------ | -------------------- | ------------------------------------------ |
| Lesson Goals                                           | 5 minutes            | ❌                                         |
| Check-in on pre-reqs and questions from last class     | 15 minutes           | ❌                                         |
| Procedural programming                                 | 10 minutes           | ❌                                         |
| Object-oriented Programming                            | 10 minutes           | ❌                                         |
| Pillars of object-oriented programming                 | 10 minutes           | ❌                                         |
| Break                                                  | 10 minutes           | ❌                                         |
| Task: Extend the pet clinic example                    | 20 minutes           | ❌
| Bonus Task: Implement a REDI Course Management System  | 20 minutes           | ❌
| Check-out                                              | 10 minutes           | ❌

## 0. Lesson Goals

- Learn the difference between procedural vs. object-oriented programming.
- Learn the pillars of object-oriented programming in Python
  - Classes
  - Objects
  - Constructor functions
  - Object Methods
  - Inheritance

## 1. Check-In

- What was particularly challenging last class? Are there any remaining questions from last class?
- What exercises were the most challenging? (Respond in the chat)

## 2. Procedural Programming

Procedural programming involves writing sequential code which is executed from top to the bottom of the file.
You are not allowed to switch steps otherwise the program will fail to run.
You can think of procedural programming like the process of boiling some spaghetti.

![Spaghetti](https://utopia.de/app/uploads/2020/01/spaghetti-kochen-cc0-pixabay-aneps080203-200109.jpg)
- You get a clean pot
- You pour some water into the pot
- You switch on the cooker
- You wait for the water to start boiling
- You add the Spaghetti
- You add some salt
- You wait for about 10 to 15 minutes for the Spaghetti to cook

Here are some characteristics of procedural programming:
- In procedural programming, program is divided into small parts called functions.
- Procedural programming follows top down approach.
- Adding new data and functions is not easy.
- Procedural programming does not have any proper way for hiding data so it is less secure.
- In procedural programming, function is more important than data.
- Procedural programs are not modelled according to real-world structure.
- Procedural programming languages include C, FORTRAN, Pascal, Basic etc


## 3. Object-Oriented Programming

Object-oriented programming involves writing code in terms of the objects that make up the problem you
are trying to solve.
The definitions of these objects in the code can be switched around without causing the program to fail.
You can think of object-oriented programming like the process of solving a jigsaw puzzle.

![Jigsaw](https://images-eu.ssl-images-amazon.com/images/I/81qbNGQvGQL.png)

Here are some characteristics of object-oriented programming:
- In object-oriented programming, the program is divided into small parts called objects.
- Object-oriented programming follows bottom up approach.
- Adding new data and function is easy.
- Object-oriented programming provides data hiding so it is more secure.
- In object-oriented programming, data is more important than function.
- Object-oriented programs are modelled according to real-world structure.
- Object-oriented programming languages include C++, Java, Python, C# etc.


## 4. Pillars of Object-Oriented Programming in Python

### Classes

Classes represent a group of objects you would like to manage in your program. Classes in python are declared
as follows:

  ```python
  class class_name:
    class_body
  ```


For example if you are writing code to manage the pets at a pet clinic then your program is managing different pets, whether they are
dogs, cats, turtles etc. In your program you would represent all these different breeds using a `Pet` class.

  ```python
  class Pet:
    pass
  ```

{{< tip >}}
Note: The `pass` keyword is used when we do not want to specify any details of the class.
{{< /tip >}}

### Objects

When we define a class only the description or a blueprint of all possible objects defined by that class is created. For example
one particular cat at the pet clinic is an object of the Pet class. When you create an object from a class in your code, you assign it
to a variable to allow you do something meaningful with that specific object. You create an object and assign it to a variable as follows:

  ```python
  object_variable = class_name()
  ```

For example, an object for a cat called `Maya` can be created from the `Pet` class as follows:

  ```python
  maya = Pet()
  ```

Now you can print the `Maya` object

  ```python
  print(maya)
  # outputs something like -> <__main__.Pet object at 0x7ff41e9bcdd0>
  ```

{{< tip >}}
Note: The `0x7ff41e9bcdd0` above is the address of `Maya` in memory on my computer. The value will be different on your computer
{{< /tip >}}


### Constructor functions
The examples above are classes and objects in their simplest form, and are not really useful in real life applications.

To understand the meaning of classes we have to understand the built-in `__init__()` constructor function.

All classes have a function called `__init__()`, which is always executed when an object of the class is being constructed.

Use the `__init__()` function to assign values to object properties, or other operations that are necessary to do when the object is being created:

For example, in the example from above

  ```python
  maya = Pet()
  ```

We know that object relates to a cat called `Maya` because we stored the object in a variable called `maya`.

Now consider if we instead named the variable differently:

  ```python
  pet_one = Pet()
  ```

We've lost all hints that the `pet_one` object actually refers to `Maya`. We can add a constructor function to the `Pet`
class which will allow us to give names to pets objects we create.

  ```python
  class Pet:
    def __init__(self, name):
      self.name = name
  ```

{{< tip >}}
Note: The self parameter is a reference to the current class object and is used to access variables that belong to the object.
{{< /tip >}}

With the new constructor function added to the `Pet` class, we can now create pet objects with actual names

  ```python
  pet_one = Pet("Maya")
  pet_two = Pet("Felix")
  ```

And we can selectively print the names of each pet

  ```python
  print(pet_one.name)
  print(pet_two.name)
  # outputs
  # Maya
  # Felix
  ```

### Object Methods

Objects can also contain functions called `Methods`. Methods allow the program to perform actions on objects.

Let us add a `hello` method to the `Pet` class that the pets can use to introduce themselves (if they could speak)

```python
class Pet:
    def __init__(self, name):
        self.name = name

    def hello(self):
        print("Hello my name is " + self.name)
```

Now we can create a pet called called `Maya` and have her say hello!

```python
pet_one = Pet("maya")
pet_one.hello()
# output -> Hello my name is maya
```

### Class inheritance

{{< tip >}}
  Understanding the concept of class can be a bit difficult at first. This section is not essential if you are still struggling with the previous concepts. ;)
{{</ tip >}}

Inheritance allows us to define a class that is a sub-category of another class. For example at the pet clinic, we have
a `Pet` class. But using the `Pet` class, we cannot differentiate between cats, dogs, turtles or birds.

We can create new classes for the different kinds of animals at the pet clinic and have all of them inherit from the `Pet`
class.

```python
class Pet:
    def __init__(self, name):
        self.name = name

    def hello(self):
        print("Hello my name is " + self.name)

class Cat(Pet):
    pass

class Dog(Pet):
    pass

class Turtle(Pet):
    pass

class Bird(Pet):
    pass
```

The `Pet` class is known as the parent class.

The `Cat`, `Dog`, `Turtle` and `Bird` classes are known as child class.

Now we can create more pet objects using their specific classes and they will all be able to say `hello` because they've inherited
the hello method from the `Pet` class

```python
cat_one = Cat("maya")
dog_one = Dog("bosco")
turtle_one = Turtle("speedy")
bird_one = Bird("diver")

cat_one.hello()
dog_one.hello()
turtle_one.hello()
bird_one.hello()

# outputs
# Hello my name is maya
# Hello my name is bosco
# Hello my name is speedy
# Hello my name is diver
```

Even though we now have various child classes of the parent class `Pet`, each of those child classes have characteristics
that apply to only them. For example cats can meow, dogs can bark, birds can fly and turtles can hide in their shell.

We can add more specific class methods into the various child classes to provide more specific behaviors.

Lets add:
- A `meow` method to the `Cat` class which causes the cat to make the meow sound
- A `bark` method to the `Dog` class which causes the cat to bark
- A `fly` method to the `Bird` class which causes the bird to fly
- A `hide` method to the `Turtle` class which causes the turtle to go into its shell

```python
class Pet:
  def __init__(self, name):
    self.name = name

  def hello(self):
    print("Hello my name is " + self.name)

class Cat(Pet):
  def meow(self):
    print("Meeeeeooooww! I am a cat!")

class Dog(Pet):
  def bark(self):
    print("Wooof! Woof! I am a dog!")

class Turtle(Pet):
  def hide(self):
    print("Hide! I'm shy! I am a turtle!")

class Bird(Pet):
  def fly(self):
    print("Swoooosh! I'm flying away! I am a bird!")
```

Now lets get all our pets to first say hello and then perform the actions they are good at

```python
cat_one = Cat("maya")
dog_one = Dog("bosco")
turtle_one = Turtle("speedy")
bird_one = Bird("diver")

cat_one.hello()
cat_one.meow()

dog_one.hello()
dog_one.bark()

turtle_one.hello()
turtle_one.hide()

bird_one.hello()
bird_one.fly()

# outputs
# Hello my name is maya
# Meeeeeooooww! I am a cat!
# Hello my name is bosco
# Wooof! Woof! I am a dog!
# Hello my name is speedy
# Hide! I'm shy! I am a turtle!
# Hello my name is diver
# Swoooosh! I'm flying away! I am a bird!
```

## Small challenge : "It's almost Easter..."

In this exercise, we will try to create a small game using Object Oriented Programming. It is still possible not to use classes, but you will see that it complicates the code considerably... The ultimate goal of this challenge is to show you the power of classes !

#### The game : context & rules

Every year, in a small rural village, the municipality organizes a treasure hunt. Many sweets are hidden in the town and the participants have to find them within a given time. The one who finds the most sweets wins the game. Let's code this.

The slides available [here](https://drive.google.com/file/d/1pVF-N2Gf4RXdCmssmfpz1JxKq7-CyJ9o/view?usp=sharing) give you a better understanding of how the game will be run.

Here is the code that simulate the game, the **goal** is to reimplement this code by using classes.

```python
from random import randrange


def update_challenger_points(challenger, world):
    """

        Desc : tells whether the challenger wins a point. If yes it modifies the number of points.
        Params : world, challenger
        Return : None

    """
    if world[challenger['position']] == 1:
        challenger['collected_treasures'] += 1


def set_challenger_mood(challenger, new_mood):
    """

        Desc : sets the mood of the challenger
        Params : challenger, new_mood
        Return : None

    """
    challenger['mood'] = new_mood


def set_challenger_position(challenger, new_pos):
    """

        Desc : sets the mood of the challenger
        Params : challenger, new_mood
        Return : None

    """
    challenger['position'] = new_pos



def update_challenger_position(challenger, world):
    """

        Desc : gives the new box number where the challenger has to go + sets the new position of the challenger
        Params : challenger, world
        Return : the new given position

    """
    square_number = randrange(len(world)) # HINT : randrange is a method from the 'random' library. It gives an integer between 0 and len(world).
    set_challenger_position(challenger, square_number)
    return square_number


def print_challenger(challenger):
    """

        Desc : return the relevant information of the challenger when programmers use 'print'
        Params : challenger
        Return : the name of the challenger

    """
    print(challenger['name'])


def interview_challengers_podium(sport_commentator, challengers):
    """

        Desc : interviews the first three challengers and asks them their mood after the competition. The answer of this question is printed.
        Params : challengers
        Return : the list of moods in the same order than the ranking

    """
    # TO BE COMPLETED
    pass


def announce_challengers(sport_commentator, challengers):
    """

        Desc : announces(print) the challenger
        Params : challengers
        Return : True

    """
    print("[{}]:'The name of the challenger number one is {}'".format(sport_commentator['name'], challengers[0]['name']))
    print("[{}]:'The name of the challenger number one is {}'".format(sport_commentator['name'], challengers[1]['name']))
    print("[{}]:'The name of the challenger number one is {}'".format(sport_commentator['name'], challengers[2]['name']))
    print("[{}]:'The name of the challenger number one is {}'".format(sport_commentator['name'], challengers[3]['name']))
    # TO BE REFACTORED (use a for...loop that depends dynamicaly on the number of challengers)
    return 1


def annouce_winner(sport_commentator, winner):
    """

        Desc : announces the winner
        Params : challengers
        Return : True

    """
    print("[{}]:'And the winner is {}'".format(sport_commentator['name'], winner['name']))
    return True


def find_winner(challengers):
    """

        Desc : finds the challenger who has collected the most treasure and prints and returns the winner
        Params : challengers
        Return : the winner (as an object)

    """
    # TODO : case when there is a draw
    hyp_winner = challengers[0]
    for challenger in challengers:
        if challenger['collected_treasures'] > hyp_winner['collected_treasures']:
            hyp_winner = challenger
    return hyp_winner





if __name__ == '__main__':

    # Part one : data definition
    moods = ["happy", "anxious", "impatient", "desappointed", "amazed"]

    # Note to the programmer : if you want to add challengers to the game you must follow the following rules :
    # a challenger is a challenger IF AND ONLY IF he/she has a name, an age, a mood, a position and a collected_treasures

    challenger_1 = {'name': "Antoine", 'age': 23, 'mood': moods[0], 'position': 0, 'collected_treasures': 0}
    challenger_2 = {'name': "Thomas", 'age': 18, 'mood': moods[1], 'position': 0, 'collected_treasures': 0}
    challenger_3 = {'name': "Julia", 'age': 28, 'mood': moods[0], 'position': 0, 'collected_treasures': 0}
    challenger_4 = {'name': "Richard", 'age': 40, 'mood': moods[2], 'position': 0, 'collected_treasures': 0}

    challengers = [challenger_1, challenger_2, challenger_3, challenger_4]

    sport_commentator = {'name': "Kathrine", 'age':68 }

    world_2D = [0, 1, 0, 0, 1, 0, 1, 0, 1, 0, 0, 1, 1, 0, 1, 0, 1, 1, 0, 1]

    n_turns = 8

    # Part two : game execution
    announce_challengers(sport_commentator, challengers)

    print("The game is starting...")

    for turn_index in range(n_turns):
        for challenger in challengers:
            update_challenger_position(challenger, world_2D)
            update_challenger_points(challenger, world_2D)

    winner = find_winner(challengers)
    annouce_winner(sport_commentator, winner)


    for challenger in challengers:
        if challenger == winner:
            set_challenger_mood(challenger, moods[4])
        else:
            set_challenger_mood(challenger, moods[3])

    interview_challengers_podium(sport_commentator, challengers)

```

## Guide lines and TODO:

**<ins>First step</ins> : work only with the story**
- With the help of the [slides](https://drive.google.com/file/d/1pVF-N2Gf4RXdCmssmfpz1JxKq7-CyJ9o/view?usp=sharing), write down any kind of entities you can find in the story.
- Try to draw links between entities. Can you say that some entities belongs to others ?
- Among these entities, which one could be created by a class ? Which entities are in reality just data/attributes of a class ?

These questions are broad (and a bit complicated) and there is not just one solution !

{{< tip >}}
SOLUTION : You can check [this document](https://drive.google.com/file/d/1qtXloa1_dLAyORvBBB6D93huZL3b7nJm/view?usp=sharing) to see which classes could be interesting to create (slide 1). Don't hesitate to let comments on the doc if you have questions.
{{</ tip >}}

**<ins>Second step</ins> : explore the existing code**
The code above is achieving what we want to do in this exercise, but with the wrong paradigm, the **procedural** paradigm. We want to tranform it into an Oriented Object code
- Have a look at the code above and try to think which piece of code you would be able to reuse. Do you find the data you've already spotted during the first step ? Which functions could be used as class methods ?

- Write the name of the chosen functions in the notes you've made during the first part and bind them to a specific class.

{{< tip >}}
If you **need** help you can check [this document](https://drive.google.com/file/d/1qtXloa1_dLAyORvBBB6D93huZL3b7nJm/view?usp=sharing). From slide 3 to 6, you will find the attributes that you have to put in the class. From slide 7 to 21, you will find the methods that you have to implement in your classes.
{{</ tip >}}

{{< tip >}}
If you have finish these two steps, it's time now to write python code. **Make sure that you know well the syntax of python classes**, don't hesitate to read again the **part 4** of the lecture and do the pet example by yourself.
{{</ tip >}}


**<ins>Third step</ins> : Refactoring : write your own classes (This is HARD but a very good exercise if you feel confortable with concepts and the syntax)**
- Refactor your code in order to get rid of all functions that are defined above the `if __name__ == '__main__'`. These functions will be put, in the end, in the new classes. In order to do it, you need to create several classes.
{{< tip >}}
**Refactoring definition:**
"In computer programming and software design, **code refactoring** is the process of restructuring existing computer code [...] without changing its external behavior." [Wikipedia](https://en.wikipedia.org/wiki/Code_refactoring)
{{</ tip >}}

**<ins>Fourth step</ins> : draw conclusions**
- What are the benefits/the desavantages of a such refactoring ? Write at least four bullets.

**<ins>Fifth step</ins> : finalize some functions**
- To finish the challenge, you have to **refactor** the function formerly called `announce_challengers()` and to fill in the function formely called `interview_challengers_podium()`.

## 5.Bonus Task: Extend the pet Clinic Example

- Write out all the code in the examples above in your preferred python environment and verify that they work for you
- Add the ability to specify an age of the pet to the `Pet` class
- Create a list of 20 pets:
  - 5 cats with different names and ages
  - 5 dogs with different names and ages
  - 5 turtles with different names and ages
  - 5 birds with different names and ages
- Update the `hello` method in the `Pet` class to also print the age of the pet
- Using a for-loop, go through the list of 20 pets and for each pet with an even-numbered age, make the pet say hello!

## 6. Bonus Task: Implement a REDI School Management System

- Create a `School` class which represents all the different REDI school locations
- Each school location will be an object of the `School` class
- Create a `Course` class which represents all the different courses offered at REDI School
- Each actual course will be an object of the `Course` class
- Create a `Student` class which represents all the different students in a REDI School course
- Each actual student will be an object of the `Student` class  
- Each student object must have a name
- Each course object must have a course name and a list of students
- Each school object must have a location name and a list of courses  
- Test your system by:
  - Creating 3 REDI School objects representing the locatios in Germany
  - Creating 1 course object representing a course offered at one of the schools (3 course objects in total)
  - Creating students objects representing each of the students of the `Intro To CS` course.




## Additional Resources

- [Python Classes/Objects](https://www.w3schools.com/python/python_classes.asp)
- [Python Inheritance](https://www.w3schools.com/python/python_inheritance.asp)
