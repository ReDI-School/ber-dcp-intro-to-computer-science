+++
title = "21/04 - Basic knowledge of HTML"
description = "Goals"
weight = 10
+++

![html-intro-image](https://cdn.lynda.com/course/170427/170427-637363828865101045-16x9.jpg)


## Preparations

#### Watch these Videos

The following video from Khan Academy's _Internet 101_ series will give you a high-level overview of how HTTP and HTML works.

[HTTP and HTML](https://youtu.be/1K64fWX5z4U) - 7:07

  - What is a web browser?
  - What does HTTP stand for? How does it work? What is it used for?
  - What is HTML?
  - What is a GET request?
  - What is a POST request?
  - What is a cookie?
  - What are SSL and TLS? Why are these important? How can you tell when these are in use?
  - What is the difference between HTTPS and HTTP?

[HTML explained](https://www.youtube.com/watch?v=salY_Sm6mv4) - 5:11

[HTML Tags](https://www.youtube.com/watch?v=xKuJrmlCdig&list=PLpQQipWcxwt_zElnggTMS3Y_MzF9EjOGr&index=1) ~ 6 min

#### Install the Live Server VsCode Extension
<a href="https://marketplace.visualstudio.com/items?itemName=ritwickdey.LiveServer"><img width=56 src="https://code.visualstudio.com/assets/apple-touch-icon.png" /> Live Server</a>
<a href="https://www.youtube.com/watch?v=jdWlGQdq1Q0&t=245s"><img width=56 src="https://cdn.icon-icons.com/icons2/195/PNG/256/YouTube_23392.png" /> Youtube Instructions</a>

## Class Curriculum

| Section content                          | Expected time (mins) | Pre - Requirements |
| ---------------------------------------- | -------------------- | ------------------ |
| Remaining questions on Python concepts                        | 10-15 minutes            | ❌                    |
| HTML Basics explained | 15 minutes        | ❌ 
| Creating your first webpage |  15-30 minutes        | ❌  |
| Class break                                    | 10 minutes           | 
| HTML Exercise (in breakout rooms) * [link](https://github.com/ReDI-School/ber-intro-to-cs-2021-html-journal)              | 45 minutes        | VsCode, Chrome, GitHub Desktop  |

---

## Lesson Goal

Understand what HTML is, why we use it and create a HTML-based journal with links and graphics

## HTML - What is it?


It makes up the structure and content of any webpage and tells it how it should look strucure wise.
![html-css-js-anology](https://scontent-frt3-2.xx.fbcdn.net/v/t1.6435-9/119026861_1499182456955951_7652532436839803427_n.png?_nc_cat=101&ccb=1-5&_nc_sid=730e14&_nc_ohc=kOh4c0z6WA4AX9c1tQm&_nc_oc=AQlhWYWIIcB1qs850n4o6wnk2pyFr_6Xy4nbRWtGjhkm5gmMWClZj8fijUH1jxmDKVo&_nc_ht=scontent-frt3-2.xx&oh=00_AT-Qw_Cd9W4Fb2qmXywVYTmYjVrfZ6PC2NNNqEs9HRaosw&oe=6284AFFF)

→ `HyperText Markup Language`, is a markup language (not a programming language!) designed to be displayed in a Web Browser. 


![html-intro-image](https://d6x8u9i2.rocketcdn.me/blog/wp-content/uploads/2018/10/http.png)

→ When you type in an address (url) your computer makes a request to a server and asks for this specific website (`get request`) and the server talks through http (`hyper text transfer protocol`) and responds with the html code.


## How to get started?
> Review [Starting a brand new project](../../git/git_and_github_desktop) from the Version Control with Git and GitHub lecture

→ We'll use github to store the HTML files we create in this lecture and idealy publish our first website using the `gitHub pages` hosting later on.


In your desired folder/repository create an `index.html` file.
Why call it _index_? When your browser downloads the website files from a server, it immediately searches for a first file to open and display - by default, the browser will look for a file named "index". Therefore it is common practice to have this file containing the homepage.

## Structure of HTML Documents

#### HTML Skeleton
```html
<!DOCTYPE html>
<html>
  <head>
    <!-- Page's intelligence (meta data) -->
    <title>This is a title</title>
  </head>
  
  <body>
    <!-- Actual page content (displayed in browser) -->
     <h1>Hello world!</h1>
  </body>
</html>
```

<details>
  <summary>What is the meaning of each of these lines?! 📖 </summary>
  
  1. The page is defined as an HTML document:
  ```html
  <!DOCTYPE html>
  ```
  1. The `html`tag represents the root of the document, all other elements need to go inside these tags:
  ```html
  <html>
    ...
  </html>
  ```
  3. The intelligence of a page is placed between the `head`tags (like meta data, link to stylesheets and so on)
  ```html
  <head>
    <!-- Page's intelligence (meta data) -->
    ...
  </head>
  ```
  5. A title is added to the tab:
  ```html
  <title> This is a title </title>
  ```
  5. The visual website content will be contained within the `body`. Right now it contains only a header saying Hello, World!:
  ```html
  <body>
     <!-- Actual page content (displayed in browser) -->
     <h1>Hello world!</h1>
  </body>
  ```
</details>

<br>

→ To create the basic skeleton use a snippet: simply type `!` in an empty `.html` file and hit enter.

The set of all opening and closing tags in a HTML document form a hierarchy (just like a tree). For example in the  HTML markup above, the `<html>` tag is the parent of the `<head>` and `<body>` tags. The `<title>` tag is a child of the `<head>` tag and a grandchild of the `<html>` tag.


<br>

#### Elements & Tags
![test](https://sts.doit.wisc.edu/manuals/html/images/basics-structure-1.png)
→ the whole thing is called an **element** (opening tag + content + closing tag)\
→ elements tell the browser how to display the content (default styling - can be overwritten with CSS)

There are also **self-closing tags** (do not need a closing tag), the most common ones are `img` and `input`
```html
<!-- Examples of self-closing tags -->

<img src="https://source.unsplash.com/random" alt="random image from unsplash">

<input type="email">

<!-- The closing slash is optional -->
<input type="email" />
```

<br>

#### Attributes and Values
![test](https://sts.doit.wisc.edu/manuals/html/images/basics-structure-2.png)

As you can see above in the code example, tags can take certain attributes and values inside the opening tag.

<br>

#### Nesting Elements
Elements can be placed inside other elements, which is called nesting.

→ make sure to always indent properly (opening and closing tag on same level), otherwise when the page gets larger, nesting can become complicated and errors are more likely to occur (missing closing tags, wrong nesting and so on)
````html
<!-- WRONG ❌ hard to read and prone for errors -->
<ul>
  <li>Apple</li>
<li>Orange</li>
    <li>Banana</li><li>Strawberry
    </li>
  </ul>

<!-- CORRECT ✅ -->
<ul>
  <li>Apple</li>
  <li>Orange</li>
  <li>Banana</li>
  <li>Strawberry</li>
</ul>

````
<br>

#### Block vs. Inline Elements
![Block vs. Inline Elements](https://www.freecodecamp.org/news/content/images/size/w2400/2021/01/Screen-Shot-2021-01-11-at-1.17.22-PM.png)

Most elements are (by default) `block` like **headers**, **paragraphs**, **divs**, **lists** → there is a line break after each element.
Some elements like **links**, **images** and **spans** are `inline` → they do not start on a new line and only occupy the space they need.

---

## Overview

- [HTML Introduction](https://www.w3schools.com/html/html_intro.asp)
- [HTML Elements](https://www.w3schools.com/html/html_elements.asp)
- [HTML Attributes](https://www.w3schools.com/html/html_attributes.asp)
- [HTML Headings](https://www.w3schools.com/html/html_headings.asp)
- [HTML Paragraphs](https://www.w3schools.com/html/html_paragraphs.asp)
- [HTML Text Formatting](https://www.w3schools.com/html/html_formatting.asp)
- [HTML Links](https://www.w3schools.com/html/html_links.asp)
- [HTML Images](https://www.w3schools.com/html/html_images.asp)
- [HTML Tables](https://www.w3schools.com/html/html_tables.asp)
- [HTML Lists](https://www.w3schools.com/html/html_lists.asp)
- [HTML IFrames](https://www.w3schools.com/html/html_iframe.asp)
- [HTML Forms](https://www.w3schools.com/html/html_forms.asp)
- [HTML Form Elements](https://www.w3schools.com/html/html_form_elements.asp)
- [HTML Input Types](https://www.w3schools.com/html/html_form_input_types.asp)
- [HTML Video](https://www.w3schools.com/html/html5_video.asp)
- [HTML Audio](https://www.w3schools.com/html/html5_audio.asp)
- [HTML YouTube](https://www.w3schools.com/html/html_youtube.asp)

| Tag          | Purpose                                                             | Playground |
| ------------ | ------------------------------------------------------------------- | ----------- |
| `<html> </html>` | Marks the beginning and end of the code (the browser will not read any code outside of this tag) |
| `<head> </head>` | Contains the title of the document & other info that isn't displayed | [Try it](https://www.w3schools.com/html/tryit.asp?filename=tryhtml_head_title) |
| `<title> </title>` | (Inside the `head`) Specifies the name of the document in the browser title bar; when bookmarking pages, this is what is bookmarked |
| `<body> </body>` | Contains the visible parts of the webpage |
| `<h1> </h1>`<br />...<br />`<h6> </h6>` | Creates text headlines. H1=largest, H6=smallest | [Try it](https://www.w3schools.com/html/tryit.asp?filename=tryhtml_headings) |
| `<strong> </strong>`<br />`<b> </b>` | Emphasizes a word (usually processed in **bold**) | [Try it](https://www.w3schools.com/html/tryit.asp?filename=tryhtml_formatting_strong) |
| `<em> </em>`<br />`<i> </i>` | Emphasizes a word (usually processed in _italics_) | [Try it](https://www.w3schools.com/html/tryit.asp?filename=tryhtml_formatting_em) |
| `<a href="path/url">clickable text</a>` | Creates a link to another page or website (absolute vs. relative referencing) | [Try it](https://www.w3schools.com/html/tryit.asp?filename=tryhtml_basic_link) |
| `<p>...</p>` | Creates a new paragraph | [Try it](https://www.w3schools.com/html/tryit.asp?filename=tryhtml_basic_paragraphs) |
| `<br />` | Interrupts the flow of text to a new line | [Try it](https://www.w3schools.com/html/tryit.asp?filename=tryhtml_paragraphs) |
| `<hr />` | Thematic Break (Horizontal rule/line) |
| `<div> </div>` | Used to format block content with CSS | [Try it](https://www.w3schools.com/html/tryit.asp?filename=tryhtml_block_div) |
| `<span> <span>` | Content Division element (allows grouping together of elements, handy for styling) | [Try it](https://www.w3schools.com/html/tryit.asp?filename=tryhtml_inline_span)
| `<ul> </ul>` | Creates an unordered list | [Try it](https://www.w3schools.com/html/tryit.asp?filename=tryhtml_lists_unordered) |
| `<ol start=xx> </ol>` | Creates an ordered list (start=xx, where xx is a counting number) | [Try it](https://www.w3schools.com/html/tryit.asp?filename=tryhtml_lists_ordered) |
| `<li> </li>` | Specifies each list item of either the unordered or ordered list | [Try it](https://www.w3schools.com/tags/tryit.asp?filename=tryhtml_list_test) |
| `<img src="path/url" />` | Specifies an image located at the URL | [Try it](https://www.w3schools.com/html/tryit.asp?filename=tryhtml_images_w3schools) |
| `<table> </table>` | Creates a table | [Try it](https://www.w3schools.com/html/tryit.asp?filename=tryhtml_table) |
| `<th> </th>` | Creates a table header |
| `<tr> </tr>` | Creates a row of a table |
| `<td> </td>` | Creates a column within a row of a table |
| `<form> </form>` | Creates a form |
| `<input type="..."/>` | Takes Input from the user (different types of input elements, such as text fields, checkboxes, radio buttons, submit buttons, ...) |
| `<label> </label>` | Defines a label for form elements |
| `<iframe> </iframe>` | Used to embed a webpage within another webpage. Its useful for embedding youtube videos on a web page | [Try it](https://www.w3schools.com/html/tryit.asp?filename=tryhtml_youtubeiframe) |
| `<!-- ... -->` | Comment - anything in-between these tags is ignored |
| **Semantic Elements** | *Semantic elements give meaning to the code, important for accessibility* |
| `<header>` `</header>` | ´content that should be considered introductory to a page or section |
| `<nav>` `</nav>` | Navigation menu with links |
| `<main>` `</main>` | The main content of the webpage, only one per page |
| `<section>` `</section>` | For grouping together nearby content of a similar them |
| `<footer>` `</footer>` | Base of a page or section - might include contact information/some site navigation |


## Exercise
→ we will build a simple journal using HTML (+ CSS which we will learn about tomorrow)

Clone this repository with `GitHub Desktop`: https://github.com/ReDI-School/ber-intro-to-cs-2021-html-journal

→ Instructions are in the `README.md` of the repository.

---

## Extra resources

- [HTML Class Practice](https://github.com/ReDI-School/ber-intro-to-cs-2021-html-journal)
- [HTML cheatsheet](https://web.stanford.edu/group/csp/cs21/htmlcheatsheet.pdf), by Stanford University
- [Semantic HTML](https://www.codecademy.com/learn/learn-html/modules/learn-semantic-html), semantic elements are essential for **accessibility**

<br>

#### Glossary

| Term         | Meaning                                                              |
| ------------ | -------------------------------------------------------------------- |
| HTML   | Hypertext Markup Language is a markup language used to specify what we want on Web Pages e.g. Tables, lists, links                 |
| CSS |  Cascading Style Sheets is a style sheet language for styling web pages e.g. for the colors or format of text
| Static web page | A static web page is a web page whose content cannot be changed when displayed in a browser |
| Dynamic web page | A dynamic web page is a web page whose content can be changed based on various conditions for example based on the user's location or user's browser type |
| Browser compatibility | This is the phenomenon where a certain web page or website works differently across different browsers. For example, you might ask "Is this HTML element compatible with Internet Explorer 11?" if you want to know if a HTML element will work as expected with Internet Explorer 11 |
| W3Schools | This is a website which provides documentation for HTML and CSS |
| Hypertext | Hypertext describes texts on the web that forms links. A web page is a hypertext document which contains links allowing us to go from one page to the next |
| Cascading | Cascading, in the context of CSS, is the process of combining/merging several style sheets before they are applied to a HTML element |
| Markup language | A markup language defines a set of rules for describing documents in a format that is both human-readable and machine-readable |
| Programming language | A programming language provides a set of commands and syntax that can be used to write computer programs which are understood by the computer |