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

## 4. Hands-on Python Tasks

Work in groups to solve the following tasks in your new Python Dev setup. You are not expected to get through all of these in class, and they range from easier to harder.

Note: if you are writing in Colab or a Python Notebook, then try to keep each task in a separate code cell. If you are writing in a pure Python file, consider wrapping each task in a function and call these functions in the `if __name__ == '__main__':` block to test out your code. This might look something like:

```python
# in your file:
def task_0(a, b):
    # code to solve task 1
    ...

    return answer_to_task_0

if __name__ == '__main__':
    print(task_0(1, 2))  # prints output of task_0

```

### Task 0

Coming soon! :)
