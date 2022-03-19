+++
title = "22/March - Version Control with Git and GitHub"
description = "Goals"
# weight = 10
+++

<!-- 2022 - created by combining previous `git_and_github.md` and `review_git_command_line.md`,
and adding GitHub Desktop option -->

![xkcd - git](https://imgs.xkcd.com/comics/git.png)

## Prerequisites

{{< tip >}}
Please complete these prerequisites before class, so we can spend as much time as possible on troubleshooting and practice! :)

✨ Remember, reach out on the class slack channel if you run into any issues or have questions!

{{< /tip >}}

- Homework videos from last class posted on slack on the internet, reposted here:

  - [How the Internet Works in 4 Minutes](https://www.youtube.com/watch?v=Sfzo4xm5eX8) - 4:03
  - [IP addresses and DNS](https://youtu.be/MwxMsaFFycg) - 6:45
  - [Packets, Routers, and Reliability](https://youtu.be/aD_yi5VjF78) - 6:25
  - [HTTP and HTML](https://youtu.be/1K64fWX5z4U) - 7:07
  - _(Optional)_ [Wires, cables, and WiFi](https://youtu.be/iV-YqG70wbQ)
    This video is for those who want more details on how information is broken up and transported through the wires that make up the internet, the differences between fiber optics/radio/copper cables, and how WiFI is different than wired internet. It's very interesting but not required :)

- Install GitHub Desktop

  If you are running Mac or Windows on your computer, please install the GitHub Desktop app by following the instructions [at this link](https://desktop.github.com/).

  If you are using Linux, please reach out to the teachers and let us know, since GitHub Desktop is not available for Linux. You can instead follow the instructions [here](https://github.com/git-guides/install-git#install-git-on-linux) to install git on Linux.

  Note: GitHub desktop should also automatically install `git` on the command line. If this does not happen by default and you would like to practice using command line `git` (_warning: more challenging!_), you can follow the instructions for your OS [here](https://github.com/git-guides/install-git).

- Sign up and sign in to GitHub 🚀

  Open GitHub Desktop. If you are prompted to sign in or create an account, click the prompt to create an account if you don't already have one, otherwise sign in. Both options should open up a GitHub webpage.

  If you are not prompted to create an account upon opening GitHub Desktop, sign up here: [https://github.com/join](https://github.com/join)

  You can then follow the instructions [linked here](https://docs.github.com/en/desktop/installing-and-configuring-github-desktop/installing-and-authenticating-to-github-desktop/authenticating-to-github) to sign into (authenticate) your account.

  _Why?_ In this class, we will use git/GitHub Desktop to...

  - store our code
  - collaborate with each other on assignments and projects
  - share and showcase our work

- Install Visual Studio Code (VSCode) and configure GitHub Desktop to use this
  Download and install here: [https://code.visualstudio.com/](https://code.visualstudio.com/)

  After you have downloaded this, follow the instructions [linked here](https://docs.github.com/en/desktop/installing-and-configuring-github-desktop/configuring-and-customizing-github-desktop/configuring-a-default-editor) to configure Visual Studio Code as the default text editor for GitHub Desktop.

  _What is this?_
  VSCode is an Integrated Development Environment (IDE), which can be used for developing and testing software. Today, we will use this to view and edit text files, and in the future we will use this for editing and writing code.

- (Optional but highly recommended if you have time!) watch this video: [Git and GitHub explained for Beginners](https://www.youtube.com/watch?v=8Dd7KRpKeaE). You can skip the section on ignoring files (11:38-15:38).

- (Optional) if you are unfamiliar with the concept of files and file systems, discussed last class, please watch the following videos as well:
  - [files and file systems](https://www.youtube.com/watch?v=KN8YgJnShPM)
    - If this video was difficult to understand or you are unfamiliar with navigating the file system on your computer currently, we recommend that you watch [this video](https://www.youtube.com/watch?v=k-EID5_2D9U) and [this followup video](https://www.youtube.com/watch?v=DGd48PGbnBs)
  - this video until 8:30 on [file paths](https://www.youtube.com/watch?v=BMT3JUWmqYY)

---

## Class Curriculum

| Section content                           | Expected time (mins) | Pre - Requirements         |
| ----------------------------------------- | -------------------- | -------------------------- |
| Lesson Goals                              | 5 minutes            | ❌                         |
| Review and questions from last class      | 20 minutes           | videos                     |
| Overview of Version Control and GitHub    | 15-20 minutes        | ❌                         |
| Demo of GitHub and an Open Source Project | 5 minutes            | ❌                         |
| Demo of Tasks Today                       | 5-10 minutes         | ❌                         |
| Class break                               | 10 minutes           | ❌                         |
| GitHub Practice in Groups                 | 30-45 minutes        | GitHub Desktop and account |
| Wrap-up                                   | 5-10 minutes         | ❌                         |

## 0. Lesson Goals

- Review information about the internet and files
- Use the GitHub Desktop tutorial to create a repository, branch, commit, and pull request
- Practice the Fork & Clone workflow that we will use throughout this class for sharing tasks

## 1. Review and Questions from Last Class (Intro to the Internet)

- Kahoot! Go to [www.kahoot.it](www.kahoot.it) and enter the game PIN from the session.
- Any questions on the content from last class?

## 2. Overview of Version Control and GitHub

### What is Version Control and why is it useful?

- System for managing changes to files (including programs, text files, image files, etc.)
  - Version Control Systems for software (including `git`) help us understand changes made: what was the change? who made it? when? why?
- May display a revision history or information about past edits
- Why is it useful?
  - Safely storing and accessing past versions of files
    - maybe something is now broken, and you want to use an older version that worked
    - you don't want to lose your work on a project if your computer crashes
  - Collaborating on documents with others: modifying the same document can be tricky without a way of resolving conflicting changes
- Some examples involving Version Control Systems:
  - Google Docs containing a document revision history
  - Microsoft Office restoring an older version of a file if the program crashes with unsaved work
  - Storing a code project in a GitHub repository :)
- What are some examples from the teachers' experience?

### What are Git and GitHub?

- `git`: Version Control System for tracking and storing files, developed by the creater of Linux (Linus Torvalds); free, open source, and widely used in the software engineering industry
- GitHub: internet service that allows you to store and collaborate on collections of files stored as `git` repositories

### Why GitHub Desktop?

- `git` is a powerful tool but can be confusing and intimidating at first
- GitHub Desktop is an open-source tool that is more accessible to new developers and does not require comfort using the command line
- GitHub Desktop is relies on "best practice" workflows, which should help instill good habits when learning
- GitHub Desktop has nice visualizations of what is happening within commits, merges, etc. which will help build your understanding of `git`
- Skills learned while using GitHub desktop can be applied later to using `git` on the command line for more advanced, custom use in the future :)

### Working with Git & GitHub

We will practice these during the class activities today -- it's ok if it doesn't all make sense at the start. The [GitHub Desktop Docs](https://docs.github.com/en/desktop) are also a great resource!

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

## 3. Practice with GitHub

Use the instructions on workflows above as well as the [GitHub Desktop Documentation](https://docs.github.com/en/desktop/) to work through these tasks in groups. Within the steps, there will be some observational questions about the process. Make sure to discuss and move forward together as a group.

Before beginning, we recommend that you create a directory (folder) like `redi-code` or `intro-cs-22` (or another name of your choice) on your computer where you can store all of your repositories and code for this class!

### Task: GitHub Desktop Tutorial

In GitHub Desktop, select `Create a Tutorial Repository`, and follow through the steps of the tutorial. Make sure to read the explanations provided throughout the guide!

For more help on completing the tutorial including pictures, [check the docs here](https://docs.github.com/en/desktop/installing-and-configuring-github-desktop/overview/creating-your-first-repository-using-github-desktop).

### Task: Creating a Repository and Making Changes

1. Create a new repository called `test-repo-03-22`. See the instructions above for [starting a brand new project](#starting-a-brand-new-project). Initialize the project with a `README`.
2. Open the repository in VSCode (or another text editor).
3. In VSCode, add some text to the `README.md` file.
4. In GitHub Desktop, can you see the changes that you made to the `README.md` file? If not, check in with your group and/or a teacher. Once you have seen the changes, add a message to the `Summary` field at the bottom left-hand corner and create a commit, saving a snapshot of this new version.
5. Publish this repository to a remote repository on GitHub. You can choose to make it public by unchecking the `Keep this code private` button if you'd like to share the repository page with the teachers!
6. Check the repository page on GitHub. There should be a button in GitHub Desktop to `Open the repository page on GitHub in your browser` which will take you to this page. If you cannot find this page or the repository does not exist under your GitHub account, ask your group members and/or a teacher.
7. In VSCode, create a new file called `new-file.txt` and write some text.
8. In GitHub Desktop, what does this new file look like?
9. Add a descriptive message and create a new commit. Publish these changes to GitHub.

Congratulations! You have created a new repository locally and pushed these changes to GitHub!

### Task: Working with an Existing Repository (Fork & Clone)

1. Fork and make a local copy of this repository: [https://github.com/ReDI-School/intro-to-cs-git-review](https://github.com/ReDI-School/intro-to-cs-git-review). See the instructions above for [joining or copying an existing project](#joining-or-copying-an-existing-project) for more details, and make sure to follow the additional steps to fork the repository!
2. Open the files in the repository in VSCode (or another text editor if you weren't able to install VSCode). If you configured VSCode as your default editor, you can do this easily by going to `Repository > Open in Visual Studio Code`.
3. Time to make some changes! Review the instructions above for [making changes](#making-changes) if needed to help with the following steps :)
4. In GitHub Desktop, create a new branch called `test-branch` to contain the new changes.
5. In the `some-files` directory in the repository, delete the file that is empty (has no contents). (_Hint: open and look through the files in VSCode to find the empty files._).
6. In GitHub Desktop, how can you tell that the file has been deleted? Create a commit to "save" your changes. Give it the following message (`summary`): `"Delete file <name-of-file>"`, replacing `<name-of-file>` with the name of the deleted file.
7. One of the non-empty files has the contents: `"Hello, I'm a file! What's your name?"`. Modify this file that answers the question with your name (or one of your choosing)!
8. Can you tell that a file has been modified? If not, ask someone in your group or a teacher for help before moving on. If so, in the same way as above, create another commit with a descriptive message of your choice.
9. Publish your two commits to the remote repository on GitHub.
10. `c.txt` seems to be out of place. Move this file into the `some-files` directory. In VSCode, you can do this by dragging the file into the desired directory. What does this change look like in GitHub Desktop? Create a commit for this change.
11. Delete the `delete-me` directory. Create a commit for this change.
12. Publish your remaining two commits to the remote repository on GitHub.
13. Let's go ahead and create a pull request (PR) to merge `test-branch` to `main`. Assign someone in your group and one of your teachers as reviewers for the PR.
14. (Optional) review any other PRs that you are tagged on.
15. (Optional) once you have received an approving review on your PR, you can merge the PR!

## Extra resources

{{< tip >}}

- [GitHub's Git Guides](https://github.com/git-guides): lots of useful guides explaining the different commands and components of `git`
  - [About Git](https://docs.github.com/en/get-started/using-git/about-git): more information about version control and `git`
- [GitHub's Git Cheatsheet](https://training.github.com/downloads/github-git-cheat-sheet/): contains a useful glossary and cheatsheet of basic `git` commands and concepts
- [Writing a good commit messages](https://www.freecodecamp.org/news/writing-good-commit-messages-a-practical-guide/), by FreeCodeCamp
- [A visual introduction to Git](https://medium.com/@ashk3l/a-visual-introduction-to-git-9fdca5d3b43a), by Ashley Keller
- [Introduction to Version Control and Git](http://tutorials.codebar.io/version-control/introduction/tutorial.html): more information on version control and why we use it as well as an overview of Git and GitHub

  {{< /tip >}}

## Homework

- Finish the exercises from class. Optionally: send a link to the GitHub page of your repository to the teachers, and tag a teacher on your pull request (PR).
- (Optional): make additional changes to the repository you created in the second task in class.
- (Optional): go through the [GitHub collaboration tutorial](https://lab.github.com/githubtraining/introduction-to-github).
- Review the extra resources and reach out to the class slack channel if you have any questions!
