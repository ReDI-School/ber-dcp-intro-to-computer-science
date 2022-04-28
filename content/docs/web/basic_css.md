+++
title = "28/04 - Basic knowledge of CSS"
description = "Goals"
weight = 20
+++

<!-- ![basic-css-image](https://developer.mozilla.org/en-US/docs/Learn/Getting_started_with_the_web/CSS_basics/css-declaration-small.png) -->
![basic-css-image](https://www.techfry.com/images/tutorials/css-tutorial.jpg)

## Preparations

### 1. Revise HTML Basics
- What's a HTML element?
- What's a HTML tag?
- What's a HTML attribute?

→ [Basic HTML](../basic_html/)

### 2. Watch these Videos

- [CSS in 100 Seconds](https://www.youtube.com/watch?v=OEV8gMkCHXQ) - 2:19
- [CSS explained in 5 minutes](https://www.youtube.com/watch?v=Z4pCqK-V_Wo) - 8:15
- [Learn CSS in 20 Minutes](https://www.youtube.com/watch?v=1PnVor36_40) - 23:43

---

## Class Curriculum

| Section content                           | Expected time (mins) | Pre - Requirements       |
| ----------------------------------------- | -------------------- | ------------------------ |
| Questions from last session               | 15 minutes           | ❌                       |
| Lesson Agenda and Goals                   | 5 minutes            | ❌                       |
| CSS Basics explained                      | 20 minutes           | Preparations section     |
| Live Demonstration of CSS Basics          | 25 minutes           | HTML Basics              |
| Class break                               | 10 minutes           | ❌                       |
| CSS Activity (in breakout rooms)          | 45-60 minutes        | VsCode and Git installed |

## Lesson Goal

Understand what CSS is, why we use it and how we can use it to style our webpages.

## CSS - What is it?

[CSS (Cascading Style Sheets)](https://developer.mozilla.org/en-US/docs/Learn/CSS) is a declarative language that describes the presentation of a document written in a markup language such as HTML. 
The browser applies CSS style declarations to selected elements to display them according to the style sheet. 
A style declaration contains the properties and their values, which determine how a webpage looks.

⚠️ HTML allows us to structure the content of a webpage, while CSS allows us to change the look and appearance of the content.

#### How CSS actually works

![how-doess-css-actually-work](https://programmerclick.com/images/483/381b11cf2f197087b7895a7fa5d42e1b.png)

When a browser displays a document, it must combine the document's content with its style information. It processes the document in a number of stages, which we've listed below. Bear in mind that this is a very simplified version of what happens when a browser loads a webpage, and that different browsers will handle the process in different ways. But this is roughly what happens.

1. The browser loads the HTML (e.g. receives it from the network).

2. It converts the HTML into a DOM (Document Object Model). The DOM represents the document in the computer's memory.

3. The browser then fetches most of the resources that are linked to by the HTML document, such as embedded images and videos ... and linked CSS! JavaScript is handled a bit later on in the process, and we won't talk about it here to keep things simpler.

4. The browser parses the fetched CSS, and sorts the different rules by their selector types into different "buckets", e.g. element, class, ID, and so on. Based on the selectors it finds, it works out which rules should be applied to which nodes in the DOM, and attaches style to them as required (this intermediate step is called a render tree).

5. The render tree is laid out in the structure it should appear in after the rules have been applied to it.

6. The visual display of the page is shown on the screen (this stage is called painting).

## Include CSS in Projects

There are typically 3 different ways to include CSS in a project:

1. Inline CSS

```html
<h1 style="color: blue">Hello world!</h1>
```

2.  Internal CSS

```html
<head>
  <style>
    h1 {
      color: blue;
    }
  </style>
</head>
```

2.  External CSS

```html
<head>
  <link rel="stylesheet" href="style.css" />
</head>
```

<br>

## CSS Basics

#### CSS Rule
→ CSS rule is a set of style properties and values that are applied to an element through a selector.
![CSS Rule](https://code.makery.ch/library/html-css/part3/css-rule.png)

The selector "h2" indicates that all h2 in the document will be affected by that rule.

In this case the *declaration* stating `background-color: #607d8b` would give the h2 (*selector*) a background color of <span style="color:#607d8b">#607d8b</span>, which declares a rule for the h2 element.
<h2 style="background-color:#607d8b">I am a h2 headline</h2>


<!-- ![CSS Rule](https://i0.wp.com/css-tricks.com/wp-content/uploads/2017/05/css-ruleset-terminology.png?ssl=1) -->

<br>

#### CSS Selectors
1. `Element`

→ The first way to select an HTML element is by simply using the element/tag:

```css
h1 {
  font-size: 20px;
}

p {
  color: green;
}

div {
  margin: 10px;
}
```

Attributes and values explained: Font-size controls the size of the text, color sets the text color, and margin adds spacing (`10 pixels`) around the element.

<br>

2. `class`

→ Another way of selecting HTML elements is by using the class attribute. In HTML, we can assign different classes to our elements. Each element can have multiple classes, and each class can also be applied to multiple elements as well.

```html
<div class="container">
  <h1>This is heading</h1>
</div>
```
```css
.container { 
  background-color: blue; 
}
```

In the code above, we have assigned a class called container to the div element.
In the stylesheet, we select our class using `.className` format and are giving the div with the class container a blue background color. 
- Selecting an element by a class is more specific than selecting the element by the tag name.
- Classes are reuasable, and can be applied to multiple elements to style them the same.

<br>

3. `id`

→ Like classes, we can also use IDs to select HTML elements and apply styling to them - ids can and should ony be assigned to one HTML element per page and make it possible to target a unique element.

```html
<div>
  <p id="description">This is a descriptive paragraph</p>
</div>
```
```css
#description { 
  color: green; 
  font-size: 16px; 
}
```

👾 Practice CSS Selectors with [CSS Diner](https://flukeout.github.io/) 🎮

<br>

#### Pseudo-Classes
→ pseudo classes specify a special state of the selected element(s) that should be styled differently from the normal state
→ most commonly encountered found on styling anchor tags (links).

```css
a:hover {
  color: red;
}
```

This would make all links in the document turn red when the mouse is hovering over them.

<p>
  <a href="https://www.w3schools.com/css/css_pseudo_classes.asp" onMouseOver="this.style.color='red'" onMouseOut="this.style.color='rgb(52,199,89)'" >I will turn red</a>
</p>

<br>

#### CSS Flexbox
- [Learn CSS Flexbox in 15 Minutes](https://www.youtube.com/watch?v=fYq5PXgSsbE)
- [A Complete Guide to Flexbox](https://css-tricks.com/snippets/css/a-guide-to-flexbox/)

👾 Practice CSS Flexbox with [Flexbox Froggy](https://flexboxfroggy.com/) 🎮

<br>

#### CSS Grid
- [CSS Grid in 100 Seconds](https://www.youtube.com/watch?v=uuOXPWCh-6o)
- [Learn CSS Grid in 20 Minutes](https://www.youtube.com/watch?v=9zBsdzdE4sM)
- [A Complete Guide to CSS Grid](https://css-tricks.com/snippets/css/complete-guide-grid/)

👾 Practice CSS Grid with the [Grid Garden](https://cssgridgarden.com/) 🎮

<br>

## Exercise
We'll continue to apply some style to the [journal](https://github.com/hannah-eichelsdoerfer/ber-intro-to-cs-2022-journal-exercise) we started building in the [Basic HTML](../basic_html/) session


1. Open the `style.css` file  at the root of the journal project we worked on last session.

* Clear out all stylings and start from scratch (best for practicing), or add some more rules to the existing styles.

2. Change the colors, fonts, etc. of your journal. Some example tasks:

   - Change the color and font size of all of the h1 (large heading) tags (hint: use element selection)
   - Create several CSS classes to style the color, font, font size, background color, and alignment of text. Apply these classes to several elements of your journal.
   - Create an "id" to select a particular paragraph or div in your journal and style (i.e. change the color or background of the paragraph or div).

    _Time to get creative!_ 🎨

3. Make sure to commit and push the changes to your repository. 

4. (Optional) - Work through [CSS Diner](https://flukeout.github.io/), [Flexbox Froggy](https://flexboxfroggy.com/) and [Grid Garden](https://cssgridgarden.com/) with your group or alone to learn and practice CSS Flexbox and CSS Grid.
5. (Optional) - Try to improve the layout of your pages using CSS Flexbox/ CSS Grid.

<br> 

## Extra Resources
- [Why Is CSS So Weird?](https://www.youtube.com/watch?v=aHUtMbJw8iA) - Theory & history
<!-- - [Learn to style HTML using CSS](https://developer.mozilla.org/en-US/docs/Learn/CSS) -->
<!-- - [Build a Classic Layout FAST in CSS Grid](https://www.youtube.com/watch?v=KOvGeFUHAC0&list=PLgjjGlfBflIS3jdp_IkuRDB36MnXZG2hM&index=10) -->
<!-- - [Inspecting the CSS Cascade using Firefox DevTools](https://www.youtube.com/watch?v=Sp9ZfSvpf7A) -->

<br>

#### Chrome Developer Tools
→ A comprehensive toolkit for web developers, built directly into the Chrome browser

→ The Elements Tab shows you the HTML used to build the page you’re looking at, together with any inline CSS.
→ The `Chrome Dev Tools` are a great way to inspect the CSS cascade and see what styles are applied to an element.

→ Therefore great for debugging CSS and try out things in an preview environment and also getting inspiration from styles on other website.

[<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="red" class="bi bi-youtube" viewBox="0 0 16 16">
  <path d="M8.051 1.999h.089c.822.003 4.987.033 6.11.335a2.01 2.01 0 0 1 1.415 1.42c.101.38.172.883.22 1.402l.01.104.022.26.008.104c.065.914.073 1.77.074 1.957v.075c-.001.194-.01 1.108-.082 2.06l-.008.105-.009.104c-.05.572-.124 1.14-.235 1.558a2.007 2.007 0 0 1-1.415 1.42c-1.16.312-5.569.334-6.18.335h-.142c-.309 0-1.587-.006-2.927-.052l-.17-.006-.087-.004-.171-.007-.171-.007c-1.11-.049-2.167-.128-2.654-.26a2.007 2.007 0 0 1-1.415-1.419c-.111-.417-.185-.986-.235-1.558L.09 9.82l-.008-.104A31.4 31.4 0 0 1 0 7.68v-.123c.002-.215.01-.958.064-1.778l.007-.103.003-.052.008-.104.022-.26.01-.104c.048-.519.119-1.023.22-1.402a2.007 2.007 0 0 1 1.415-1.42c.487-.13 1.544-.21 2.654-.26l.17-.007.172-.006.086-.003.171-.007A99.788 99.788 0 0 1 7.858 2h.193zM6.4 5.209v4.818l4.157-2.408L6.4 5.209z"/>
</svg> https://www.youtube.com/watch?v=151NXMk0a2c](https://www.youtube.com/watch?v=151NXMk0a2c)

[<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="red" class="bi bi-youtube" viewBox="0 0 16 16">
  <path d="M8.051 1.999h.089c.822.003 4.987.033 6.11.335a2.01 2.01 0 0 1 1.415 1.42c.101.38.172.883.22 1.402l.01.104.022.26.008.104c.065.914.073 1.77.074 1.957v.075c-.001.194-.01 1.108-.082 2.06l-.008.105-.009.104c-.05.572-.124 1.14-.235 1.558a2.007 2.007 0 0 1-1.415 1.42c-1.16.312-5.569.334-6.18.335h-.142c-.309 0-1.587-.006-2.927-.052l-.17-.006-.087-.004-.171-.007-.171-.007c-1.11-.049-2.167-.128-2.654-.26a2.007 2.007 0 0 1-1.415-1.419c-.111-.417-.185-.986-.235-1.558L.09 9.82l-.008-.104A31.4 31.4 0 0 1 0 7.68v-.123c.002-.215.01-.958.064-1.778l.007-.103.003-.052.008-.104.022-.26.01-.104c.048-.519.119-1.023.22-1.402a2.007 2.007 0 0 1 1.415-1.42c.487-.13 1.544-.21 2.654-.26l.17-.007.172-.006.086-.003.171-.007A99.788 99.788 0 0 1 7.858 2h.193zM6.4 5.209v4.818l4.157-2.408L6.4 5.209z"/>
</svg> https://www.youtube.com/watch?v=25R1Jl5P7Mw](https://www.youtube.com/watch?v=25R1Jl5P7Mw)

<br>

#### CSS Frameworks
- [Bootstrap](https://getbootstrap.com/)
- [Tailwind](https://tailwindcss.com/)

#### Format on Save
- Toggle this options in your settings: **Format on Save**
- Or add this line to the `settings.json` file: `"editor.formatOnSave": true`







