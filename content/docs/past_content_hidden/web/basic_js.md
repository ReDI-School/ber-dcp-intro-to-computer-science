+++
title = "14/October - Basic knowledge of Javascript"
description = "To gain familiarity with what JavaScript is, what it can do, and how it fits into a web site."
weight = 40
+++

![js-vscode-image](https://code.visualstudio.com/assets/docs/languages/javascript/overview.png)


## Preparations

- [A short intro to JavaScript](https://www.youtube.com/watch?v=c-I5S_zTwAc)
- [Detailed video from AmigosCode starting from Beginners going all the way to advanced - watch from 12:15 till 56:23 and from 1:10:15 till 1:16:03](https://youtu.be/dOnAC2Rr-6A?t=737)
- [📚 An intro to JavaScript from Mozilla](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/First_steps/What_is_JavaScript)
- [A small number guessing game](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/First_steps/A_first_splash)
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

## Hint about using code snippets

Code snippets look like the box below. Please note that the full contents of the snippet are hidden if there's a lot of code. In this case, please click on the 3 dots at the bottom-left of the box to expand it and see the full code.

```js
/*
This code snippet
is










HUGE!!
*/
```

## Javascript - What is it?

JavaScript is a scripting language that enables you to create dynamically updating content, control multimedia, animate images, and pretty much everything else. (Okay, not everything, but it is amazing what you can achieve with a few lines of JavaScript code. Here is [a PacMan game you can play using your webcam](https://storage.googleapis.com/tfjs-examples/webcam-transfer-learning/dist/index.html), [a 3D home design website](http://amitukind.com/projects/architect3d/#) and [a cool 3D demo of a ball in water](http://madebyevan.com/webgl-water/), all of which are made using mostly JavaScript and push the edges of what you can do in your browser with JavaScript) It is the third layer of the layer cake of standard web technologies.

{{< block "grid-2" >}}

{{< column >}}
![web-tech-cake](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/First_steps/What_is_JavaScript/cake.png)

- JavaScript is a lightweight interpreted programming language.
- JavaScript can both be used as a client-side and server-side programming language. This means it can run on your browser on your desktop or mobile device and can also run inside "Node" on a web server.
- JavaScript is an untyped programming language. This means you don't need to specify the type of a variable when you declare it but it is understood based on the value you assign to the variable.

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

1. Inline JS. This is typically not used or should not be used because it makes your HTML harder to read and maintain (and it goes against the principle of separation of concerns - HTML should just dictate your page structure and should be contained in the `.html` files, while the JavaScript code which makes it dynamic should be in separate `.js` files)

```html
<!--Here the onclick="..." part is JavaScript and it is embedded in the HTML-->
<button onclick="javascript:alert('You clicked me!')">Click me!</button>
```

2.  Internal JS. This is similar to using a style tag in the case of Internal CSS. The position of the script tag is important as it determines when the JavaScript code is executed.

```html
<head>  
    <script>
        let counter = 1;
        counter++;
        alert("Counter is now:", counter);
    </script>
</head>
```

2.  External JS. Here the JavaScript code is written in a separate file with the extension `.js`

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

### Functions

JavaScript functions are named pieces of code which can be used to achieve a particular functionality. For example, in order to show up a pop-up with the text `Hello World!`, the following snippet of code can be used

```js
alert('Hello World!');
```

Here [alert](https://www.w3schools.com/jsref/met_win_alert.asp) is a function or piece of code available when you use JavaScript in a normal browser window. A function is called or executed by adding an opening and closing parantheses `()` after the name of the function. If the function takes any parameters, those are specified between the parantheses. Calling a function could change the state of the system (e.g. show a pop-up using `alert`) or simply return a value (e.g. return a random number between 0 and 1 in the case of [Math.random](https://www.w3schools.com/js/js_random.asp)).

You can also define your own functions to achieve some functionality and to be able to reuse this functionality. You can define a function as follows:

```js
function name(parameter1, parameter2, parameter3) {
    console.log(parameter1);
}
```

The above function only prints a message in the JavaScript console. You can also create functions which return a value, you can use the `return` keyword. For example, the below piece of code returns the sum of the parameters passed to the function.

```js
// Function definition
function sum(a, b) {
    return a + b;
}

// Calling the function and printing the value.
// This statement should print the value 8
console.log(sum(3,5));
```

### Variables

Variables are named memory locations where you can store some data. Think of variables as similar to labeled boxes which can store data.

Variables can be declared using the `let` or `var` keywords. The difference between the two is where the declared variable remains accessible or valid. A variable declared using `var` can be accessed anywhere in the program. However the validity or accessibility of a variable declared using `let` is limited to the scope (between the curly brackets) where it is defined.

If the value of a variable does not need to change once it's assigned, you can use the `const` keyword to declare the variable.

```js
var name = "JavaScript" 
const PI = 3.14
let lastName = "Language"
```

There are several reasons you might want to use variables:
 - To store the result of any function call whose value changes each time you call it (e.g. `Date() or Math.random()`).
 - To make your code readable by splitting long statements. This is illustrated with an example below
 ```js
 // Long and hard to read
 console.log(document.getElementById('element').value);

 // Easier to read and debug if something goes wrong
 const element = document.getElementById('element');
 const value = element.value;
 console.log(value);
 ```
 - To avoid having to call the same function many times. Calling a function is expensive (i.e. it takes time to execute) but getting the value stored in a variable is cheap.

### Data Types

Variables can contain different types of values and data types. Below is a code snippet showing the simple or primitive types

```js
// Any type of numerical data belongs to the Number data type
let age = 23;
let percentage = 30.5;
let loss = -10.0;
// Any textual data is stored as a String data type
// Strings can be defined by putting the text between single or double quotes
let name = "John Doe";
let other = 'Jane Doe';
// Booleans store true or false values.
// They are useful to make decisions in your code
let isMale = true;
// undefined is a type used to indicate that the variable is not defined
let iAmNotDefiningThis;
// The above variable will have the data type undefined since we did not assign a value
// Undefined can also be assigned explicitly
let explicitUndefined = undefined;
```

Apart from the above, there is an Object type which can be used to store more interesting data. There are primarily two sub-types which are interesting to us: Arrays and Objects.

Arrays can be used to store ordered lists of any primitive data types. Let's say you want to store the names of the top 5 largest countries in the world, in the order of their size. An array is the perfect data type for this use case.

```js
countries = ['Russia', 'Canada', 'China', 'United States', 'Brazil'];
```

The advantage of an array is that it also let's you access the value stored at a particular location. The only catch is that the numbering starts at 0, not at 1. So to access the value stored at the 1st location, use 0, for the 2nd location use 1 and so on. Accessing the values in an array by their position or index is called array indexing. You can perform array indexing by using the name of the array, followed by the required index in square brackets `[]`. For the above example, the below code snippet demonstrates how you can do array indexing

```js
console.log(countries[0]); // Prints Russia
console.log(countries[1]); // Prints Canada
console.log(countries[2]); // Prints China
console.log(countries[3]); // Prints United States
console.log(countries[4]); // Prints Brazil
```

Objects can be used to group information relevant to a single real-life entity in the code. For example, let's say you want to store the details of a person in the code. The below code snippet shows how you can do this using objects and compares it to the alternative.

```js
// Approach 1: Without objects
var name = 'John Doe';
var age = 45;
var address = '21 Elm Street, 5201 London, UK'

// Approach 2: With objects
var person = {
    'name': 'John Doe',
    'age': 45,
    'address': '21 Elm Street, 5201 London, UK'
}

// There are two ways to access the values stored in an object
// The first is to specify the property you are trying to access between []
// This way of accessing properties is called the Bracket notation
console.log(person['name']);

// The second is to specify the property you are trying to access using a .
// This way of accessing properties is called the Dot notation
console.log(person.age)
```

As can be seen above, holding the data in objects makes it easier to define and access this data.

### Operators

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
++ — Increment numbers, i.e. increase the value by 1
-- — Decrement numbers, i.e. decrease the value by 1
```
{{< /column >}}

{{< column >}}
Comparison 
```
== — Equal to (e.g. 3 == "3")
=== — Equal value and equal type (e.g. 3 === 3)
!= — Not equal (e.g. 3 != "4")
!== — Not equal value or not equal type (e.g. 3 !== "3")
> — Greater than (e.g. 4 > 3)
< — Less than (e.g. 3 < 4)
>= — Greater than or equal to (e.g. 3 >= 3)
<= — Less than or equal to (e.g. 3 <= 3)
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

### Comments

```js
/*
    Comments are important because they help other people understand 
    what is going on in your code.
    We already used a lot of comments in the examples above.
    Go back and try to identify them ;)
    This is a multi line comment
*/

// This is a single line comment
```

### If...else statement

Let's say you have to ask an input from the user and show a pop-up window which says "Equal to 50", "Less than 50" or "Greater than 50" depending on the value entered by the user. This requires making a decision based on the value entered by the user. This is where you can use an if...else statement. 

A simple if statement is shown below. The condition can be a variable or any expression which is a boolean data type. The code inside the curly braces is evaluated only if the value of the boolean expression is `true`.

```js
if (condition) {
    // code goes here
}

// Below are some examples of valid Boolean expressions
x === 50
x < 50
x > 50
x != 50

// Below is a complete if statement with some code
if (x === 50) {
    // You can put any code here which should execute if x is equal to 50
    console.log("Equal");
}
```

If there is a situation where you want to execute some code when the condition is `true` and some other code when the condition is `false`, you can use an if...else statement, which is demonstrated below

```js
if (x === 50) {
    // You can put any code here which should execute if x is equal to 50
    console.log("Equal");
} else {
    // You can put any code here which should execute if x is not equal to 50
    console.log("Not Equal");
}
```

If there are multiple different conditions you need to evaluate and execute code accordingly, you can use the if...else if...else construct

```js
if (x === 50) {
    console.log("Value and type are equal");
} else if (x == 50) {
    console.log("Value is equal");
} else {
    console.log("Neither value nor type are equal");
}
```

The code snippet below shows how the scenario mentioned earlier can be coded.

```js
/* prompt is a function which shows a pop-up asking for user input
The parameter passed to the function is the message displayed on the pop-up */
var userInput = prompt("Enter a number");

/* The output from the prompt function is a String
To convert it to a Number, you can just pass it as a parameter to Number() */
var num = Number(userInput);

/* An if statement 
*/
if (num === 50) {
    alert("Equal to 50");
} else if (num < 50) {
    alert("Less than 50");
} else {
    alert("Greater than 50");
}
```

### Events

HTML events are "things" that happen to HTML elements.

When JavaScript is used in HTML pages, JavaScript can "react" on these events.

An HTML event can be something the browser does, or something a user does.

Here are some examples of HTML events:

- An HTML web page has finished loading
- An HTML input field was changed
- An HTML button was clicked

Often, when events happen, you may want to do something.

JavaScript lets you execute code when events are detected.

You can specify what code to execute by using the [addEventListener](https://www.w3schools.com/jsref/tryit.asp?filename=tryjsref_onmouseover_addeventlistener) method of an element.
The below snippet shows how to handle a click event on a button to show a popup.
The first parameter to `addEventListener` is the type of event.
Here since we want to respond to someone clicking on the button, the event type is `click`.
The second parameter is the actual code to execute.
This could be provided as a function declaration inline or as the name of a function declared elsewhere.
The code or function which is called is referred to as the `event handler`, since it handles the event in some way.

```html
<input type="button" id="show_popup">Show popup</input>
```

```js
var btn = document.getElementById('show_popup');
btn.addEventListener("click", function() {
    alert("Here's a popup");
});

// Alternative way of specifying the event handler
btn.addEventListener("click", showPopup);

function showPopup() {
    alert("Here's a popup");
}
```

## Activity

Try to create the guessing game mentioned in [this link](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/First_steps/A_first_splash). You can fork the code [on this repo](https://github.com/ReDI-School/guessing-game) to get started.

## Extra resources

- [A cool interactive website to learn JavaScript by doing little exercises](https://learnjavascript.online/app.html)
- [📽️ Learn JavaScript - Full Course for Beginners](https://youtu.be/PkZNo7MFNFg) - Continue watching
- [📚 Learn JS](https://developer.mozilla.org/en-US/docs/Learn/JavaScript)
- [📚 JavaScript for impatient programmers](https://exploringjs.com/impatient-js/toc.html)

## Next class preparation

{{< button "../practice_js/" "Practical lesson JS" "mb-1 grid-4" >}}