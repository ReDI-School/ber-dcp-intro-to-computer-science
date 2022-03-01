---
title: 'References & Cheat Sheets'
weight: 1
---

This section contains cheat sheets and glossaries on some of the topics we have covered for quick reference.

# Table of Contents

1. [Command Line](#command-line)
2. [git](#git)
3. [HTML](#html)

# Command Line

## Useful commands

| command                             | what it does                                                                                                                                                                                                                           |
| ----------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `man` (mac/linux), `help` (windows) | show information about what a command does and how to use it                                                                                                                                                                           |
| `pwd`                               | print working directory (print the path to where I currently am in the file system)                                                                                                                                                    |
| `cd`                                | change directory (this moves you, the viewer of the terminal, to a new location in the file system). You may use an absolute file path or a relative path where `.` is the current working directory and `..` is the parent directory. |
| `ls`                                | list the contents of the directory                                                                                                                                                                                                     |
| `mkdir`                             | make a directory                                                                                                                                                                                                                       |
| `touch`                             | create a new file                                                                                                                                                                                                                      |
| `rm`                                | delete a file (note: to delete a directory, add the option `-r` or `-d`)                                                                                                                                                               |
| `cp`                                | copy a file (note: to copy a directory you probably need to add an option (like `-r`))                                                                                                                                                 |
| `mv`                                | move a file or directory to a new location (note: this can also be useful for changing the name of a file/directory)                                                                                                                   |
| `echo`                              | print some text; often used in conjunction with other commands                                                                                                                                                                         |
| `cat`                               | print the contents of the file                                                                                                                                                                                                         |
| `>`                                 | this is an operator: `X > Y` will redirect (send) the outputs of command `X` to `Y`; if `Y` exists, it this will _overwrite_ the existing file.                                                                                        |
| `>>`                                | this is an operator similar to the above: `X >> Y` will send the outputs of command `X` to `Y`; if `Y` exists, it this will _append_ to the existing file.                                                                             |

# git

## Glossary

| Term         | Meaning                                                                   |
| ------------ | ------------------------------------------------------------------------- |
| repository   | (also known as repo) the place where code is stored.                      |
| branch       | a pointer to a commit                                                     |
| remote       | a repository that is hosted by a web service                              |
| origin       | the remote repository associated with a project                           |
| head         | the last commit in the checked-out branch                                 |
| staging area | the intermediate area where a change is added before it is committed      |
| pull request | (also known as a PR) lets you get feedback on your code changes in GitHub |

## Commands

Note: you can add the `--help` flag behind any of these commands to find out more information about them including the arguments/options that can be passed in.

| command                   | what it does                                                                                                             |
| ------------------------- | ------------------------------------------------------------------------------------------------------------------------ |
| `git commit`              | create a snapshot of changes made to a repository since last commit                                                      |
| `git commit -m "MESSAGE"` | create a commit ^ and add a useful message                                                                               |
| `git status`              | get the current state of the git repository                                                                              |
| `git log`                 | get the commit history of the current repository & branch                                                                |
| `git pull`                | bring the latest changes from the remote repository into your local repo                                                 |
| `git push`                | send the latest changes from the local repository to the remote repo                                                     |
| `git checkout BRANCHNAME` | switch to the `BRANCHNAME` (fill this in) branch, i.e. update the repository's contents to match the tip of `BRANCHNAME` |
| `git remote -v`           | list the remote(s) for the given local repository                                                                        |

# HTML

## Important HTML Tags

| Tag                                | Purpose                                                                                                         | Playground                                                                            |
| ---------------------------------- | --------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| `<html> </html>`                   | Creates an HTML document                                                                                        |
| `<head> </head>`                   | Contains the title of the document & other info that isn't displayed                                            | [Try it](https://www.w3schools.com/html/tryit.asp?filename=tryhtml_head_title)        |
| `<body> </body>`                   | Contains the visible parts of the document                                                                      |
| `<title> </title>`                 | Specifies the name of the document in the browser title bar; when bookmarking pages, this is what is bookmarked |
| `<h1> </h1> to <h6> </h6>`         | Creates text headlines. H1=largest, H6=smallest                                                                 | [Try it](https://www.w3schools.com/html/tryit.asp?filename=tryhtml_headings)          |
| `<strong> </strong>` or `<b> </b>` | Emphasizes a word (usually processed in bold)                                                                   | [Try it](https://www.w3schools.com/html/tryit.asp?filename=tryhtml_formatting_strong) |
| `<em> </em>` or `<i> </i>`         | Emphasizes a word (usually processed in italics)                                                                | [Try it](https://www.w3schools.com/html/tryit.asp?filename=tryhtml_formatting_em)     |
| `<a href="URL">clickable text</a>` | Creates a link to another web page or website                                                                   | [Try it](https://www.w3schools.com/html/tryit.asp?filename=tryhtml_basic_link)        |
| `<p> </p>`                         | Creates a new paragraph                                                                                         | [Try it](https://www.w3schools.com/html/tryit.asp?filename=tryhtml_basic_paragraphs)  |
| `<br />`                           | Interrupts the flow of text to a new line                                                                       | [Try it](https://www.w3schools.com/html/tryit.asp?filename=tryhtml_paragraphs)        |
| `<div> </div>`                     | Used to format block content with CSS                                                                           | [Try it](https://www.w3schools.com/html/tryit.asp?filename=tryhtml_block_div)         |
| `<span> <span>`                    | Used to format inline content with CSS                                                                          | [Try it](https://www.w3schools.com/html/tryit.asp?filename=tryhtml_inline_span)       |
| `<ul> </ul>`                       | Creates an unordered list                                                                                       | [Try it](https://www.w3schools.com/html/tryit.asp?filename=tryhtml_lists_unordered)   |
| `<ol start=xx> </ol>`              | Creates an ordered list (start=xx, where xx is a counting number)                                               | [Try it](https://www.w3schools.com/html/tryit.asp?filename=tryhtml_lists_ordered)     |
| `<li> </li>`                       | Specifies each list item of either the unordered or ordered list                                                | [Try it](https://www.w3schools.com/tags/tryit.asp?filename=tryhtml_list_test)         |
| `<img src="URL" />`                | Specifies an image located at the URL                                                                           | [Try it](https://www.w3schools.com/html/tryit.asp?filename=tryhtml_images_w3schools)  |
| `<table> </table>`                 | Creates a table                                                                                                 | [Try it](https://www.w3schools.com/html/tryit.asp?filename=tryhtml_table)             |
| `<th> </th>`                       | Creates a table header                                                                                          |
| `<tr> </tr>`                       | Creates a row of a table                                                                                        |
| `<td> </td>`                       | Creates a column within a row of a table                                                                        |
| `<iframe> </iframe>`               | Used to embed a webpage within another webpage. Its useful for embedding youtube videos on a web page           | [Try it](https://www.w3schools.com/html/tryit.asp?filename=tryhtml_youtubeiframe)     |
