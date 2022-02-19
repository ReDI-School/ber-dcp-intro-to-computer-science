+++
title = "04/October - Basic knowledge of HTML"
description = "Goals"
weight = 10
+++

![html-intro-image](https://cdn.lynda.com/course/170427/170427-637363828865101045-16x9.jpg)


## Preparations

### 1. Review exercises from Version Control with Git and GitHub (21/September)

Reivew the content from the `Git and GitHub` lecture. We'll use github to store the HTML files we create in this lecture.

{{< button "../../git/git_and_github/" "Review Version Control with Git and GitHub: 21/September" >}}

### 2. Review exercises from Using an IDE (Integrated development environment) (30/September)

Review the content from last lecture on `Using an IDE with VsCode`. We'll use VsCode to work on creating HTML files in this lecture.

{{< button "../../git/ide/" "Review Using an IDE with VsCode: 30/September" >}}

### 3. Read through the following HTML tutorials from the W3Schools

- [HTML Introduction](https://www.w3schools.com/html/html_intro.asp)
- [HTML Elements](https://www.w3schools.com/html/html_elements.asp)
- [HTML Attributes](https://www.w3schools.com/html/html_attributes.asp)
- [HTML Headings](https://www.w3schools.com/html/html_headings.asp)
- [HTML Paragraphs](https://www.w3schools.com/html/html_paragraphs.asp)
- [HTML Styles](https://www.w3schools.com/html/html_styles.asp)
- [HTML Text Formatting](https://www.w3schools.com/html/html_formatting.asp)
- [HTML Colors](https://www.w3schools.com/html/html_colors.asp)
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

### 4. Watch these Videos

The following video from Khan Academy's _Internet 101_ series will give you a high-level overview of how HTTP and HTML works.

- [HTTP and HTML](https://youtu.be/1K64fWX5z4U) - 7:07

  - What is a web browser?
  - What does HTTP stand for? How does it work? What is it used for?
  - What is HTML?
  - What is a GET request?
  - What is a POST request?
  - What is a cookie?
  - What are SSL and TLS? Why are these important? How can you tell when these are in use?
  - What is the difference between HTTPS and HTTP?
  
### 5. HTML class practice repository on Github

Visit the following github page and follow the instructions to work on the activity for this class 
- https://github.com/ReDI-School/ber-intro-to-cs-2021-html-journal
---

## Class Curriculum

| Section content                          | Expected time (mins) | Pre - Requirements |
| ---------------------------------------- | -------------------- | ------------------ |
| Lesson Agenda and Goals                        | 5 minutes            | ❌                    |
| Go over preparation questions in small groups  | 10-15 minutes        | Preparations section |
| Kahoot on preparatory material                 | 10-15 minutes        | Preparations section |
| Review HTML Activity task as a whole class     | 10-15 minutes        | Preparations section |
| Class break                                    | 10 minutes           | ❌                    |
| HTML Activity (in smaller groups) * [link](https://github.com/ReDI-School/ber-intro-to-cs-2021-html-journal)              | 45-60 minutes        | VsCode and Git installed  |

## Lesson Goal

Understand what HTML is, why we use it and create a HTML-based journal with links and graphics

## HTML - What is it?

HTML, HyperText Markup Language, is a markup language for documents designed to be displayed in a Web Browser.  

Web brosers fetch HTML documents from Web servers over the internet or on your laptop

![html-intro-image](https://puzzleweb.ru/en/images/web_server.png)

## Structure of HTML Documents

HTML elements are the building blocks of HTML pages and specify how text, images, video and interactive forms can be
embedded on a web page which is being displayed in the browser.

HTML elements are specified using tags that are within angle brackets `<>` for example the `<html>` tag. Tags usually come 
in pairs of start and end tags. For example `<html>` and `</html>`. Usually when speaking about HTML tags, we simply ignore
whether it is a start or end tag and simply use the tag name. 

The set of all start and end tags in a HTML document form a hierarchy (just like a family tree). For example in the 
HTML markup below, the `<html>` tag is the parent of the `<head>` and `<body>` tags. The `<title>` tag is a child of
the `<head>` tag and a grandchild of the `<html>` tag. 

```html
<!DOCTYPE html>
<html>
  <head>
    <title>This is a title</title>
  </head>
  <body>
    <div>
        <p>Hello world!</p>
    </div>
  </body>
</html>
```

## Important HTML Tags

| Tag          | Purpose                                                             | Playground |
| ------------ | ------------------------------------------------------------------- | ----------- |
| `<html> </html>` | Creates an HTML document |
| `<head> </head>` | Contains the title of the document & other info that isn't displayed | [Try it](https://www.w3schools.com/html/tryit.asp?filename=tryhtml_head_title) |
| `<body> </body>` | Contains the visible parts of the document |
| `<title> </title>` | Specifies the name of the document in the browser title bar; when bookmarking pages, this is what is bookmarked |
| `<h1> </h1> to <h6> </h6>` | Creates text headlines. H1=largest, H6=smallest | [Try it](https://www.w3schools.com/html/tryit.asp?filename=tryhtml_headings) |
| `<strong> </strong>` or `<b> </b>` | Emphasizes a word (usually processed in bold) | [Try it](https://www.w3schools.com/html/tryit.asp?filename=tryhtml_formatting_strong) |
| `<em> </em>` or `<i> </i>` | Emphasizes a word (usually processed in italics) | [Try it](https://www.w3schools.com/html/tryit.asp?filename=tryhtml_formatting_em) |
| `<a href="URL">clickable text</a>` | Creates a link to another web page or website | [Try it](https://www.w3schools.com/html/tryit.asp?filename=tryhtml_basic_link) |
| `<p> </p>` | Creates a new paragraph | [Try it](https://www.w3schools.com/html/tryit.asp?filename=tryhtml_basic_paragraphs) |
| `<br />` | Interrupts the flow of text to a new line | [Try it](https://www.w3schools.com/html/tryit.asp?filename=tryhtml_paragraphs) |
| `<div> </div>` | Used to format block content with CSS | [Try it](https://www.w3schools.com/html/tryit.asp?filename=tryhtml_block_div) |
| `<span> <span>` | Used to format inline content with CSS | [Try it](https://www.w3schools.com/html/tryit.asp?filename=tryhtml_inline_span)
| `<ul> </ul>` | Creates an unordered list | [Try it](https://www.w3schools.com/html/tryit.asp?filename=tryhtml_lists_unordered) |
| `<ol start=xx> </ol>` | Creates an ordered list (start=xx, where xx is a counting number) | [Try it](https://www.w3schools.com/html/tryit.asp?filename=tryhtml_lists_ordered) |
| `<li> </li>` | Specifies each list item of either the unordered or ordered list | [Try it](https://www.w3schools.com/tags/tryit.asp?filename=tryhtml_list_test) |
| `<img src="URL" />` | Specifies an image located at the URL | [Try it](https://www.w3schools.com/html/tryit.asp?filename=tryhtml_images_w3schools) |
| `<table> </table>` | Creates a table | [Try it](https://www.w3schools.com/html/tryit.asp?filename=tryhtml_table) |
| `<th> </th>` | Creates a table header |
| `<tr> </tr>` | Creates a row of a table |
| `<td> </td>` | Creates a column within a row of a table |
| `<iframe> </iframe>` | Used to embed a webpage within another webpage. Its useful for embedding youtube videos on a web page | [Try it](https://www.w3schools.com/html/tryit.asp?filename=tryhtml_youtubeiframe) |


## Glossary

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


## Extra resources

- [HTML Class Practice](https://github.com/ReDI-School/ber-intro-to-cs-2021-html-journal)
- [HTML cheatsheet](https://web.stanford.edu/group/csp/cs21/htmlcheatsheet.pdf), by Stanford University

## Next class preparation

{{< button "../basic_css/" "Basics knowledge of CSS" "mb-1 grid-4" >}}
