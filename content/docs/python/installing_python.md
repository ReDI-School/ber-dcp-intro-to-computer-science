+++
title = "27/April - Installing Python"
description = "Goals"
# weight = 10
+++

![python gif](https://media.giphy.com/media/KAq5w47R9rmTuvWOWa/giphy.gif)

## Pre Requisites

- Look into the three Python installation options below (under `Python Installation Overview`). Spend some time thinking about which option may make sense for you. VSCode or PyCharm will give you the most options and would enable you to continue practicing your command line and git/GitHub skills.
- Ideally, try getting set up with at least one of the options. We will then troubleshoot and go through this in class for folks who ran into any issues with their setup.
- (Optional practice) go through exercises on [w3 schools for Python](https://www.w3schools.com/python/exercise.asp?filename=exercise_syntax1) through `Functions` section OR on particular areas that you would like to review. This is entirely optional but good practice! No need to go over `Lambda`, `Classes`, `Inheritance`, or `Modules` as we have not seen these yet.

### Python Installation Overview

#### Google Colab

##### Overview

- free, requires a google account (gmail)
- no need to install Python on your computer, as Colab comes with an interpreter built-in that can run your code
- easy to create a new document or create a "copy" of assignments that we create
- can use the UI to save copies to GitHub or to your Google Drive
- makes it easy to execute and write code in notebook "cells"; it's possible to mix code and text in a readable and clear way
- notebook-style is very common in the Data Science space, so if you think you may want to go in the direction of data science or analytics, this could be a great option
  - here's an [example iPython Notebook](https://colab.research.google.com/github/tensorflow/examples/blob/master/courses/udacity_intro_to_tensorflow_for_deep_learning/l01c01_introduction_to_colab_and_python.ipynb?hl=en#scrollTo=OVi775ZJ2bsy) in Colab if you'd like to get a sense of what these are!
- can be used for writing Python Notebooks (`.ipynb` only, no pure `.py` files)
- one of the options used in the Intro to Python course with ReDI school
- recommended if you don't feel as comfortable installing Python on your machine or had difficulties with this, you don't want to work on the command line or use git/GitHub, or you are particularly interested in learning data science/analysis in the future

##### Setup instructions

- Visit [Google Colab](https://colab.research.google.com/). You may need to login with your gmail account or else create a Google Account in order to use Google Colab.
- In the bottom right, click on `New Notebook`. This will create a new Python Notebook in your Google Drive. Some notes:
  - You can rename this file by clicking on the name (probably `Untitled0`) in the top left and renaming this. (See diagram below).
  - (Note) If you want to save this Notebook in GitHub, you can create a repository in GitHub and initialize it with a `README` or other file. Then, in your Colab notebook, click `File > Save Copy to GitHub`. You may need to authorize your account (let GitHub know that it's ok for Colab to write to your repositories on your behalf), but then you can select this repository, and Colab will save a copy to it with the current state. If you make changes that you want to commit, you can repeat this process.
- In your notebook, click into the cell and write a Python statement of your choice (perhaps, a function to print `hello world` or add two numbers together). Then, click the play button (or use `Shift + Enter`) to execute this line of code. After a few seconds, the result of the expression should appear under the cell.
  ![diagram](../images/collab_setup_1.png)
- Done! Optionally: check out the [Welcome to Colaboratory](https://colab.research.google.com/notebooks/intro.ipynb#) notebook that Google has provided, and watch the [short introductory video](https://www.youtube.com/watch?v=inN8seMm7UI) in it. This will just give you a sense of what you can do in Colab.

#### VSCode

- free IDE that we have previously used in this class
- requires you to have installed a version of Python on your machine
- can be used for writing and executing Python Notebooks (like in Colab) as well as pure Python scripts and modules (`.ipynb` and `.py` files)
- can install extensions to add Python syntax-highlighting and coding tips
- will require you to continue practicing your command line and git/GitHub skills
- recommended if you feel comfortable installing Python, want to continue using the command line to navigate your file system and using git/GitHub as you develop your project, or you want to continue deepening your knowledge of one IDE rather than trying out a new platform

##### Setup Instructions

- Download and install Python [at this link](https://www.python.org/downloads/) (latest version -- 3.9.4). Complete all of the installer steps.
- (Optional) in the installed Python folder, there should be an `IDLE` program. Double click or run this program, which opens a Python interactive shell. This will execute Python code statements. Try it out by printing something (hint: use the `print` function)
- In VSCode, install the following extensions by clicking on the extensions tab on the left, searching for the following extensions, and clicking "Install" (see diagram):

  - `Python`
  - `MagicPython`
  - `Visual Studio IntelliCode`
  - Another option: `Python Extension Pack` which includes all three of the above extensions plus a few more

  ![diagram](../images/vscode_pyinstallation.png)

- In VSCode in the `View` menu in the top left corner, click `Command Palette` (or use the shortcut `Command-Shift-P`) which should bring down a dropdown menu. Here, type `"Python: Select Interpreter"` and click on this option. This should bring up a list of all Python versions installed on your
  computer -- select `3.9.4`, the version you installed.
  ![diagram](../images/vscode_pyinstallation_2.png)

- (Optional) test that this works! Create a new project or a new file with the `.py` ending (for example: `hello_world.py`). Have this file output `"Hello World!"` (hint: use the `print` function). Click on the green play button in the top right corner to run the code. This should open the terminal in VSCode and print out the output. If you run into errors, try restarting VSCode to make sure all changes were in place, and then if you run into the same issue, Google this error or ask a teacher or peer in class!

#### PyCharm (Community Edition)

- Community Edition is free, upgrading to the Professional Edition is not necessary for the purposes of this course
- an IDE (integrated development environment) designed for Python
- requires you to have installed a version of Python on your machine
- built-in awesome features that help you write and execute Python code (function signature help + completion, syntax highlighting)
- can manage different Python virtual environments for you (different versions of Python, different additional packages specific to projects, etc.)
- can be used for writing and executing Python Notebooks (like in Colab) as well as pure Python scripts and modules (`.ipynb` and `.py` files)
- will require you to continue practicing your command line and git/GitHub skills
- one of the options used in the Intro to Python course with ReDI school
- recommended if you feel comfortable installing Python, want to continue using the command line to navigate your file system and using git/GitHub as you develop your project, or you think you may want to continue learning Python after this course

##### Setup Instructions

- Download and install Python [at this link](https://www.python.org/downloads/) (latest version -- 3.9.4). Complete all of the installer steps.
- (Optional) in the installed Python folder, there should be an `IDLE` program. Double click or run this program, which opens a Python interactive shell. This will execute Python code statements. Try it out by printing something (hint: use the `print` function)
- In PyCharm, can select different Python interpreters for each project. Since this is our first project, we need to add and setup a first interpreter. (In the future, you can select this interpreter again, or set up a new one in a similar way.)
- Open PyCharm and click on `New Project`. Choose a location for the new project; your normal coding folder is a good idea, as this will create a new directory within it.
- PyCharm will now ask you to configure your interpreter. Click on `Previously configured interpreter`, then on the three dots to the right of the select.
  ![diagram](../images/py_installation_3.png)
  _(Note) you can also use PyCharm to create Virtual Environments. This is a more advanced topic and is out of scope for today, but feel free to look into this and reach out if you would like to know more!_

- Select `System Installation` and select the path to your `Python 3.9` installation. Make sure that this is the path to the version of Python you just installed (3.9), **not any other version that was already installed on your computer**.
  ![diagram](../images/py_installation_4.png)
- Click `Create`
- PyCharm may have already created a test `main.py` file for you. (If not, go ahead and create a file like `hello_world.py` and have it print out `hello world` or something else!) Then press the green play button in the top right corner to run this code.

---

## Class Curriculum

| Section content                                    | Expected time (mins) | Pre - Requirements                         |
| -------------------------------------------------- | -------------------- | ------------------------------------------ |
| Lesson Goals                                       | 5 minutes            | ❌                                         |
| Check-in on pre-reqs and questions from last class | 10 minutes           | Read and attempt installation instructions |
| Short review/demo of each installation option      | 20 minutes           | Read and attempt installation instructions |
| Troubleshooting installation in groups             | 5-30 minutes         | Read and attempt installation instructions |
| Break                                              | 10 minutes           | ❌                                         |
| Overview of loops (for, while)                     | 10-15 minutes        | ❌                                         |
| Hands-on Python exercises (in pairs)               | rest of class        | ❌                                         |
| Check-out                                          | 5 minutes            | ❌                                         |

## 0. Lesson Goals

- Have a working development environment on Python.
- Continue writing code in Python.

## 1. Check-In

- What was particularly challenging last class? Are there any remaining questions from last class?
- Were there any challenges understanding the pre-requisites for today's class?

## 2. Short review of each installation option

- Colab, PyCharm, VSCode
- We will also take a look at a Python Notebook (`.ipynb`) vs. normal Python file `.py`. What is the difference between these two formats? How do we run each of these?
  - Notebooks are made up of "cells" which allow you to execute blocks of code. Cells can also contain Markdown or text, so these can be useful for demoing information or for storing plots, charts, and doing data analysis. Notebooks are commonly used in the Data Science and Machine Learning fields.
  - `.py` files are Python files, and can be executed by a Python interpreter via `path/to/python/installation filename.py` where you replace `path/to/python/installation` with the path to the location that you installed Python on your machine and `filename.py` with the name of your Python file. Your interpreter will also look for a `main.py` in your module or the statement: `if __name__ == '__main__':` in a file to know where to begin running your code. This is where you can tell the interpreter to start calling your functions.
- We will take a look at the `IDLE` Python terminal that comes with your Python installation and how you can interactively execute lines of code here. (There are other Python terminals that you can install or use, such as `ipython`.) This can be useful for testing out your logic and syntax as you are writing a longer program as well!

## 3. Troubleshooting in Groups

We will split up into groups based on whether folks have Python installed or are having issues so that we can troubleshoot and get everyone set up as quickly as possible :)

Groups that are done with installation can start working on the Python problems from the following section.

## 4. for and while loops

Loops are a tool that help us execute a block of code a specified amount of times or based on a condition. In Python, there are two loops: `for` and `while` loops.

### while loops

`while` loops allow us to execute a block of code as long as the condition evaluates to `True`.

![loop diagram](../images/loop_diagram.png)

_Please excuse the ugly diagram :)_

Syntax:

```python
while condition:
    # do things
```

Examples:

```python
# This is called an "infinite loop" since the condition is always True!!
while True:
    print("I'm an infinite loop! I won't stop unless I'm forced to!")
```

```python
count = 0
while count < 10:
	print("hello #", count)
	count += 1
    # outputs:
    # hello # 0
    # hello # 1
    # hello # 2
    # hello # 3
    # hello # 4
    # hello # 5
    # hello # 6
    # hello # 7
    # hello # 8
    # hello # 9

```

### for loops

`for` loops provide a way to go through each value (or set of values) in an iterable (e.g. a list, string, dictionary, etc.) and execute a block of code that uses that value.

Syntax:

```python
for variable(s) in iterable:
    # do things
```

Examples: (feel free to try executing these in your IDLE terminal, notebook cell, VSCode, or PyCharm :)

```python
for num in [1, 2, 3]:
    print(num)
    # outputs:
    # 1
    # 2
    # 3
```

```python
for letter in 'word':
    new_word = letter + '!!'
    print(new_word)
    # outputs:
    # w!!
    # o!!
    # r!!
    # d!!
```

```python
# python
for num, letter in [(1, 'a'), (2, 'b')]:
    # Here, we convert number to string using `str` before concatenating with another string
    print(str(num) + letter)
    # outputs:
    # 1a
    # 2b

```

With `for` loops, it can also be useful to use the `range` operator in Python which creates an iterable of numbers. The syntax of this is `range(start, end, step)`, but you will also see this as just `range(start, end)` or `range(end)` (in this last case, the `start` is assumed to be 0). Note that the `end` value is not included (in other words, "numbers starting with `start` up until (not through) `end`"). Here are some examples:

```python
for i in range(3):
    print(i)
    # outputs:
    # 0
    # 1
    # 2
```

```python
list(range(1, 4))  # we can create a list out of a `range`
# [1, 2, 3]
```

```python
list(range(-1, 9, 3))  # here, the step (space between values) is 3
# [-1, 2, 5, 8]
```

## 5. Hands-on Python Tasks

Work in groups to solve the following tasks in your new Python Dev setup. You are not expected to get through all of these in class, and they range from easier to harder.

Optionaally, you may send in a link to a GitHub repository with your solutions (if working in VSCode or PyCharm) or share your notebook (if working in Colab) if you would like feedback on your work :) I will also release solutions later.

Note: if you are writing in Colab or a Python Notebook, then try to keep each task in a separate code cell. If you are writing in a pure Python file, consider wrapping each task in a function (that is, write a function to solve the task) and call these functions in the `if __name__ == '__main__':` block to test out your code. This might look something like:

```python
# in your file:
def task_n(a, b):
    # code to solve task 1
    ...

    return answer_to_task_n

if __name__ == '__main__':
    print(task_n(1, 2))  # prints output of task_n

```

Note: it can be helpful to test out your functions by making sure that the functions return what you expect for a few different inputs. Make sure to try out a variety of inputs including some "edge cases", or cases that are trickier and can cause problems. These edge cases often have to do with "0" or empty-inputs.
(Optional): In Python, you can also write `assert` statements, where you would state what you believe the function to output to be, and it fails if this is not the case.

Let's use an example task 0 to illustrate all the points above.

### Task 0 (warmup)

Write a function called `add_10` that takes in an _integer_, adds 10, and returns this value.
Test out these steps and make sure you feel comfortable with the process. The following tasks won't have a walk through, but you should follow the same rough process.

Steps:

1. Write out your _function skeleton_, or the empty function with the name and parameters. (Note: `n` is commonly used to denote a number, but you can also write more descriptive variable names):

```python
def add_10(n):
    # TODO: add logic to add 10
    return "Not implemented"
```

2. Let's call this function somewhere so we can see what it's outputting.
   In a `.py` file:

```python
if __name__ == '__main__':
    # the text is not required, but it helps me see what I called to get the output
    print("add_10(3): ", add_10(3))  # for now, this returns "add_10(3): Not implemented"

```

3. Let's add in some logic and check the values that it is outputting. If these values don't match your expectations (which often happens in programming), then take another look and try to understand what's going wrong. You can add `print` statements in your code as well to tell you what the values of different variables and conditions are while you are running your code. You should feel encouraged to look things up when you run into issues as well.

```python
def add_10(n):
    return n + 10

if __name__ == '__main__':
    print("add_10(3): ", add_10(3))  # this should now print "add_10(3): 13"
    print("add_10(-10): ", add_10(-10))  # this should now print "add_10(-10): 0"

```

4. Optional: you can also use `assert` statements to confirm your expectations. This is a way of writing simple "test cases" to make sure your logic works. This looks something like:

```python
def add_10(n):
    return n + 10

if __name__ == '__main__':
    assert add_10(3) == 13
    assert add_10(-10) == 0
    assert add_10(0) == 10

```

What happens if the assert statement is wrong? (Hint: try out something like `assert add_10(3) == 5` which we expect to fail and see what happens.)

You can also add this in to a test function to organize your code:

```python
def add_10(n):
    return n + 10

def test_add_10():
    assert add_10(3) == 13
    assert add_10(-10) == 0
    assert add_10(0) == 10


if __name__ == '__main__':
    test_add_10()  # expect no output if all assertions passed

```

### Task 1

Write a function called `longer_string` that takes in two _strings_ and returns the longer of the two. If they are the same length, return the first string.

### Task 2

Write a function called `is_odd` that takes in an _integer_ and returns `True` if the number is odd and `False` otherwise.

{{< tip >}}
Hint: look up (Google) what the modulo (`%`) operator in Python is and use it to determine if a number is odd or even.
{{< /tip >}}

### Task 3 (parts 1, 2)

Write a function called `hello_world_n` that takes in an integer `n` and prints "Hello, world!" `n` times.

1. do this using a `for` loop
2. do this using a `while` loop

### Task 4

Write a function called `sum_list` that takes in a list of integers (i.e. `[3, 0, 10, 4, 5, 3]`) and returns the sum of them. Do not use the `sum` function in your logic, but you can use this to test your logic! (Hint: `assert sum(lst) == ...`)

### Task 5

Write a function that takes in a list of integers (i.e. `[3, 0, 10, 4, 5, 3]`) and prints the value of each element greater than 4.
For example:

- input: `[3, 0, 10, 4, 5, 3]`
  ```python
  # output:
  # 10
  # 5
  ```
- input: `[4, 5, 6, 6, 5, 4]`

  ```python
  # output:
  # 5
  # 6
  # 6
  # 5
  ```

- input: `[4, 3, 2, 1]`

  ```python
  # no output
  ```

{{< tip >}}
Optional Challenge: change your function to take in a second parameter, `min_val`. Now, print all values in the list greater than this value.

Example input: `[4, 3, 2, 1]`, `2`

```python
    # output:
    # 4
    # 3
```

{{< /tip >}}

### (Challenge) Task 6 (parts 1, 2)

_Note: this one is optional and meant to be challenging! :)_

Like with task 4, do not use the Python function `max` in your function, but you can use this to test it out!

1. Write a function that takes in a list of integers (i.e. `[3, 0, 10, 4, 5, 3]`) and returns largest value in the list.
2. Write a function that takes in a list of strings (i.e. `['a', 'asdf', '']`) and returns the longest string in the list.

### (Challenge) Task 7 (parts 1, 2, 3)

_Note: this one is optional and meant to be challenging! :)_

1. Write a function that takes in an integer and prints all numbers below it that are divisible by 3. (Hint: recall Task 2 -- how can you check if a number is divisible by 3?)

   Example input: `12`

   ```python
   # output:
   # 0
   # 3
   # 6
   # 9
   ```

2) Modify the function to return how many numbers are divisible by 3, in addition to printing each number. (i.e. the returned value for the example input above would be `4` (0, 3, 6, 9)).
3) Modify this function to make it general -- if the function takes in `n` and `k`, find out how many numbers less than `n` are divisible by `k`.

   Example input: `8`, `2`

   ```python
   # output:
   # 0
   # 2
   # 4
   # 6
   # returns 4
   ```

## Additional Resources

- [W3 schools Python while loops](https://www.w3schools.com/python/python_while_loops.asp)
- [W3 schools Python for loops](https://www.w3schools.com/python/python_for_loops.asp)
- [Tutorialspoint loops in Python](https://www.tutorialspoint.com/python3/python_loops.htm)
- [additional practice problems on loops and conditions (note: some are challenging!)](https://www.w3resource.com/python-exercises/python-conditional-statements-and-loop-exercises.php)
- [additional practice problems (note: challenging!)](https://www.practicepython.org/)

```

```
