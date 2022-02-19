+++
title = "07/October - Basic knowledge of CSS (Cascading Style Sheet)"
description = "Goals"
weight = 20
+++

![basic-css-image](https://developer.mozilla.org/en-US/docs/Learn/Getting_started_with_the_web/CSS_basics/css-declaration-small.png)

## Preparations

### 1. Watch these Videos

- [Why Is CSS So Weird?](https://www.youtube.com/watch?v=aHUtMbJw8iA) - Theory & history
- [Learn CSS in 20 Minutes](https://www.youtube.com/watch?v=1PnVor36_40) - Practice
- [Learn CSS Flexbox 15 Minutes](https://www.youtube.com/watch?v=fYq5PXgSsbE) - Practice
- [Learn CSS Grid 20 Minutes](https://www.youtube.com/watch?v=9zBsdzdE4sM) - Practice

### 2. HTML class practice repository on Github

We'll continue to apply some style to the journal we started building in our previous session [Basic HTML](../basic_html/)

- https://github.com/ReDI-School/ber-intro-to-cs-2021-html-journal

---

## Class Curriculum

| Section content                           | Expected time (mins) | Pre - Requirements       |
| ----------------------------------------- | -------------------- | ------------------------ |
| Lesson Agenda and Goals                   | 5 minutes            | ❌                       |
| Questions from last session               | 15 minutes           | ❌                       |
| Live demo on basic CSS                    | 25 minutes           | Preparations section     |
| Review CSS Activity task as a whole class | 10 minutes           | ❌                       |
| Class break                               | 10 minutes           | ❌                       |
| CSS Activity (in smaller groups)          | 45-60 minutes        | VsCode and Git installed |

## Lesson Goal

Understand what CSS is, why we use it and how we can apply it to style HTML pages

## CSS - What is it?

[CSS (Cascading Style Sheets)](https://developer.mozilla.org/en-US/docs/Learn/CSS) is a declarative language that controls how webpages look in the browser. The browser applies CSS style declarations to selected elements to display them properly. A style declaration contains the properties and their values, which determine how a webpage looks.

[CSS](https://developer.mozilla.org/en-US/docs/Glossary/CSS) is one of the three core Web technologies, along with HTML and JavaScript. CSS usually styles HTML elements, but can be also used with other markup languages like SVG or XML.

## CSS Rule

A CSS rule is a set of properties associated with a selector. Here is an example that makes every HTML paragraph yellow against a black background:

```css
/* The selector "p" indicates that all paragraphs in the document will be affected by that rule */
p {
  /* The "color" property defines the text color, in this case yellow. */
  color: yellow;

  /* The "background-color" property defines the background color, in this case black. */
  background-color: black;
}
```

## How does CSS Actually Work

![how-doess-css-actually-work](https://www.edureka.co/blog/wp-content/uploads/2019/08/CSS-underhood-css-interview-questions-edureka-1.png)

When a browser displays a document, it must combine the document's content with its style information. It processes the document in a number of stages, which we've listed below. Bear in mind that this is a very simplified version of what happens when a browser loads a webpage, and that different browsers will handle the process in different ways. But this is roughly what happens.

1. The browser loads the HTML (e.g. receives it from the network).

2. It converts the HTML into a DOM (Document Object Model). The DOM represents the document in the computer's memory.

3. The browser then fetches most of the resources that are linked to by the HTML document, such as embedded images and videos ... and linked CSS! JavaScript is handled a bit later on in the process, and we won't talk about it here to keep things simpler.

4. The browser parses the fetched CSS, and sorts the different rules by their selector types into different "buckets", e.g. element, class, ID, and so on. Based on the selectors it finds, it works out which rules should be applied to which nodes in the DOM, and attaches style to them as required (this intermediate step is called a render tree).

5. The render tree is laid out in the structure it should appear in after the rules have been applied to it.

6. The visual display of the page is shown on the screen (this stage is called painting).

## How CSS is structured

There are typically 3 ways we do that to include CSS in a HTML Page:

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

## CSS Selectors

1. Element

The first way to select an HTML element is by simply using the name:

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

We are selecting different elements like h1, p, div and giving them different style attributes. The font-size controls the size of the text, color sets the text color, and margin adds spacing around the element.

2. Class

Another way of selecting HTML elements is by using the class attribute. In HTML, we can assign different classes to our elements. Each element can have multiple classes, and each class can also be applied to multiple elements as well.

```html
<div class="container">
  <h1>This is heading</h1>
</div>

.container { background-color: blue; }
```

In the code above, we have assigned the class of container to the div element. In the stylesheet, we select our class using .className format and giving it a blue background color.

3. ID

Like classes, we can also use IDs to select HTML elements and apply styling to them. The only difference between class and ID is that one ID can be assigned to only one HTML element in one page.

```html
<div>
  <p id="para1">This is a paragraph</p>
</div>

#para1 { color: green; font-size: 16px; }
```

## Activities

1. Add a style sheet to the journal you were working on previously, and change the colors, fonts, etc. of your journal. Be creative here! Make sure to commit and push the changes to your repository afterwards. Some example tasks:

   - Change the color and font size of all of the h1 (large heading) tags (hint: use element selection)
   - Create several CSS classes to style the color, font, font size, background color, and alignment of text. Apply these classes to several elements of your journal.
   - Create an "id" to select a particular paragraph or div in your journal and style (i.e. change the color or background of the paragraph or div).

2. (optional - it's ok if you don't get to this task!) Spend some time working through [Grid Garden](https://cssgridgarden.com/) with your partner.
3. (optional - it's ok if you don't get to this task!)Spend some time working through [CSS Diner](https://flukeout.github.io/) with your partner.

## Extra resources

- [Learn to style HTML using CSS](https://developer.mozilla.org/en-US/docs/Learn/CSS)
- [Build a Classic Layout FAST in CSS Grid](https://www.youtube.com/watch?v=KOvGeFUHAC0&list=PLgjjGlfBflIS3jdp_IkuRDB36MnXZG2hM&index=10)
- [Inspecting the CSS Cascade using Firefox DevTools](https://www.youtube.com/watch?v=Sp9ZfSvpf7A)
- [Flexbox Froggy](https://flexboxfroggy.com/)
<!-- - [Grid Garden](https://cssgridgarden.com/)
- [CSS Diner](https://flukeout.github.io/) -->

## Next class preparation

{{< button "../html_css/" "Practical lesson demonstrating HTML & CSS" "mb-1 grid-4" >}}
