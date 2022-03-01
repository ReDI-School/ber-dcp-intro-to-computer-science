+++
title = "30/September - Using an IDE (Integrated development environment)"
description = "Goals"
# weight = 10
+++

![VSCode](https://media0.giphy.com/media/SS8CV2rQdlYNLtBCiF/giphy.gif)

## Prerequisites

### 1. Install VsCode

Visual Studio Code is a freeware source-code editor made by Microsoft for Windows, Linux and macOS. Features include support for debugging, syntax highlighting, intelligent code completion, snippets, code refactoring, and embedded Git. Wikipedia

During this course, while working with HTML and Pything we might end up working with an code editor to make easier interacting with files and folder. An editor can be considered the notebook of a programmer. This, with the terminal, will be considered your main tools to reach your goals :D

To install VSCode please download it by clicking on the Download button of the next link ->

[VSCode](https://code.visualstudio.com/)

You can start playing with it if you want, during the class we will see how to work with it.

### 2. Review exercises from Tuesday (21/September)

Review the content from last class. Make sure that have completed the prerequisites from last class, including that your email is verified on GitHub. If you get stuck or feel confused about anything, no worries! Please write down any questions you have so that we can go over these in class.

{{< button "../git_and_github/" "Review Previous Session: 21/September" >}}

### 3. Watch the Visual Studio Code basics

- [VS Basics](https://code.visualstudio.com/docs/introvideos/basics)

---
## Class Curriculum

| Section content                          | Expected time (mins) | Pre - Requirements |
| ---------------------------------------- | -------------------- | ------------------ |
| Learning Markdown | 20 minutes        |     ❌         |
| Creating our own Journal in Github                 | 60 minutes             | VSCode installed  |
| Break | 10 minutes | |
| Working through git commands with our Journal                 | 30 minutes             | VSCode installed  |

## Lesson Goals

- Know how to use an editor and move around
- What is a Markdown file

## Learning Markdown

Markdown is a way to write content for the web. It’s written in what people like to call “plaintext”, which is exactly the sort of text you’re used to writing and seeing. Plaintext is just the regular alphabet, with a few familiar symbols, like asterisks ( * ) and backticks ( ` ).

Unlike cumbersome word processing applications, text written in Markdown can be easily shared between computers, mobile phones, and people. It’s quickly becoming the writing standard for academics, scientists, writers, and many more. Websites like GitHub and reddit use Markdown to style their comments.

To get started with the tutorial let´s jump here:

[MARKDOWN TUTORIAL](https://www.markdowntutorial.com/)

## Creating your own journal!

### 0. Command Line cheat sheet

{{< tip >}}
Remember that you can look up what a command does by using the `man` (manual-pages) command on Mac and Linux, or `help` command on Windows cmd. For example: `man echo` would give you information on what the `echo` command does and how to use it.
{{< /tip >}}

| command | what it does                                                                                                                               |
| ------- | ------------------------------------------------------------------------------------------------------------------------------------------ |
| `echo`  | print some text                                                                                                                            |
| `pwd`   | print working directory (print the path to where I currently am in the file system)                                                        |
| `ls`    | list the contents of the directory                                                                                                         |
| `cd`    | change directory (this moves you, the viewer of the terminal, to a new location in the file system)                                        |
| `cat`   | print the contents of the file                                                                                                             |
| `cp`    | copy a file (note: to copy a directory you probably need to add an option (like `-r`) to copy a directory)                                 |
| `mv`    | move a file or directory to a new location (note: this can also be useful for changing the name of a file/directory)                       |
| `mkdir` | make a directory                                                                                                                           |
| `touch` | create a new file                                                                                                                          |
| `rm`    | delete a file (note: to delete a directory, add the option `-r` or `-d`)                                                                   |
| `>`     | the redirection operator (`X > Y` will send the outputs of command `X` to `Y`; if `Y` exists, it this will _overwrite_ the existing file.) |


### 0. Git cheat sheet

These are some of the most famous commands you need.

Where you see <...>, you will have to replace the whole thing with the expected input. For example, git add <directory> would become git add ./docs/

| command | what it does                                                                                                                               |
| ------- | ------------------------------------------------------------------------------------------------------------------------------------------ |
| `git clone <repo>`  | Clone repo located at <repo> onto local machine. Original repo can be located on the local filesystem or on a remote machine via HTTP or SSH.                                                                                                           |
| `git config user.name <name>`   | Define author name to be used for all commits in current repo. Devs commonly use --global flag to set config options for current user.                                                       |
| `git add <directory>`    | Stage all changes in <directory> for the next commit. Replace <directory> with a <file> to change a specific file.                                                        |
| `git commit -m "<message>"`    | Commit the staged snapshot, but instead of launching a text editor, use <message> as the commit message.                                     |
| `git status`   | List which files are staged unstaged, and untracked.                                                                                                             |
| `git log`    | Display the entire commit history using the default format. For customization see additional options.                                |


### 0. Markdown Cheat Sheet

| Element | Markdown Syntax
| ------- | ------------------------------------------------------------------------------------------------------------------------------------------ |
| Heading 1 | # H1
| Heading 2 | ## H2
| Heading 1 | ### H3
| Bold | \*\*bold text**
| Italic | \*italicized text*
| Blockquote | > blockquote
| Ordered List | 1. First item 2. Second item 3. Third item
| Unordered List | - First item - Second item - Third item
| Code | \`code`
| Link | \[title](https://www.example.com)
| Image | \![alt text]\(image.jpg)

[Additional Markdown commands](https://www.markdownguide.org/cheat-sheet/)


### 1. Fork and clone your new Journal

First, navigate to the directory where you want to clone the journal. (If you don't already have a designated folder for class materials, create a directory for this and navigate into it.) Cloning a repository means creating a local copy of another repository, usually one that is stored on a remote server like GitHub.

Fork [this repository](https://github.com/ReDI-School/autumn-2021-intro-to-programming-md-journal). In the top right corner, click `Fork`. You may be prompted with a question like "Where should we fork this repository to?" If so, click your GitHub username; this will create a copy of the repository to your account.

You should then be automatically taken to the main page of this repository. 

On the upper right side, click `Code` (in green) and copy the `SSH` link. Then in your terminal run `git clone <link-you-copied>`. For example, this should look something like the following:

```sh
git clone git@github.com:ReDI-School/autumn-2021-intro-to-programming-md-journal.git
```

Check that this directory now exists. _(Hint: list the contents of the directory you are in, and make sure you see the cloned folder.)_

Move into that directory (small hint -> write `cd autumn` and then press the key `TAB` and it will autocomplete):

```sh
cd autumn-2021-intro-to-programming-md-journal
```

Check the status of the git repository:

```sh
git status
```

You should see output something like:

```sh
On branch main
Your branch is up to date with 'origin/main'.

nothing to commit, working tree clean
```

If so, great! You have successfully forked and cloned this repository. If not, check in with someone in your group or raise your hand so one of the teachers to help before moving on to the next steps.

### 2. Checkout a new branch

One of the great things about Git is being able to work on the same repository as others at the same time. A typical way of doing this when working on a project is by creating and checking out a new branch (via `git checkout -b <branch-name>`), making changes and committing your work, and pushing this work to your separate branch. Once you are ready to publish your changes to the `main` branch, you can create a pull request (PR) to have others review your changes and merge them to the `main` branch.

Even though you are working on your own repository alone (since you forked, this is your own repository), let's practice creating a new branch so we can make some changes there and eventually merge this back to the `main` branch. Let's call this branch `<your-github-username>/test-branch` (leave out the <>, for example, for me, I would call the branch `marcshaw/journal1`):

```sh
git checkout -b <your-github-username>/test-branch
```

Check the status of the repository again before moving on to the next step, and make sure that you are on the correct branch. _(Hint: run `git status` which displays the branch you are on, and make sure this is what you expect.)_

### 3. Open with VSCode the folder you have just created

Open VScode! :D once you are there let's click on file in the top left corner and click on `Open...`. Look for the the folder in your system you have just created (probably should be around `/home`) and click it.

Your VSCode should show now on the left side the differents files and folders from the current scenario.

### 4. Complete the tasks in the README.md file from the repository you have just created.

In the [README.md file](https://github.com/ReDI-School/autumn-2021-intro-to-programming-md-journal/blob/main/README.md) from the repo you have just copied there is a section called `## TASKS`. Go slowly one by one and complete them by marking them with a `X`

### 5. Adding and committing some changes

Once completed! let's make the world know about our recipes.

- Check the status of the repository via `git status`. If you do not see something that says you deleted a file, please ask someone in your group or a teacher for help before moving on.
- Stage the changes by running `git add .` or `git add --all` and check the status again to make sure the changes have shown up in your staging area. They should be green
- Create a commit now to "save" your changes--in this case, the deleted file. Try to leave a helpful commit message like below, replacing <name-of-file> with the file you deleted:

  ```sh
  git commit -m "Created my first journal!"
  ```

- Check that the commit was successful by checking the status of the repository (`git status`) and checking the log (`git log`). You should see the commit message that you added at the top of the log, in addition to some previous commits from before you cloned the repository.

- Let's go ahead and push these commits so far to the remote repository. Run the following, replacing `<current-branch>` with the branch you are working on (if you forget what it is called, you can run `git status` or `git branch` and copy the branch name from there!):

```sh
git push origin <current-branch>
```

### 6. Create a pull request (PR) on GitHub

As we did at the end of last class, let's create a pull request to merge this `test-branch` to `main`.

Go to GitHub and view your branch: on the left side, there should be a button with `main` and a down arrow -- click this and select your branch. At the top, if there is an option to "Pull request", click that, otherwise click on the "Pull request" tab and then "New pull request".

Since this is a forked branch, we are given the option of submitting a pull request against the original repository that we forked from (listed under `base repository`). This is often how you can contribute to open source projects -- by forking the repository, making your changes, and then submitting a PR against the original repo for the maintainers of the project to accept or reject.

For now, let's just PR within the fork, so change the `base repository` to be the forked repo. (The `base repository` and `head repository` should match, but the `base` branch should be `main`).

Assign someone in your group to the PR 'it can be seen in the right section and approve and merge the changes into `main`.

## 7. (Optional) Let´s swap places

Now it is time for your partner to repeat what you have done. 

BUT! instead of forking the repository we will **clone directly your partner repositor**y so both of you can contribute towards a shared journal.

For that let´s do the following:
- Ask your partner for an URL pointing to his journal repository that both of you have created and existts in Github.
- Let´s **clone** the repository (make sure the Pull Request opened is merged and that the main branch has the content you just created)
- Add some new files, folders, images and after add, commit and push your changes. You can go back to section 3 and repeat the same instructions

## Extra resources

{{< tip >}}
- [Git online](https://learngitbranching.js.org/)
- [VSCode Crash course](https://www.youtube.com/watch?v=WPqXP_kLzpo)
- [VS Basics](https://code.visualstudio.com/docs/introvideos/basics)
{{< /tip >}}

## VSCODE CHEATSHEET
### Install an extension

[Installing an extension](https://code.visualstudio.com/docs/introvideos/extend)
### Creating a new folder

To create a folder we first need to click on the left sidebar the explorer icon. After that we click on the New Folder button and name it as we want.

https://www.youtube.com/watch?v=fEp5nWvujhI

### Creating a new file
To create a file we first need to click on the left sidebar the explorer icon. After that we click on the New File button and name it as we want. 

https://www.youtube.com/watch?v=2QBYlfSQA6s

### Copying a file
Right click the file and click on copy or select it a `Command/Control+c`.

To paste it, we go over the folder where we want to paste it and we press `Command/Control+c` 
### Searching for text

Press `Command/Control+f` to search for something in the current opened file. To search in the whole folder click in the magnifying glass.
