+++
title = "16/September/2021 - Command Line Basics Part 2"
description = "Goals"
# weight = 10
+++

{{< picture "anatomy_of_command_line.png" "anatomy_of_command_line.png" "Anatomy of a command line" >}}

## Pre Requisites

- Watch this video on [files and file Systems](https://www.youtube.com/watch?v=KN8YgJnShPM)
  - If this video was difficult to understand or you are unfamiliar with navigating the file system on your computer currently, we recommend that you watch [this video](https://www.youtube.com/watch?v=k-EID5_2D9U) and [this followup video](https://www.youtube.com/watch?v=DGd48PGbnBs)
- Watch this video until 8:30 on [file paths](https://www.youtube.com/watch?v=BMT3JUWmqYY)
- (Optional): watch this video on the [history of keyboards and the command line interface](https://www.youtube.com/watch?v=4RPtJ9UyHS0)
- (Optional - for Windows users only): [install the Cmder console emulator](https://cmder.net/) (easier) or [set up the windows subsystem for linux](https://www.youtube.com/watch?v=LLlfLpvQg04)

## Class Curriculum

| Section content                                              | Expected time (mins) | Pre - Requirements                |
| ------------------------------------------------------------ | -------------------- | --------------------------------- |
| Kahoot                                                       | 15 minutes           | videos                            |
| Questions from Kahoot + [Session 1](../command_line_part1)   | 15 minutes           | ❌                                |
| Useful Terms/Concepts                                        | 5-10 minutes         | videos                            |
| Navigate file system and working with files & folders (demo) | 10-15 minutes        | ❌                                |
| Quick overview of package managers                           | 5-10 minutes         | ❌                                |
| Class break                                                  | 10 minutes           | ❌                                |
| Command line practice in groups                              | 40-50 minutes        | local terminal OR repl.it account |
| Summary & Next class overview                                | 5 minutes            | ❌                                |

## Useful Terms/Concepts

- **File**: data, usually organized according to some specific _file format_ (e.g. `txt`, `mp3`, `docx`)
- **Directory**: what we think of as a folder that contains files and other folders; in Linux systems, this is just a file that stores information about the length and location of other files, similar to a table of contents
- **File system**: the part of an operating system that stores and keeps track of files
- **File permissions**: define which users/groups are allowed to read/write/execute certain files. If a user has the following permissions, they can:
  - **Read**: view the contents of the file
  - **Write**: modify the contents of the file
  - **Execute**: run the program (remember: programs are also treated as "files" in Linux systems and are permissioned using the same terms!)

## Navigate file system and working with files & folders (demo) | 10-15 minutes

### Why use the command line?

- once familiar with it, faster and easier to navigate the file system
- offers many powerful tools (especially, but not limited to, text and file manipulation)
- possible to group together commands and automate repeatable workflows
- helpful (often required) when working on virtual machines or infrastructure in the cloud

### Demo

Let's go through how to navigate the file system and work with files and folders. We will do this both via the command line using the commands listed in the cheat sheet below and then using the GUI (Graphical User Interface). Please refer to this cheat sheet when working through the exercises in groups later!

### Command Line cheat sheet

{{< tip >}}
Remember that you can look up what a command does by using the `man` (manual-pages) command on Mac and Linux, or `help` command on Windows cmd. For example: `man echo` would give you information on what the `echo` command does and how to use it.
{{< /tip >}}

| command | what it does                                                                                                                                                                                                                           |
| ------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `pwd`   | print working directory (print the path to where I currently am in the file system)                                                                                                                                                    |
| `cd`    | change directory (this moves you, the viewer of the terminal, to a new location in the file system). You may use an absolute file path or a relative path where `.` is the current working directory and `..` is the parent directory. |
| `ls`    | list the contents of the directory                                                                                                                                                                                                     |
| `mkdir` | make a directory                                                                                                                                                                                                                       |
| `touch` | create a new file                                                                                                                                                                                                                      |
| `rm`    | delete a file (note: to delete a directory, add the option `-r` or `-d`)                                                                                                                                                               |
| `cp`    | copy a file (note: to copy a directory you probably need to add an option (like `-r`))                                                                                                                                                 |
| `mv`    | move a file or directory to a new location (note: this can also be useful for changing the name of a file/directory)                                                                                                                   |
| `echo`  | print some text; often used in conjunction with other commands                                                                                                                                                                         |
| `cat`   | print the contents of the file                                                                                                                                                                                                         |
| `>`     | this is an operator: `X > Y` will redirect (send) the outputs of command `X` to `Y`; if `Y` exists, it this will _overwrite_ the existing file.                                                                                        |
| `>>`    | this is an operator similar to the above: `X >> Y` will send the outputs of command `X` to `Y`; if `Y` exists, it this will _append_ to the existing file.                                                                             |

## Quick overview of package managers

{{< picture "linux-package-manager-explanation.webp" "linux-package-manager-explanation.webp" "Linux package managers" >}}

Packages are collections of files that are bundled together and can be installed and removed as a group

Package managers allow you to:

- keep track of what software is installed
- easily install new software
- upgrade existing software to newer versions
- remove or uninstall software.

There are different package managers available for different Operating Systems and Distributions. Here are some examples:

- MacOS: homebrew, AppStore
- Windows: PackageManagement, Chocalatey...

  {{< picture "windows-package-management.png" "windows-package-management.png" "Windows package management" >}}

- Linux: `yum`, `apt-get`, `zypper`

  {{< picture "packages-by-distro.jpg" "packages-by-distro.jpg" "Linux package managers" >}}

## Tasks for group work

Work through the tasks with your partner/group. We recommend that one of you shares your screen and you discuss as a group how to proceed with each of the tasks. Each group member should be following along. It is totally fine if you don't complete all the tasks; make sure you understand how to do each task and ask questions if anything does not make sense! Complete any remaining tasks for homework.

### 0. Open a terminal window

Open a terminal window or Repl, where you can practice using the command line.

On Mac, you can do this by searching for "Terminal" in your Applications folder or using the keyboard shortcut "Command + Space" and then typing in "Terminal".

On Windows, open Cmder if you installed this as part of the prerequisites, or if you installed the Linux subsystem for windows, you can run WSL or follow the instructions described in the video. Alternatively, you can use Cygwin or the gitbash shell to practice Linux commands, or if nothing is available or working on your machine, please use Repl for today.

If you are running into any challenges with this, reach out to one of the teachers.

### 1. Move to the parent directory and back

- Print your working directory
- Move into the parent directory, if there is one.
- Move back into the directory you came from.

Hint: if your original working directory path looked something like `folder1/folder2/folder3`, then for this task, you want to move to `folder1/folder2` and then back to `folder1/folder2/folder3`.

### 2. Create a redi folder

Let's create a folder to store the work from this session.

- Navigate to the place where you would like this folder to be located. The current working directory is fine, but you can also navigate to your desktop or another folder where you keep course work.
- Create a new directory (folder) titled `redi-2021-09-16`
- Move into this new directory and print your working directory. Double check that your working directory now includes `redi-2021-09-16`.

### 3. Create some files

Now let's create some files to go in this new directory.

- Create an empty file called "test1.txt" using the `touch` command.
- Create a second file called "hello.txt" which contains the phrase: "hello, my name is YOUR_NAME_HERE!". (Replace YOUR_NAME_HERE with your name :)) Hint: use the `echo` command and the `>` operator to do this.
- List the files that are in the directory, and make sure that it looks something like:

  ```bash
  test1.txt hello.txt
  ```

- Append the line "How are you doing?" to the file "hello.txt"
- Print the contents of the file and make sure that it looks something like:

  ```txt
  hello! my name is YOUR_NAME_HERE!
  How are you doing?
  ```

### 4. Move these files into a new directory

Let's organize the directory that we are in by putting some of the files in a new location.

- Create a folder (directory) called `test-files` in the `redi-2021-09-16` folder
- List the contents of the directory that you are in and make sure that it looks something like:
  ```bash
  test1.txt hello.txt test-files
  ```
- Move `test1.txt` into the `test-files` directory.
- List the contents of `test-files` and make sure it contains only `test1.txt`, and list the contents of `redi-2021-09-16` to confirm that `test1.txt` has been moved.

### 5. Copy files and directories

- Copy of `hello.txt` into the `test-files` directory. (Hint: this can be done in one command by copying the file to the proper location, or by creating a copy and then moving the file.)
- Rename the original `hello.txt` to `original-hello.txt`. (Hint: "renaming" is the same as moving a file to a new file path.)
- Make a copy of the `test-files` directory named `test-files-copy`.
- List the contents of `test-files-copy` and make sure that it contains both `test1.txt` and `original-hello.txt`.

### 6. Delete files and directories

Be careful with this one! Please double check the command with one of the teachers before removing anything, since **anything removed via `rm` cannot be retrieved**!!

- In the `test-files-copy`, delete the `test1.txt` file.
- Confirm that `test-files-copy` contains only `original-hello.txt`.
- Delete the entire `test-files-copy` directory.
- List the contents of the `redi-2021-09-16` directory and make sure that the `test-files-copy` directory is gone, but that the original `test-files` directory and other files are still present.

### (Optional) 7. Additional Practice

These are additional challenge tasks that are meant to be extra challenging, in case the previous tasks went by more quickly than expected! :)

- Use the man-pages and Google to understand how to use the `grep` command. Use this command to search for occurrences of the text "my name is" in the `redi-2021-09-16` directory. (Hint: you can use the `-r` option to do this)
- Create a journal/diary as a group with the following structure: the `journal` folder should contain `year` folders on the first level. Within a `year` folder are `month` folders, which contain text files for each individual day. A file path for one of these may look like: `.../journal/2021/09/16.txt`. Create a few entries that have some text!
- Take a look at some of the extra resources :)

## Extra resources

{{< tip >}}

- [Linux Filesystem Hierarchy - Part 1](https://www.youtube.com/watch?v=460IxkYmZxQ)
- [Linux Filesystem Hierarchy - Part 2](https://www.youtube.com/watch?v=WMaWG5ZRht4)
- [Briana's Bash Tutorial: How to Use the Command Line in Linux, Windows, and Mac](https://www.youtube.com/watch?v=BFMyUgF6I8Y)
- [A linux command line primer](https://www.digitalocean.com/community/tutorials/a-linux-command-line-primer)
- [Learn Enough Command Line to Be Dangerous](https://www.learnenough.com/command-line-tutorial/basics)
- [Linux command line basic cheat sheet](https://ryanstutorials.net/linuxtutorial/cheatsheet.php)
- [The Linux Command Handbook](https://www.freecodecamp.org/news/the-linux-commands-handbook/)
- [Package Managers](https://devopedia.org/package-manager)
- [What is a package manager in Linux](https://summarynetworks.com/ses/what-is-a-package-manager-in-linux/)
  {{< /tip >}}

## Next class preparation

Coming soon!
{{< button "../../git" "Version Control with GIT" "mb-1 grid-4" >}}
