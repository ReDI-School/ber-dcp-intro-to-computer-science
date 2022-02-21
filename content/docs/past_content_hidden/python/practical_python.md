+++
title = "11/16/November - Practical Python Session"
description = "Goals"
# weight = 10
+++

![python gif](https://media.giphy.com/media/KAq5w47R9rmTuvWOWa/giphy.gif)

## Pre Requisites

- Review the course content from last class, and try to continue going through the exercises! If you get stuck on any of them, no problem -- make a note of this so we can review these tasks at the beginning of class on Thursday.

  {{< button "../installing_python/" "Review 02/November - Installing Python" >}}

- (Optional) create a repository (local and remote) to gather your Python exercises from last class. Add and commit the file to the repository, and then push these to GitHub.
- (Optional practice) go through exercises on [w3 schools for Python](https://www.w3schools.com/python/exercise.asp?filename=exercise_syntax1) through `Functions` section OR on particular areas that you would like to review. This is entirely optional but good practice! No need to go over `Lambda`, `Classes`, `Inheritance`, or `Modules` as we have not seen these yet.

---

## Class Curriculum

| Section content                                                     | Expected time (mins) | Pre - Requirements |
| ------------------------------------------------------------------- | -------------------- | ------------------ |
| Lesson Goals                                                        | 5 minutes            | ❌                 |
| Questions from last class & review of a few exercises               | 10-15 minutes        | ❌                 |
| Overview of loops (for, while)                                      | 10-15 minutes        | ❌                 |
| Hands-on Python exercises (in small groups)                         | 20 minutes           | ❌                 |
| Break (in-person troubleshooting of Python installations if needed) | 10 minutes           | ❌                 |
| Continue hands-on Python exercises (in small groups)                | rest of class        | ❌                 |
| Check-out                                                           | 5 minutes            | ❌                 |

## 0. Lesson Goals

- Have a working development environment on Python.
- Build familiarity with the concepts of data types, functions, and control flow (loops, conditionals)
- Continue writing code in Python

## 1. Check-In

- Are there any remaining questions from last class?
- What exercises were the most challenging? (Respond in the chat)

## 2. for and while loops

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
    # increment the value of `count`
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

Check-in question: can someone explain what's going on in each of these examples?

### for loops

`for` loops provide a way to go through each value (or set of values) in an iterable (e.g. a list, string, dictionary, etc.) and execute a block of code that uses that value.

Syntax:

```python
for variable(s) in iterable:
    # do things
```

Examples: (feel free to try executing these in your IDLE terminal, notebook cell (in Colab), VSCode, or PyCharm :)

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

## 3. Hands-on Python Tasks

**Work in groups** to solve the following tasks in your Python Dev setup. As a group exercise, we expect you to discuss with your group members to **solve the problems together**. This may mean having one person share their screen and talking through the code you will write together, and making sure you all understand before moving on to the next task. You are **not expected** to get through all of these in class, and they range from easier to harder. We will continue working on these exercises in the next session as well.

To build on the skills that we have learned earlier in the semester, if working in VSCode or PyCharm, please create a new repository and commit your changes as you go. You can check out the reference sheets to help remember the necessary git and command line commands. [Click here for the cheat sheet](../../references)

Optionally, you may send in a link to a GitHub repository with your solutions (if working in VSCode or PyCharm) or share your notebook (if working in Colab) if you would like feedback on your work :)

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
