+++
title = "13/April - Practice Javascript, HTML and CSS"
description = "To continue learning and creating things with Javascript, HTML and CSS"
weight = 40
+++

![js-html-css-image](https://vdoit.in/wp-content/uploads/2016/09/vDoIT_html-css-logo1.jpg)


## Preparations

---

## Class Curriculum

| Section content                          | Expected time (mins) | Pre - Requirements |
| ---------------------------------------- | -------------------- | ------------------ |
| Intro to Lesson                          | 5 minutes     | ❌                    |
| Practical Activity (in smaller groups)   | 40-50 minutes     | VsCode and Git installed  |
| Checkout                                 | 5 minutes     | ❌   |

## Lesson Goal

Practice what we've learned so far!

We're going to make use of the command line, HTML, CSS and Javascript to create a web page that 
displays the time and date!

## 1. Set up a new repository

- Open the terminal. Create a new directory and move to the new directory:

```
mkdir date-time-website && cd date-time-website
```

- Create a README:

```
echo "# Time and Date Website" > README.md
```

- Initialise a new repository and change the branch to main:

```
git init
git checkout -b main
```

- Create the first commit:

```
git a .
git commit -m "Initialise the repository with a README"
```

## 2. Create the HTML files

- Open VSCode from the terminal:

```
code .
```

- Create a file called `index.html`

- Add the following to `index.html`:

```html
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title> Date and Time Website </title>
</head>

<body>
    <h1> Today's date is Tuesday, 13th April </h1>
    <h2> The time is 20:30 CET </h2>
</body>

</html>
```

This sets up the content of the webpage. But there is a problem! We have hard-coded the date
and time. To `hard-code` something means to set it so that it cannot be changed or updated. The
webpage will always say it is Tuesday, 13th of April, even when it is not. In `Section 3` we
will use Javascript to display the correct date and time always.

- Run LiveServer

- Add and commit this to git.   
[*hint:* `git add .` and `git commit -m "..."`, replacing `...` with a meningful message.]

## 3. Create the CSS Files

- Create a file called `style.css`.

- Add the following to `style.css` to style the page:

```css
body {
    text-align: center;
    background-color: teal;
    font-family: Arial, sans-serif;
    font-weight: 500;
    color: silver; 
}
```

- In `index.html`, append the following between the `<head>` tags to reference the `css` file:

```html
  <link rel="stylesheet" href="style.css">
```

- Refresh LiveServer

- Change the colours and font weight.

- Add and commit your changes to git.   
[*hint:* `git add .` and `git commit -m "..."`, replacing `...` with a meaningful message.]

## 4. Introduce Javascript to find the date and time

- Create a file called `script.js`

- Add the following to the script:

```javascript
var date = new Date();

// We can take a look at what d contains with the console:
console.log(date)

// Extract the date from d:
var currentDate = date.toDateString()

// Extract the time from d:
var currentTime = date.toLocaleTimeString()

document.body.innerHTML = "<h1>Today's date is " + currentDate + "</h1> <h2> The time is " + currentTime + "</h2>"
```

Here we use the Javascript [Date](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date)
object to retrieve the date and time and assign it to a `variable`, d. We then make use of two methods `toDateString()` and
`toLocalTimeString()` to extract only the information that we want (the date and time) from the variable, d and 
assign this information to two new variables, `currentDate` and `currentTime`. The `document.body.innerHTML`. If this
is your first time encountering the term `variable`, one of the teachers can explain what the term means.

- Replace the following in `index.html`:

```html
<body>
    <h1> Today's date is Tuesday, 13th April </h1>
    <h2> The time is 20:30 CET </h2>
</body>
```

with :

```html

<body>
    <script src="./script.js" ></script>
</body>
```

- Refresh LiveServer

- Use your browser's Developer Tools to inspect the page, and take a look at what was logged in
the Javascript you wrote (`console.log(date)`)

- Add and commit these changes to git.   
[*hint:* `git add .` and `git commit -m "..."`, replacing `...` with a meaningful message.]

## 5. Push to Github

- Create a repository on GitHub, called `date-time-website`

- Connect the GitHub repository to your local repository:   
[Hint: `git remote add origin https://...`]

- Push your work to Github

## Learning more HTML, CSS or Javascript

To learn more about HTML, CSS and/or Javascript:

- Learn creative coding with p5js. With creative coding, you can make beautiful and interactive things like [this](https://p5js.org/examples/interaction-wavemaker.html) or
[this](https://p5js.org/examples/interaction-weight-line.html). Try out the [getting started](https://p5js.org/get-started/) documentation to start learning how to use
p5js or watch a [Coding Train Introductory Playlist](https://www.youtube.com/watch?v=8j0UDiN7my4).

- [Mozilla Web Development Docs](https://developer.mozilla.org/en-US/docs/Learn)

- [Free Code Camp - Introduction to Javascript](https://www.freecodecamp.org/learn/javascript-algorithms-and-data-structures/basic-javascript/)

- [javascript.info](https://javascript.info/)

