+++
title = "21/September - Version Control with Git and GitHub"
description = "Goals"
# weight = 10
+++

![gif of computer](https://media.giphy.com/media/3oFzlWBadh6GNv3rdS/giphy.gif)

### 1. Install Git 💾

First! Check if you already have git installed, open your command line and run:

```shell
git --version
```

If you see something like the following output then you already have
git installed:

```shell
git version 2.x.x
```

Otherwise, here are instructions to install Git:

- [For Windows](https://github.com/git-guides/install-git#install-git-on-windows)
- [For MacOS](https://github.com/git-guides/install-git#install-git-on-mac)

### 2. Sign up to GitHub 🚀

Sign up here: https://github.com/join

Why?

- We will use it in the class to store our code
- It can be used to collaborate with others
- It can be used to showcase your work

### 3. Watch the first 8:07 minutes of this video 📽️

This [Git and GitHub Tutorial For Beginners](https://www.youtube.com/watch?v=3fUbBnN_H2c) by [Amigoscode](https://amigoscode.com/).

What you will learn:

- An overview of why Git and Github are so useful

You can watch the rest if you want, but for the purpose of the class, the first eight minutes
are sufficient.

### 4. Read this 📚

Read this [Introduction to Version Control and Git](http://tutorials.codebar.io/version-control/introduction/tutorial.html)
by [CodeBar](https://codebar.io/).

What you will learn:

- What is version control?
- Why do we use it?
- Overview of Git as a version control system
- Overview of GitHub as a place to store code
- Common terminology

---

## Class Curriculum

| Section content                             | Expected time (mins) | Pre - Requirements |
| ------------------------------------------- | -------------------- | ------------------ |
| Review Learnings from Preparatory Materials | 15 minutes           | video + article    |
| Lesson Goals                                | 5-10 minutes         | ❌                 |
| Make a local repository and first commits   | 10-15 minutes        | git                |
| Create a GitHub repository and push commits | 10-15 minutes        | git and github     |
| Class break                                 | 10 minutes           | ❌                 |
| Make a branch and open a pull request       | 15-20 minutes        | git and github     |
| Fork and clone a GitHub repository          | 10-15 minutes        | git and github     |
| Wrap-up and next class overview             | 10-15 minutes        | ❌                 |

## Lesson Goal

Use Git and GitHub to make a [profile README](https://docs.github.com/en/github/setting-up-and-managing-your-github-profile/managing-your-profile-readme) for your GitHub account.

## 1. Create a local repository

First, create a new directory and give it the same name as your GitHub username (the reason for this will become
clear later):

```shell
mkdir <github-username>
```

Move into that directory

```shell
cd <github-username>
```

Initialise an empty git repository with the branch name, `main`:

```shell
git init
```

```shell
git checkout -b main
```

Now you have an empty local repository 🎉

## 2. Make a commit

Next, we want to make changes within this repository and save (or commit!) them.

A commit is a way to save changes you’ve made to a repository. It is **powerful** because
it allows you to keep snapshots of your repository at any given time.

First, we create a new file:

```shell
touch README.md
```

This is a [README](https://en.wikipedia.org/wiki/README) file using [markdown](https://en.wikipedia.org/wiki/Markdown) syntax.

Next, we will add some text to this file to say hello to the world.

```shell
echo "# Hello, my name is <your name> :)" > README.md
```

Then view the status of the current git repository:

```shell
git status
```

The README.md file will appear in the untracked files. We want to track this file and
add it to the staging area so it will be included in the next commit:

```shell
git add .
```

Then check the `status` again.

Let's commit this file with a helpful commit message:

```shell
git commit -m "Initialise repository with a README"
```

Finally, we can take a look at the log, to view metadata about our previous commits:

```shell
git log
```

## 3. Create a remote repository (on GitHub)

Sign in to GitHub: https://github.com

On the top navigation bar, click the `+` button and select ‘New repository’

Create a new repository: Give the repository the same name as your username, make sure it is ‘Public’
then click ‘Create repository’.

## 4. Push the contents of your local repository to the remote

Now we want to associate our local repository with the one we have created on GitHub
and push the contents of our local repository to GitHub.

Connect the local repository with the remote repository:

```shell
git remote add origin https://github.com/<user>/<repo>.git
```

Verify that the remote was added:

```shell
git remote -v
```

You should see the following output:

```shell
origin	https://github.com/<user>/<repo>.git (fetch)
origin	https://github.com/<user>/<repo>.git (push)
```

Finally push your changes to GitHub:

```shell
git push -u origin main
```

Check your GitHub repository to see if it contains your README file, and look at your profile
to see that it is displayed!

Well done on sharing your first repository 🎉

## 5. Create a branch

Now we want to make some changes to our README, but we don't want to commit them to the `main`
branch yet. Therefore, we will use another branch.

Create a new branch, called ‘add-more-detail’:

```shell
git checkout -b add-more-detail
```

Open the `README.md` file in a text editor (e.g. Notepad or TextEdit) and make some changes.
Here is a template you can use:

```markdown
# Hello, my name is <your name> 👋

Pronouns: <your pronouns>
Learning: command line, Git, HTML, CSS, Javascript, Python
Interests: <your interests>
```

You can be as creative as you want by adding text, emoji, images or gifs (and more!).

Once you have made some changes it is time to add and commit them:

```shell
git add .
git commit -m "Add some new information"
```

Then push the branch with the changes to the remote repository:

```shell
git push origin add-more-detail
```

Take a look at your README profile - has it been updated?

## 6. Create a pull request

Let's say we want to get feedback on the changes we've made. We can do this with a
`Pull Request`.

Go to GitHub and view your branch. Select 'Create new pull request'.

Assign the person you are paired with to review your pull request.

### Reviewing a pull request

If somebody has requested your feedback, you can use this as an opportunity to:

- Ask questions and provide feedback about the changes
- Approve the changes
- Request further changes

Once you have reviewed the changes, click `Review changes` and then `Approve`.

### Merge a pull request

Once your pull request has been reviewed, you can merge it so that the main branch
is updated with your changes.

On your pull request, go to the bottom of the page and select `Rebase and merge`.

You can now go to your command line, `checkout` the main branch and `pull` the changes
so that your local main branch is up to date:

```shell
git checkout main
git pull origin main
```

Finally, take a look at your updated GitHub profile README and celebrate what you've achieved!

![celebrate](https://media.giphy.com/media/l378qdC4yO0YEv5Re/giphy.gif)

## 7. Fork and clone a repository

Note 📝  
This task is unrelated to the previous tasks, but has been included because these
features are useful.

A `fork` is a copy of someone else’s remote repository, sometimes you will make a
fork to build on someone else's work.

Navigate to https://github.com/octocat/Spoon-Knife

On the top-right, select 'Fork'.

Once you have forked the repository, we can `clone` it to download a copy of the
repository to your local machine. On the repository, select `Code` and copy the `HTTPS`
link. Then navigate to your terminal and run:

```shell
git clone https://github.com/<user>/<repo>.git
```

## 8. Follow-up activity: make improvements to your GitHub Profile README

There are plenty of wonderful examples out there, take a look at the examples in this
repository for inspiration: https://github.com/abhisheknaiidu/awesome-github-profile-readme

## Glossary

| Term         | Meaning                                                              |
| ------------ | -------------------------------------------------------------------- |
| repository   | (also known as repo) the place where code is stored.                 |
| commit       | a snapshot of changes made to a repository                           |
| branch       | a pointer to a commit                                                |
| remote       | a repository that is hosted by a web service                         |
| origin       | the remote repository associated with a project                      |
| head         | the last commit in the checked-out branch                            |
| status       | the current state of the git repository                              |
| pull         | get the latest changes from the remote repository on your local repo |
| push         | push the latest changes from the local repository to the remote repo |
| pull request | (also known as a PR) lets you get feedback on your code changes      |
| staging area | the intermediate area where a change is added before it is commit    |

## Extra resources

![xkcd - git](https://imgs.xkcd.com/comics/git.png)

{{< tip >}}

- [Writing a good commit messages](https://www.freecodecamp.org/news/writing-good-commit-messages-a-practical-guide/), by FreeCodeCamp
- [Markdown cheatsheet](https://guides.github.com/pdfs/markdown-cheatsheet-online.pdf)
- [Learning git branching](https://learngitbranching.js.org/), by pcottle
- [Dangit, git](https://dangitgit.com/en), by @ksylor (available in multiple languages)
- [Learn git concepts, not Commands](https://dev.to/unseenwizzard/learn-git-concepts-not-commands-4gjc), by Nico Riedmann
- [A visual introduction to Git](https://medium.com/@ashk3l/a-visual-introduction-to-git-9fdca5d3b43a), by Ashley Keller
  {{< /tip >}}