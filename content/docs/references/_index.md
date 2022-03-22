+++
title = "References & Cheat Sheets"
description = "Goals"
+++

This section contains cheat sheets and glossaries on some of the topics we have covered for quick reference.

## Table of Contents

- [Table of Contents](#table-of-contents)
- [Command Line](#command-line)
  - [Useful commands](#useful-commands)
- [git & GitHub Desktop](#git--github-desktop)
  - [Glossary](#glossary)
  - [Working with GitHub Desktop](#working-with-github-desktop)
    - [Starting a brand new project](#starting-a-brand-new-project)
    - [Joining or copying an existing project](#joining-or-copying-an-existing-project)
    - [Making changes](#making-changes)
  - [Commands (Command Line Git)](#commands-command-line-git)
- [HTML](#html)
  - [Important HTML Tags](#important-html-tags)

---

## Command Line

### Useful commands

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

## git & GitHub Desktop

### Glossary

| Term         | Meaning                                                                |
| ------------ | ---------------------------------------------------------------------- |
| repository   | (also known as repo) the place where code is stored.                   |
| commit       | a snapshot of changes made to a repository                             |
| branch       | a pointer to a commit; a way to create a separate version of the files |
| remote       | a repository that is hosted by a web service                           |
| origin       | the remote repository associated with a project                        |
| head         | the last commit in the current branch                                  |
| status       | the current state of the git repository                                |
| pull         | get the latest changes from the remote repository on your local repo   |
| push         | push the latest changes from the local repository to the remote repo   |
| pull request | (also known as a PR) lets you get feedback on your code changes        |
| staging area | the intermediate area where a change is added before it is commit      |

### Working with GitHub Desktop

Common ways of using GitHub Desktop based on scenarios that you may run into.

#### Starting a brand new project

_Scenario: you are just starting on your project, and want to create a repository to store your future work._

In this case, we want to create a new repository, which is basically just an empty directory plus some additional hidden files so that `git` knows that this is a repository and it should watch out for changes.

1. In GitHub Desktop, select `File > New Repository` or expand `Current Repository` and click `Add > Create New Repository`.
2. Fill in the fields in the popup, including the `Name`. Some notes:

   - `Name`: name of the new directory that will be created and contain your new project.
   - `Local Path`: points to a directory (folder) where the new repository will live. If you have a directory where you keep your work for this class (recommended), make sure to point `Local Path` to this directory.
   - `Initialize your repository with a README`: a README is just a file describing the repository's purpose and use.
   - `Git Ignore`: you can ignore this one for now. This lets `git` know if it should ignore changes from certain files.
   - `License`: you can ignore this one for now. The License describes how others can use and build on your project.

3. Click `Create Repository`.
4. If you want to make this repository available on GitHub (the remote), click `Publish Repository`. In the popup, you can select whether or not the repository should be private (only you + others specifically added to the reopsitory can see it) or not (everyone can see it), and then click on `Publish Repository`.

#### Joining or copying an existing project

_Scenario A: your project partner already created a repository and you want to create a local copy so you can collaborate on this._

_Scenario B: your computer crashed. Luckily, your project is stored on GitHub, and you want to make a new local copy of this._

In these situations, we want to `clone` an existing repository, which means create a local copy of the repository in your file system (i.e. you can edit these even when not connected to the internet).

1. In GitHub Desktop, clone an existing repository by either selecting `File > Clone Repository` or expand `Current Repository` and click `Add > Clone Repository`.
2. If the repository already exists under your own GitHub remote, you can find it under `GitHub.com`, otherwise, you may need to enter the repository URL after selecting the `URL` tab.

_Scenario C: you want to create a remote copy of starter code used for class activities and projects, which you can then copy locally._
_Scenario D: you want to contribute to an open source project that you find interesting._

In these cases, you additionally may need to `fork` the project, or create a copy of the repository that _you own_ in GitHub. After completing steps 1 & 2 above:

1. In GitHub desktop, create a new branch.
2. Click `Publish Branch`. A popup should appear asking something like, "Do you want to fork this repository?" Click `Fork This Repository`.
3. Another popup will appear like "How are you planning to use this fork?":

   - For most of our class activities (`Scenario C` above), select "For my own purposes"
   - For contributing to open source projects or projects owned by others (`Scenario D` above), select "To contribute to the parent project"

You can find more information in the [GitHub Desktop Docs here](https://docs.github.com/en/desktop/contributing-and-collaborating-using-github-desktop/adding-and-cloning-repositories/cloning-and-forking-repositories-from-github-desktop).

#### Making changes

_Scenario: you have a great idea for a new feature to add to your project._

1. Make sure that your `Current Branch` is `main` (or the repository default branch). Click on `Fetch Origin`, which updates your `main` branch so that you have all the latest changes that you and your project partners have merged.
2. Create a new branch, which will contain your new version of the project with the new feature. In GitHub Desktop, do this by clicking on `Current Branch > New Branch` or `Branch > New Branch`. Give your branch (version) a useful and descriptive name, ideally about the changes/feature you want to make in this version.
3. Change the files in your local repository. You can use a text editor or IDE (Integrated Development Environment) to do this.
4. Add the files to your staging area (changes that will be included in the next commit you make). In GitHub Desktop, this means making sure that the box is checked next to the file name on the left-hand side.
5. Create a commit, or a saved snapshot of the files. To do this in GitHub Desktop, add a `Summary` (and optional `Description`) of the changes you have made so far and then click the `Commit to <branch-name>` button. Generally, commit often while working on a new feature!
6. Push these changes to the remote repository; in other words, publish the changes made on this branch to GitHub. In GitHub Desktop, do this by clicking on `Publish branch`.
7. Repeat steps 3-6 as needed, until you are done making changes (i.e. your feature is done).
8. (_If you are working by yourself on this project, you can skip this step!_) Create a pull request (PR) on GitHub so that your other project collaborators can look over the changes and leave any feedback. To do this, go to the GitHub page for the repository and view your branch: on the left side, there should be a button with `main` and a down arrow -- click this and select your branch. At the top, if there is an option to "Pull request", click that, otherwise click on the "Pull request" tab and then "New pull request".
9. Merge the changes from your new branch to the `main` branch, which means combine your new changes with the `main` branch (including any new changes that have been added to `main` in the meantime). If you created a PR (step 8), you can merge the PR directly in GitHub. Otherwise, switch to the `main` branch in GitHub Desktop. Then, click on `Current Branch > Choose a branch to merge into main` or `Branch > Merge into current branch`and select your feature branch.
10. Delete your old feature branch if you don't need it anymore.

You can find more information on managing branches and commits in [this section of the GitHub Desktop Docs](https://docs.github.com/en/desktop/contributing-and-collaborating-using-github-desktop/making-changes-in-a-branch).

### Commands (Command Line Git)

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

## HTML

### Important HTML Tags

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
