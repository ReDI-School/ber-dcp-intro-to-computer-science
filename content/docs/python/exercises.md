+++
title = "24/March - Exercises"
description = "Quick exercises to play with programming fondamentals"
+++


# Small exercises to play with fundamental concepts

{{< tip >}}
The purpose of this page and these exercises is to familiarise you with basic programming concepts and to get you to ask questions. Write down all your questions so that we can answer them in the next session. If you have difficulties, please let us know on Slack. Good luck ;)
{{< /tip >}}

{{< tip >}}
All the exercises can be done by using [this Website](https://replit.com/languages/python3). You don't necesseraly need to create an account.
{{< /tip >}}

## Quick recap of the last session

Python is a high-level programming language and is **interpreted**. It means that the program runs python files directly and translates the source code into the machine language. It differs from **compiled languages** which need to be compiled before beeing executed. C, C++, Fortran, Cobol are examples of compiled languages.

There are **two ways to run python code**.
Either we write python commands we want to execute in a file we've created (with the .py extension) or we can directly write commands in a python interpreter.

On [replit.com](https://replit.com/languages/python3), you have on the left side a python file in which you can write. On the right side, you have the python interpreter in which you can directly write code and execute it. Write a line of python code just in front of the small arrow `>` and press enter to see the result.

``` Python
> print( "hello world")
# output: => "hello world"
```

## Data Types

The notion of **type** in many programming languages is an essential aspect. It caracterises an object. Here is the definition given by [Wikipedia](https://en.wikipedia.org/wiki/Data_type):

*" A data type or simply type is an attribute of data which tells the compiler or interpreter how the programmer intends to use the data "*


By reading this definition, we understand that *types* imply sets of rules that the interpreter and the programmer have to follow. In Python, all objects have at least one **type**. If you feel confortable with the concept, you can have a look at [this graph]("https://en.wikipedia.org/wiki/Python_(programming_language)#/media/File:Python_3._The_standard_type_hierarchy.png") which represents the type hiarchy.

Objects of the same type **share** some properties, methods (because they belong to the same class but Shhhh this concept will come later)


##### More commonly used data types:
- Strings (ex: `'asdf'`, `'hello my name is x'`, `'a'`, `'123'`)
- Integers (ex: `1`, `-100`, `1383234`)
- Floats (floating point values) (ex: `1.0`, `-100.1234`, `0.0000003`, `1e5`)
- Booleans (ex: `True`, `False`)
- Lists (ex: `[3, 1, 'r', 'e']`, `[]`, `[3.2, 3, 4.5]`)
- Functions (ex: `def my_function (a, b): ...`)


#### Practice Python to have a better understanding !

**1) Find the type of your data :**

 You can use the keyword *type()* to know the type of an object.

<ins>Example</ins>  :

```python
>>> type("hello")
# outputs: -> <str>
```

Try to diplay the other common types given just above and observe the output.

 **2) Operations on types and between types**

Try `+` operator on integers, lists, strings and see what happens. When you add two strings or lists together, it is called **concatenation**.

<ins>Example</ins>  :
 ```python
 >>> print("Hey"+" guys"+ "!")
 # outputs: -> Hey guys !
 ```
Now try to add a string with an integer. Is it working ?


**3) Data conversion**

a) Give the result of the addition `3.5+2.5` in type `int` (and not a float).

b) Add `"Hey, I'm"` and `int(24)` together to create one string with `"Hey, I'm 24"`. Make it work !

{{< tip >}}
If it's to hard, you can have a look [here](https://stackoverflow.com/questions/20441035/unsupported-operand-types-for-int-and-str) to get more precisions about the error message.
{{< /tip >}}



## Variables

If you don't remember exactly what a variable is, have a look at the [course page](http://localhost:1313/ber-dcp-intro-to-computer-science/docs/python/intro_to_python/).

**1) Which type for a variable ?**

When you **assigned** an object to a variable, the variable gets the type of this object.

What is the type and the value of `a` at the end of the program ?

```python
a = 1
b = " world "

a += 2           
a = "hello"

a = (a + b)*2

```
{{< tip >}}
a+=1 is equivalent to  a=a+1
{{< /tip >}}

**2) Modify a variable**

As you can see in the piece of code written above, a variable can be edited as many time as you wish. Its type can change in a single piece of code... (However, it's not recommended to change the type of a variable in the same program. It can be confusing for the programmer).



## Iterables

If you don't remember exactly what an iterable is, have a look at the [course page](http://localhost:1313/ber-dcp-intro-to-computer-science/docs/python/intro_to_python/).

```python
tab = ["a", 123, 'google', True]
```
1) Give me the third element of the list. Which type is it ?

2) What is the length of this list ?

3) Add the string `"new_item"` at the end of `tab` ?


Consider the new list :

```python
google_tab = ['google', True, 'google', True, 'google', True, 'google', True, 'google', True, 'google', True, 'google', True, 'google', True]
```
1) Could you give in one line a way to get google_tab without all the `google` strings ?
{{< tip >}}
The keyword is **slicing** ;)
{{< /tip >}}
## Functions or methods


A function/method is an object that take inputs (parameters) and give you back outputs. (You can draw a pararel with mathematical functions.) You know some functions that have already been implemented by Python for us!

*len* and *print* are both build-in methods. You can verify it by using the method : *type*

```python
>>> type(len)
# outputs: -> <class 'builtin_function_or_method'>
```
Try it by yourself !

#### Small challenge
Create a fonction called `minutes_to_date(minutes)`that that translates minutes in this format YYear:DDay:HHours:MMinutes

- Give the result of minute_to_date(123234987)

{{< tip >}}
```python
def minutes_to_date(minutes):
  # Write your function that translates the minutes variable into a new one called new_date.
  return new_date
```
{{< /tip >}}
