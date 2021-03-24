+++
title = "16/March - Review Git and Command Line; Intro to the Internet"
description = "Goals"
# weight = 10
+++

![Octocat](https://github.githubassets.com/images/modules/open_graph/github-octocat.png)

We will spend the first part of class going over how the internet works conceptually and then spend the rest of the session doing practical exercises using Git, GitHub, and the command line.

## Prerequisites

### 1. Watch these Videos

These videos from Khan Academy's _Internet 101_ series will give you a high-level overview of how the internet works. Please try to take notes on the questions below each video; we will go over these in class as well, but they cover the main points from the videos. Write down any other questions you have or anything you don't understand as well! :)

- [IP addresses and DNS](https://youtu.be/MwxMsaFFycg) - 6:45

  - What is the internet?
  - What is an ISP?
  - What is a protocol?
  - What is the Internet Protocol (IP) for? How does it work?
  - What is the difference between IPv4 and IPv6?
  - What is the Domain Name System (DNS) and what does a DNS server do? How and when does a computer use this?

* [Packets, Routers, and Reliability](https://youtu.be/aD_yi5VjF78) - 6:25

  - What is a packet?
  - What does a router do?
  - What is fault tolerance?
  - What is TCP? What does it ensure?

- [HTTP and HTML](https://youtu.be/1K64fWX5z4U) - 7:07

  - What is a web browser?
  - What does HTTP stand for? How does it work? What is it used for?
  - What is HTML?
  - What is a GET request?
  - What is a POST request?
  - What is a cookie?
  - What are SSL and TLS? Why are these important? How can you tell when these are in use?
  - What is the difference between HTTPS and HTTP?

* _(Optional)_ [Wires, cables, and WiFi](https://youtu.be/iV-YqG70wbQ): This video is for those who want more details on how information is broken up and transported through the wires that make up the internet, the differences between fiber optics/radio/copper cables, and how WiFI is different than wired internet. It's very interesting but not required :)

### 2. Review exercises from Thursday (11/March)

Review the content from last class. Make sure that have completed the prerequisites from last class, including that your email is verified on GitHub. If you get stuck or feel confused about anything, no worries! Please write down any questions you have so that we can go over these in class.

{{< button "../git_and_github/" "Review Previous Session: 11/March" >}}

---

## Class Curriculum

| Section content                          | Expected time (mins) | Pre - Requirements |
| ---------------------------------------- | -------------------- | ------------------ |
| Lesson Agenda and Goals                  | 5 minutes            | ❌                 |
| Go over video questions in small groups  | 10-15 minutes        | videos             |
| Kahoot on preparatory material           | 10-15 minutes        | videos             |
| Review tricky questions as a whole class | 10-15 minutes        | videos             |
| Class break                              | 10 minutes           | ❌                 |
| Git Activity (in smaller groups)         | 45-60 minutes        | review last class  |

## Lesson Goals

- Have a high-level understanding of how the internet works
- Feel more comfortable with Git, GitHub, and the command line

## Git and Command Line Review

### 0. Command Line cheat sheet

Go through the following commands and operators to remind yourself what each of them does, and when you would use them.

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

### 1. Fork and clone repository

First, navigate to the directory where you want to clone the repository. (If you don't already have a designated folder for class materials, create a directory for this and navigate into it.) Cloning a repository means creating a local copy of another repository, usually one that is stored on a remote server like GitHub.

Fork [this repository](https://github.com/ReDI-School/intro-to-cs-git-review). In the top right corner, click `Fork`. You may be prompted with a question like "Where should we fork this repository to?" If so, click your GitHub username; this will create a copy of the repository to your account.

You should then be automatically taken to the main page of this repository. On the upper right side, click `Code` (in green) and copy the `HTTPS` link. Then in your terminal run `git clone <link-you-copied>`. For example, this should look something like the following (with `github-username` replaced with your own github username):

```sh
git clone https://github.com/github-username/intro-to-cs-git-review.git
```

Check that this directory now exists. _(Hint: list the contents of the directory you are in, and make sure you see the cloned folder.)_

Move into that directory:

```sh
cd intro-to-cs-git-review
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

If so, great! You have successfully forked and cloned this repository. If not, check in with someone in your group or one of the teachers to help before moving on to the next steps.

### 2. Checkout a new branch

One of the great things about Git is being able to work on the same repository as others at the same time. A typical way of doing this when working on a project is by creating and checking out a new branch (via `git checkout -b <branch-name>`), making changes and committing your work, and pushing this work to your separate branch. Once you are ready to publish your changes to the `main` branch, you can create a pull request (PR) to have others review your changes and merge them to the `main` branch.

Even though you are working on your own repository alone (since you forked, this is your own repository), let's practice creating a new branch so we can make some changes there and eventually merge this back to the `main` branch. Let's call this branch `<github-username>/test-branch` (leave out the <>, for example, for me, I would call the branch `eelanagaraj/test-branch`):

```sh
git checkout -b <github-username>/test-branch
```

Check the status of the repository again before moving on to the next step, and make sure that you are on the correct branch. _(Hint: run `git status` which displays the branch you are on, and make sure this is what you expect.)_

### 3. Making and committing some changes

This activity should remind you a bit of the directory "maze" exploration activity that we did with Ergün last week.

Let's go ahead and explore the contents of this repository. For these tasks, feel free to look at your notes, the cheat sheet above, or ask each other for help if you're not sure how to complete a task :)

- Print your current directory, to double check that you are in the right place :) The end of the path should be the name of the cloned repository.
- Check what files and directories are present in this repository.
- Print the contents of the `README.md` file. Now, compare the output in your terminal to the `README` displayed on the [original remote repository](https://github.com/ReDI-School/intro-to-cs-git-review). (Note: the `README.md` file will be displayed by default on your remote repository page!)
- Move into the `some-files` directory. What files are in this repository?
- Check the contents of each of the files in this folder (`some-files`). Delete the file that is empty (has no contents).
- Check the status of the repository via `git status`. If you do not see something that says you deleted a file, please ask someone in your group or a teacher for help before moving on.
- Stage the changes by running `git add .` and check the status again to make sure the changes have shown up in your staging area.
- Create a commit now to "save" your changes--in this case, the deleted file. Try to leave a helpful commit message like below, replacing <name-of-file> with the file you deleted:

  ```sh
  git commit -m "Deleted file <name-of-file>"
  ```

- Check that the commit was successful by checking the status of the repository (`git status`) and checking the log (`git log`). You should see the commit message that you added at the top of the log, in addition to some previous commits from before you cloned the repository.
- One of the non-empty files has the contents: `Hello, I'm a file! What's your name?`. Modify this file that answers the question with your name (or one of your choosing)! So far, we have used: `echo "text" > file` to add content to a file, but this will _overwrite_ the file with the new contents. Instead, let's _append_ to the file using the following command (replacing `<file.txt>` with the file you want to write to):

  ```sh
  echo "My name is ___" >> <file.txt>
  ```

  You can also open this file in a text editor (like Sublime, Microsoft Word, Notepad, etc.) and modify it there and save your changes!

- Check the git status again. Can you tell that a file has been modified? If not, ask someone in your group or a teacher for help before moving on. If so, in the same way as above, add these changes to your staging area and create another commit with a descriptive message of your choice. Check that this commit appears in the log as well.
- Let's go ahead and push these commits so far to the remote repository. Run the following, replacing `<current-branch>` with the branch you are working on (if you forget what it is called, you can run `git status` or `git branch` and copy the branch name from there!):

```sh
git push origin <current-branch>
```

- Navigate out of the `some-files` directory, so you are back in the root of the repository. Display the contents of the files there. One of the files seems to be out of place; move this file to the `some-files` directory. Check that this file is now in the proper place by listing the contents of the directory `some-files`.
- Check the status of the repository again (`git status`). Notice that it thinks the file was _deleted_ from the repository, but that there is now a new "untracked file" of the same name in `some-files`! Let's now add all of the files to the staging area and check the status of the repository again. What does it look like now? Let's commit these staged changes and check the log again to make sure they appeared.
- In the root of the repository, go ahead and delete the `delete-me` directory. _(Hint: what option do you need to include to remove a directory?)_. Add, commit, and push these changes.

### 4. Create a pull request (PR) on GitHub

As we did at the end of last class, let's create a pull request to merge this `test-branch` to `main`.

Go to GitHub and view your branch: on the left side, there should be a button with `main` and a down arrow -- click this and select your branch. At the top, if there is an option to "Pull request", click that, otherwise click on the "Pull request" tab and then "New pull request".

Since this is a forked branch, we are given the option of submitting a pull request against the original repository that we forked from (listed under `base repository`). This is often how you can contribute to open source projects -- by forking the repository, making your changes, and then submitting a PR against the original repo for the maintainers of the project to accept or reject.

For now, let's just PR within the fork, so change the `base repository` to be the forked repo. (The `base repository` and `head repository` should match, but the `base` branch should be `main`).

Assign someone in your group and one of the teachers to review your pull request.

Take a moment to review any PRs you were tagged on.

### 5. [Optional] Advanced Git practice

This is a section for if you are done with the earlier sections and want to try some new git commands out. This is completely optional and more complicated than the previous sections! Remember, you can play around with this repo as much as you want; use it to create new scenarios and test out Git commands to understand what they do. This is a toy repository, and you can always clone a fresh copy (first part of the activity) to restart from scratch, so there is low risk here :)

First, we can use the `git reset` command to undo changes that we have made.

- Check that you are still on `<your-username>/test-branch`. Then, checkout a new branch `<your-username>/undo-changes`, replacing `<your-username>` with your GitHub username.
- Look at the git log, which should include all of the commits we made in the previous section. Let's say that we now want to "undo" the changes that we made in the last commit, deleting the `delete-me` folder. We realized after pushing this change that we actually want to keep this folder. Find and copy the commit hash (looks like a long string of letters and numbers, something like: `6ff15394c57d1d105482efd9359d7a061995fedc`) of the commit right before this in the commit log.
- Let's now "reset" the state of the repository to this commit, right before we committed the change to delete the directory, replacing `<commit-hash>` with the hash from your commit log:

```sh
git reset --hard <commit-hash>
```

- Check the git status of your directory and the git log now. What is the most recent commit in the commit log now?
- Check the contents of the repository. Is the `delete-me` folder present or not? Check the contents of the `delete-me` folder.
- Feel free to try resetting the repository to different states (different commit hashes) and exploring a bit.
- Once you are done, you can checkout (get back onto) the `main` or `test-branch` from the earlier section and deleting the branch you just created:

```sh
git checkout main
git branch -D <your-username>/undo-changes
```

If you still have time and want to continue playing around with Git, try to merge two branches that have made changes on the same file. You can see how Git tries to do this automatically and you may have to "resolve merge conflicts" if Git is not able to automatically merge the changes. To create a situation like this:

- Create two branches from the same "base" and checkout one of them. Remember, replace `<new-branch-1>` nd `<new-branch-2>` with branch names of your choice. (Bonus: look up how to do this via the `git branch` command instead of `git checkout -b`):
  ```sh
  git checkout -b <new-branch-1> <base-branch>
  git checkout -b <new-branch-2> <base-branch>
  ```
- Modify and commit to `a.txt` on <new-branch-1>
- Make a different change to the same file, `a.txt` on <new-branch-2>
- Try to merge one branch into the other by checkout out <new-branch-1> and then running `git merge <new-branch-2>`. Did you get any merge conflicts? See what the contents of file `a.txt` are. Try to fix any merge conflicts and commit this merge. Check the log to see what the merge commit looks like.

## Extra resources

{{< tip >}}

- [Interactive Git Cheatsheet](https://ndpsoftware.com/git-cheatsheet.html#loc=local_repo;) - displays and explains different git commands
- [Complete documentation of all git commands](https://git-scm.com/doc) - this can feel a bit dense, but can be useful for deepening your understanding of how Git works under the hood.

{{< /tip >}}

## Next class preparation

{{< button "../ide_and_review/" "Using an IDE (Integrated Development Environment)" "mb-1 grid-4" >}}
