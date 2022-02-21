+++
title = "26/October - Introduction to Python"
description = "Goals"
# weight = 10
+++

![python gif](https://media.giphy.com/media/KAq5w47R9rmTuvWOWa/giphy.gif)

## Pre Requisites

None for today!

---

## Class Curriculum

| Section content                             | Expected time (mins) | Pre - Requirements |
| ------------------------------------------- | -------------------- | ------------------ |
| Check-in and questions from last class      | 5 minutes            | ❌                 |
| Lesson Goals                                | 5 minutes            | ❌                 |
| Python Overview                             | 15 minutes           | ❌                 |
| Hands-on Python exercise (in pairs)         | 45-60 minutes        | ❌                 |
| Break                                       | 10 minutes           | ❌                 |
| Synthesis of Python Concepts from Exercise  | 15-30 minutes        | ❌                 |
| (Possible) "Hello World" in Python Exercise | 20 minutes           | ❌                 |
| Check-out                                   | 5 minutes            | ❌                 |

## Lesson Goal

Have a high-level idea of what Python is and start getting comfortable reading and writing basic statements in this programming language.

## 0. Python Overview

### Q&A Intro

- What is Python?

  Python is a high-level programming language

- What is a high-level programming language?

  - "program": writing instructions for your computer to execute; this could be a simple "calculator" program that adds two numbers, it could be something that prints out values to your terminal or sends information to a remote server/web-page, etc.
  - "programming language": the language (set of words used according to specific syntax rules) that lets you write a program that can be executed on a machine
  - "high-level": there are different ways of interacting with the computer; at the lowest level, this is the binary code that computers can read and execute. Above that are different levels of closeness to machine-readable code: directly above is machine or _assembly_ code that is slightly more readable but also _compiles_ into this binary code for computers. There are more levels above this, and at the highest level (like Python), code words in human-readable languages (like English) represent large series of simple assembly steps. You can write some complex set of loops, etc. and the "Python interpreter" "interprets" these instructions in Python, turning them into something that the machine can comprehend. You don't have to worry about managing how your computer stores memory (more on this later), since Python takes care of this.

- What are terms that you may hear when discussing programs and programming languages?

  - "abstraction": something that has usually "hidden away" the inner complexities of a system; usually simplifies how we understand something.
  - "under the hood": the details of how something works when you look past the "layers of abstraction" (see above); digging into the numerous, smaller steps of how a program, application, etc. actually functions
  - "black box": a system whose inner-workings you do not understand; all you can see are the inputs and outputs. [ inputs -> BLACK_BOX -> outputs ]

- How and in what fields is Python typically used?

  - Data science: Python has many libraries (including `pandas`) that are useful for doing data analysis or statistics. Can be very efficient in how fast it computes data, and is for many people easier to read compared with other programming languages.
  - Machine Learning, Deep Learning: Python notebooks and libraries (including `TensorFlow` and `keras`) make it easy and clear to create neural networks and train machine learning models for prediction and generation tasks.
  - Running systems and infrastructure: SREs (Site Reliability Engineers) often use python as a scripting language to quickly examine, configure, and maintain infrastructure systems. Compared with other languages, it takes little code/time to write and execute a function in Python.

- What examples of things you can do with Python?

  - Write programs of all kinds!
  - Write a backend server for your web application, to process (receive, send) HTTP requests
  - Use pandas to analyze a data set
  - Create and train a neural network or other machine learning/deep learning model
  - ???

- What questions do you have so far?

## 1. Hands-on Python Activity

Go through [this Exercise](https://hourofcode.com/toxicodepython) at your own pace in your groups. Make sure you are all doing this together and asking questions.

There is no rush -- **it is completely fine not to finish the whole exercise**!!

The purpose here is to start getting familiar with Python syntax through trial-and-error (so getting things wrong is **completely expected** and **part of this process**!). After this section, we will go through the activity as a group and discuss our observations of rules and concepts from Python that we took from the exercise.

When you get an answer wrong, make sure you look at the correct answer below and try to understand what the expression means from the correct answer.

Refresher of some math operators that you will see:

- `+`: addition
- `-`: subtraction
- `*`: multiplication
- `a < b`: less than --> "a is less than b"
- `a > b`: greater than --> "a is greater than b"

## 2. Python Concepts - Sharing & Synthesizing

We will go over many of these concepts in more detail in the coming weeks, so no problem if it takes a little time for them to make sense!

One note about the code snippets below: in Python, we can write comments by using the `#` symbol; anything after this symbol is not interpreted as code or executed. This can be a really convenient way to write notes to yourselves (or future developers!) when trying to understand code you wrote.

- What observations did you have from the exercise?

### Data Types

- What is a **data type**?
- What are examples of different **data types** that you saw?

  - strings (ex: `'asdf'`, `'hello my name is x'`, `'a'`, `'123'`)
  - integers (ex: `1`, `-100`, `1383234`)
  - floats (floating point values) (ex: `1.0`, `-100.1234`, `0.0000003`, `1e5`)
  - booleans (ex: `True`, `False`)
  - lists (ex: `[3, 1, 'r', 'e']`, `[]`, `[3.2, 3, 4.5]`)
  - functions (ex: `def my_function (a, b): ...`)

  (more data types that weren't shown in this exercise will be discussed in later sessions)

### Variables

- What is a **variable**? What's an example?

  Some word (starting with a letter, and can contain letters, numbers, and underscore `_`) that represents some value. We set the value of a variable with `=`, for example: `test_var = 10` sets the **variable** `test_var` to be equal to the value of `10`. Setting the value of a variable is often called _assigning_ a variable.

### Iterables (lists, strings, ...)

- What does the `len` keyword do? i.e. `len('asdf')` or `len([1,2,3,4])`

  `len` gets the length of any "iterable" -- any "thing" that is made up of other things that you can "iterate" or count through: list, string, tuple, dictionary, set...

- What does the `[#]` syntax do?

  This _indexes_ into an iterable and gets you the `#` value of it. Note that the "first" index is "0", because we 0-index in Python. For example:

  ```python
    a = 'asdf'
    b = [1,2,3,4]
    a[0]
    # outputs: -> 'a'
    b[3]
    # outputs: ->  4
  ```

### Booleans and conditions

- What does the `==` symbol mean? What about `!=`?

  `==` is "equals", `!=` is "does not equal".

- What is the difference between `=` and `==`?

  `=` is for assigning some value to a variable, while `==` is for testing for equality between the two sides.

- What does the `if` keyword do?

  This is a conditional statement: `if CONDITION:` means: "if `CONDITION` evaluates to `True`, then execute the code that follows directly after the statement"

- How about an `if ... else` statement?

  ```python
  if CONDITION_A:
      STATEMENT_A
  else:
      STATEMENT_B
  ```

  In this example, "if `CONDITION_A` evaluates to `True`, then execute `STATEMENT_A`. Otherwise (if `CONDITION_A` evaluates to `False`), then execute `STATEMENT_B`. -->

- How about `if ... elif ... else`?

  ```python
  if CONDITION_A:
      STATEMENT_A
  elif CONDITION_B:
      STATEMENT_B
  else:
      STATEMENT_C
  ```

  In this example, "if `CONDITION_A` evaluates to `True`, then execute `STATEMENT_A` only. Otherwise (if `CONDITION_A` evaluates to `False`), then check if `CONDITION_B` evaluates to `True` and if so, execute `STATEMENT_B` only. If both `CONDITION_A` and `CONDITION_B` evaluate to `False`, then execute `STATEMENT_C`. Note that here, we are only ever execute one of the `STATEMENT_`'s, even if multiple conditions evaluate to `True`.

### Functions

- What is a **function**?

  ```python
  def my_test_function(a):
      return a
  ```

  A **function** is a sequence of steps or tasks (written in a block of code), which may or may not take in _arguments_. Whenever we _call_ a function, we execute this defined set of steps (with any _arguments_ passed in). The above example function takes in some value and simply _returns_, or gives us back, this value when we _call_ it like so: `my_test_function(12) # evaluates to 12`

## 3. (if there is time) "Hello, World!" in Python

It's something of a tradition in the Computer Science world when learning a new language to write code that outputs "Hello, World!". Check out [this Wikipedia article](https://en.wikipedia.org/wiki/%22Hello,_World!%22_program) for more information on why :).

For today, go ahead and try that out in [this Python playground](https://trinket.io/python/f7ad7f9864), which will allow you to execute some test code by clicking on the Play button (triangle) on the top of the console window.

Example solutions will be posted in a few days :)

### Task 0: write code that outputs "Hello, World!"

{{< tip >}}
Tip: there is a built-in `print` function in Python that takes some input and outputs this to standard out (`STDOUT`), which is in this case the right side of the playground console.
(Recall that the `#` stands for a "comment" in Python, meaning that this line is just a "note" to yourself and does not need to be included.)

Example usage:

```python
print("asdf asdf")
# outputs -> asdf asdf
print("my name is", "Robot")
# outputs -> my name is Robot
```

{{< /tip >}}

A Solution:

```python
print("Hello, World!")
```

### Task 1: create and call a function that prints "Hello, World!"

{{< tip >}}
Tip: Modify the code you wrote in the previous task so that this happens within a function that you define.
{{< /tip >}}

A Solution:

```python
def hello_world():
    print("Hello, World!")

# Let's call the function
hello_world()
```

### Task 2: create a function that returns the string "Hello, World!". Call this function and print the output.

A solution:

```python
def hello_world():
    return "Hello, World!"

print(hello_world())
```

### Task 3: modify your function so you can greet a specific name: "Hello, Person"

In other words:

```python
my_hello_world("Noor")
# expected output -> "Hello, Noor"
```

A solution:

```python
def hello_world(name):
    return ("Hello, " + name)

print(hello_world("Noor"))
# output -> "Hello, Noor"
print(hello_world("Jose"))
# output -> "Hello, Jose"
```

Another solution:

```python
def hello_world(name):
    print("Hello, " + name)

hello_world("Noor")
# output -> "Hello, Noor"
hello_world("Jose")
# output -> "Hello, Jose"
```

### Additional practice (all optional)

- Modify your "greeter" using any of the concepts we discussed; perhaps include a conditional expression (i.e. only greet IF ...).
- Try to write and evaluate any Python expressions that you saw in the silent teacher activity in the playground.
- Write your own function to return or print some value.

## Extra resources and references from class

- [Python playground](https://trinket.io/python/f7ad7f9864)
- ["Hello, World!" on Wikipedia](https://en.wikipedia.org/wiki/%22Hello,_World!%22_program)
- [Silent Teacher exercise from class](https://hourofcode.com/toxicodepython)
- [Python foundation docs](https://www.python.org/doc/essays/blurb/)
- [List of some open source Python projects](https://data-flair.training/blogs/python-open-source-projects/)
