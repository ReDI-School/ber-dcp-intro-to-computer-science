+++
title = "01/April - Practical Demonstration of HTML and CSS"
description = "Goals"
weight = 30
+++

![html-intro-image](http://www.gdiannarbor.com/events/inter-html-css/images/responsive-design.png)

## Prerequisites

- Decide who to build a website for: you? your pet? someone else?
- Pick a simple background image for your website. You can choose a landscape photo you've taken or search
for images that are free to use e.g. from [Unsplash](https://unsplash.com/) or [search Ecosia and filter by license](https://www.ecosia.org/images?q=background%20image&license=share)

## Class Curriculum

| Section content                          | Expected time (mins) | Pre - Requirements |
| ---------------------------------------- | -------------------- | ------------------ |
| Kahoot on previous material              | 15 minutes          |  ❌    |
| Lesson Agenda and Goals                  | 5 minutes            | ❌                    |
| HTML/CSS Activity (in smaller groups)    | 35 minutes          | VsCode and Git installed  |
| Class break                              | 10 minutes           | ❌                    |
| HTML/CSS Activity (in smaller groups)    | 40 minutes          | VsCode and Git installed  |
| Questions and Review                     | 10 minutes          | VsCode and Git installed  |

## Lesson Goal

Practice using HTML and CSS to build a website.

The following tutorial will go through the process of making a website for **you**, but
you can adapt it to make the website for anything you want.

## Legend

✏️  - do this section in your IDE (VSCode) or terminal  
🎨 - this is a section that you can customise and make changes  
📖 - this is a note, you do not need to do anything with this code  

## 0. Set up the repository

✏️ We will start working from the following repository: https://github.com/ReDI-School/ber-intro-to-cs-2021-html-css-website

Fork the repository and then clone your fork of the repo. *Hint*: `git clone ...`

Note: there is a branch corresponding to each section of the tutorial. If at any point you get stuck, you can
check out the completed code for that section. These are the branch names:

```
  1-starting-html
  2-navigation-bar
  3-introduction
  4-about-section
  5-contact-section
```

## 1. Adding some HTML to start

✏️ Open the repository in VSCode. Go to the file `index.html`. Add the following and save the changes:

```html
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="assets/css/style.css">
  <title> PLEASE CHANGE ME </title>
</head>
<body>

<!-- Leave this space empty for content -->

</body>
</html>
```

📖 What does each of these lines mean?

1. The page is defined as a HTML document: 
```html
<!DOCTYPE html>
```

<html>

2. The character set is defined as UTF-8:
```
<meta charset="UTF-8">
```

3. A meta viewport tag is used to ensure the site looks good on different screen sizes e.g. mobile, laptop:
```
<meta name="viewport" content="width=device-width, initial-scale=1">
```

4. A link to the CSS file we will use to style the site is added. This file is located
elsewhere in the repository:
```
<link rel="stylesheet" href="assets/css/style.css">
```

5. A title is added:
```
<title> PLEASE CHANGE ME </title>
```

6. The visual website content will be contained within the `body`. Right now it contains only a comment:
```
<body> 
<!-- Leave this space empty for content -->
</body>
```

Now view this in the browser. 

✏️ First we need to know the present working directory. Open the terminal and `cd` into the website
repository. Then type the following and copy the output:

```
pwd
```

Open your browser and copy the following into the address bar (but replace the text enclosed in `<>` with the paste of your 
working directory):

```
file://<paste the pwd>/index.html
```

You should see:
* The text in the tab says `PLEASE CHANGE ME`
* The webpage is blank

🎨 Lastly, change the text `PLEASE CHANGE ME` in `index.html` to `my website` (or your preferred text), and refresh the page.
What has changed?

## 2. Navigation Bar (navbar)

We have an empty webpage - so much space to fill! Let's start with a navbar.

A navbar contains a list of the places to navigate to on a website e.g. `Home`, `Notifications`, `Messages`.

Our website will contain three sections: `Home`, `About` and `Contact`.

### Content (HTML)

✏️ Add the following in between the two `<body>` tags (replacing the comment).

```html
<!-- Header -->
<header class="intro">
  <!-- Navbar -->
  <div class="navbar">
    <a href="#" class="button">Home</a>
    <a href="#about" class="button">About</a>
    <a href="#contact" class="button">Contact</a>
  </div>
</header>
```

📖 What does this mean?

1. The `<header>` tag is used to specify that a header is added to the page. This typically contains
a navigation bar and/or introductory information.

```html
<header class="intro">
...
</header>

```

2. The `<div>` tag represents a new section or division.
The `<a>` tag is used to link from one page to another, or if a `#` is used, to link to 
another section on the same page. Later on we will create sections for `About` and `Contact`.
```html
  <div class="navbar">
    <a href="#" class="button">Home</a>
    <a href="#about" class="button">About</a>
    <a href="#contact" class="button">Contact</a>
  </div>
```

Go to your browser and refresh the page to display this content. You will see that the navbar content is present
but is unstyled, so we will add some styling with CSS.

### Styling (CSS)

✏️ In your IDE open the file: `assets/css/style.css`.

1. Add the following to style and set a the colour of the navbar:

```css
body {
    margin: 0px;
}

.navbar {
    background-color: #5354f4;
    overflow: hidden;
}
```

🎨 The text `#5354f4` represents a [hex colour code](https://www.shutterstock.com/blog/how-hex-colors-work). Use a [colour picker](https://htmlcolorcodes.com/color-picker/) to choose a different colour and change this!

2. Next, style the navigation bar links by adding the following to `style.css`:

```css
/*Navigation bar links*/
.navbar a {
  display: block;
  padding: 20px 25px;
  text-align: center;
  text-decoration: none;
  float: left;
  color: white;
}
```

🎨 For each of these items, see if you can figure out what it does either by [making a search on Ecosia](https://ecosia.org) or by editing/removing them.

3. Lastly change what happens when a mouse is hovering over a link, by adding the following:

```css
/*Hovering over navigation bar*/
.navbar a:hover {
  background-color: #faf800;
  color: black;
}
```

🎨 Again, change each of these to understand what they are doing.

## 3. Adding an introduction header

Within the header, we want to introduce ourselves and say hello to the world. We will add a
greeting here.

### Content (HTML)

✏️ Return to the `index.html` file and add the following content after the `navbar` section and still
between the `<header>` tags:

```html
  <!-- Introduction -->
  <div class="summary">
    <h1 class="name">Hello, my name is ___ </h1>
    <h3 class="title">My title</h3>
  </div>
```

The `<h>` tags are used to create different headings and subheadings.
Here `<h1>` is used as the main heading, and `<h3>` as a subheading.

🎨 Now customise the greeting and title with your name and title e.g. your title could be
`Redi School Student`, `Programmer` or even an emoji like: 💻.

### Styling (CSS)

✏️  Open `style.css` again.

We will change the font and position the intro text in the centre of the screen. Then we
will add a background image.

1. Change the font

Where you have previously, added: 

```
body {
    margin: 0px;
}
```

Replace this with the following: 

```css
body,
html {
    height: 100%;
    margin: 0px;
}
body,
h1,
h2,
h3,
h4,
h5,
h6,
p {
    font-family: Arial, sans-serif;
    font-weight: 500;
    color: #5354f4; 
}
```

This will:
- make the body have 100% of the screen height.
- change the font for all text types to `Arial`, and change the text colour and weight.

🎨 Again, customise the following:

- font 
- font-weight
- colour

2. Now we will center the text in the screen

✏️ Add the following to the CSS file:

```css
/*Introduction*/
.summary {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);

    text-align: center;
    letter-spacing: 4px;
}
```

Read through each of these items. Can you figure out what each of them is doing? Try searching Ecosia, asking one of the instructors or experimenting by changing them. 


3. Lastly, we will add a background image

For this, we will need the image that you selected as part of your preparation work.

Save this image to the folder: `assets/images` and give it the name `background.jpg` (or if it is an `png` image, `background.png`)

✏️ Now add the following to `style.css`:

```css
.intro {
    height: 100%;
    background-image: url("../images/background.png");
    background-size: cover;
}
```

If your background image has a `.jpg` extension, change this to `url("../images/background.jpg");`.

## 4. About section 

✏️ Next we will add an `about` section. Between the `</header>` tag and `</body` tag, add the following:

### Content (HTML)

```html
<!-- About -->
<div class="about" id=about>
  <h2>About Me</h2>
  <p>Some things I like are ___ . I am learning about ____. </p>
</div>
```

🎨 Customise the text between the `<p></p>` paragraph tags.

### Styling (CSS)

✏️ To style the text in the `About` section, add the following:

```css
/*about section*/

.about h2, p {
    text-align: left;
    padding-left: 25%;
    padding-top: 1%;
    padding-bottom: 1%;

}

.about p {
    font-size: 20px;
}
```

This will align the text and change the font size of the paragraph.

🎨 Change the font size and padding.

## 5. Contact section

Finally, we will add a `Contact` section with a list of links for how to contact us. 

### Content (HTML)

✏️ Add the following underneath the `About` section:

```html
<!-- Contact -->
<div class = "contact" id=contact>
  <h2>Contact</h2>
    <ul>
      <li><a href="https://github.com/<exampleuser>">GitHub</a></li>
      <li><a href="mailto:example@email.com">Email</a></li>
      <li><a href="https://twitter.com/<exampleuser>">Twitter</a></li>
    </ul>
</div>
```

This creates a `Contact` section with an unordered list (`<ul>`). Each list item `<li>` is a
link to different forms of contact. 

🎨 Customise this list by adding/removing/editting the contents, but don't add any contact details
that you are not comfortable with.

### Styling (CSS)

We will style the `Contact` section similiarly to the `About` section. The main difference
is that this time we have a list and we want to style the list and its items. 

✏️ Add the following to the `style.css` document.

```css
.contact h2, ul, li {
    text-align: left;
    padding-left: 25%;
    padding-top: 1%;
    padding-bottom: 1%;
}

.contact li {
    padding-left: 1%;
}

.contact a {
    border-bottom: dotted;
    text-decoration: none;
}
```

🎨 Learn what each of these is doing by customising the section, looking up what they mean or removing
them entirely!

## 6. Follow-up

Here are some things you can do to continue your work:

- Compile a list of questions: what didn't you understand? Share the questions in the team slack. Remember if you are unsure about something, then someone else probably is too. Sharing questions openly helps everyone learn, including the teachers and instructors.
- Further customise the website by adding or removing sections, for example adding a section for photos or fun facts. 
- Commit your changes and push your code to GitHub.
- Publish your website on GitHub using [GitHub Pages](https://docs.github.com/en/github/working-with-github-pages/creating-a-github-pages-site)

## Next class preparation

{{< button "../basic_js/" "Basics of JavaScript" "mb-1 grid-4" >}}

