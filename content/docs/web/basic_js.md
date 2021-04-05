+++
title = "06/April - Basic knowledge of Javascript"
description = "To gain familiarity with what JavaScript is, what it can do, and how it fits into a web site."
weight = 40
+++

![js-vscode-image](https://code.visualstudio.com/assets/docs/languages/javascript/overview.png)


## Preparations

- [📽️ Learn JavaScript - Full Course for Beginners](https://youtu.be/PkZNo7MFNFg) - Watch as much as you can
- [📚 Javascript basics](https://developer.mozilla.org/en-US/docs/Learn/Getting_started_with_the_web/JavaScript_basics)
---

## Class Curriculum

| Section content                          | Expected time (mins) | Pre - Requirements |
| ---------------------------------------- | -------------------- | ------------------ |
| Lesson Agenda and Goals                        | 5 minutes         | ❌                    |
| Live demo on basic JS                          | 45 minutes        | Preparations section |
| Review of the Activity task as a whole class   |  10 minutes       | ❌                    |
| Class break                                    | 10 minutes        | ❌                    |
| JS Activity (in smaller groups)                | 45-60 minutes     | VsCode and Git installed  |

## Lesson Goal

To gain familiarity with what JavaScript is, what it can do, and how it fits into a web site.

## Javascript - What is it?

JavaScript is a scripting language that enables you to create dynamically updating content, control multimedia, animate images, and pretty much everything else. (Okay, not everything, but it is amazing what you can achieve with a few lines of JavaScript code.) It is the third layer of the layer cake of standard web technologies.

{{< block "grid-2" >}}

{{< column >}}
![web-tech-cake](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/First_steps/What_is_JavaScript/cake.png)

- JavaScript is a lightweight interpreted programming language.
- JavaScript can both be used as a client-side and server-side programming language
- JavaScript is an untyped programming language

{{< /column >}}

{{< column >}}

```html
<p>Player 1: Chris</p>
```

```css
p {
  font-family: 'helvetica neue', helvetica, sans-serif;
  text-align: center;
  border: 2px solid rgba(0,0,200,0.6);
  color: rgba(0,0,200,0.6);
  display: inline-block;
  cursor: pointer;
}
```

```js
const para = document.querySelector('p');

para.addEventListener('click', updateName);

function updateName() {
  let name = prompt('Enter a new name');
  para.textContent = 'Player 1: ' + name;
}
```

{{< /column >}}

{{< /block >}}

## What can JavaScript do

![js-execution](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/First_steps/What_is_JavaScript/execution.png)

The core client-side JavaScript language consists of some common programming features that allow you to do things like:

  1. Store useful values inside variables.

  2. Operate on text pieces to form new text pieces

  3. Running code in response to certain events occurring on a web page.
  
  4. Dynamically modify HTML and CSS to update a web page ( with the DOM API)

  5. Retrieves geographical information ( with the Geolocation API )

  5. Create animated 2D and 3D graphics (with the Canvas and WebGL APIs)

  6. Play audio and video right in a web page, create audio and video calls ( with the Audio and Video APIs like HTMLMediaElement and WebRTC)

  7. And much,much more!

## How do you add JavaScript to your page

There are typically 3 ways we do that to include JS in a HTML Page ( just like CSS):

1. Inline JS

```html
<button onclick="javascript:alert('You clicked me!')">Click me!</button>
```

2.  Internal JS

```html
<head>  
    <script>
        let counter = 1;
        counter++;
        alert("Counter is now:", counter);
    </script>
</head>
```

2.  External JS

```html
<head>  
    <script src="script.js" defer></script>
    <script src="script-independent.js" async></script>
</head>
```

## Ways of loading JS scripts

1. If your scripts should be run immediately and they don't have any dependencies, then use async.
2. If your scripts need to wait for parsing and depend on other scripts and/or the DOM being in place, load them using defer and put their corresponding `<script>` elements in the order you want the browser to execute them.

## Basic JS Guide

1. Comments: 

```js
/*
    Comments are important because they help other people understand 
    what is going on in your code.
    This is a multi line comment
*/

// This is a single line comment
```

2. Variables: 

Stand-in values that you can use to perform operations.

```js

// The most common variable. It can be reassigned but only accessed within a function. Variables
// defined with var move to the top when the code is executed. 
var name = "JavaScript" 
// Can not be reassigned and not accessible before they appear within the code.
const PI = 3.14
// Similar to const, the let variable can be reassigned but not re-declared.
let lastName = "Language"
```
3. Data Types

Variables can contain different types of values and data types. You use = to assign them:

```js
let age = 23 // Numbers
let x // variables
let a = "init" // text - strings
let b = 1 + 2 + 3 // operations
let c = true // true or false, booelans
const PI = 3.14 // constants
let person = {firstName:"John", lastName:"Doe"} //objects
let numbers = [1, 2, 3] // arrays - contain 3 items
```

4. Operators

If you have variables, you can use them to perform different kinds of operations. To do so, you need operators.
{{< block "grid-3" >}}

{{< column >}}
Basic
```js
+ — //Addition
- — //Subtraction
* — Multiplication
/ — Division
(...) — Grouping operator, operations within brackets are executed earlier than those outside
% — Modulus (remainder )
++ — Increment numbers
-- — Decrement numbers
```
{{< /column >}}

{{< column >}}
Comparison 
```
== — Equal to
=== — Equal value and equal type
!= — Not equal
!== — Not equal value or not equal type
> — Greater than
< — Less than
>= — Greater than or equal to
<= — Less than or equal to
? — Ternary operator
```
{{< /column >}}

{{< column >}}
Logical
```
&& — Logical and
|| — Logical or
! — Logical not
```
{{< /column >}}
{{< /block >}}

5. Functions

JavaScript functions are blocks of code that perform a certain task. A basic function looks like this:
```js
function name(parameter1, parameter2, parameter3) {
    console.log(parameter1);
}
```

## Extra resources

- [📽️ Learn JavaScript - Full Course for Beginners](https://youtu.be/PkZNo7MFNFg) - Continue watching
- [📚 Learn JS](https://developer.mozilla.org/en-US/docs/Learn/JavaScript)
- [📚 JavaScript for impatient programmers](https://exploringjs.com/impatient-js/toc.html)

## Next class preparation

{{< button "../practice_js/" "Practical lesson JS" "mb-1 grid-4" >}}
