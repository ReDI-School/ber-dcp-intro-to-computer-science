+++
title = "09/March/2021 - Command Line Basics Part 2"
description = "Goals"
# weight = 10
+++

{{< picture "anatomy_of_command_line.png" "anatomy_of_command_line.png" "Anatomy of a command line" >}}

## Pre Requisites

- Create an account on [repl.it](https://repl.it/signup)

- Optional( for Windows users only): [How to Install Linux Terminal on Windows 10](https://www.youtube.com/watch?v=LLlfLpvQg04)

## Class Curriculum

| Section content                             | Expected time (mins) | Pre - Requirements |
| ------------------------------------------- | -------------------- | ------------------ |
| Digital Career Support Team                 | 10-15 minutes        | ❌                  |
| Recap [Session 1](../command_line_part1)    | 15-20 minutes        | ❌                  |
| Navigation of Linux file system             | 5-10 minutes         | ❌                  |
| Create, view, manipulate files & folders    | 5-10 minutes         | ❌                  |
| Class break                                 | 10 minutes           | ❌                  |
| Group project: Creating a journal/diary     | 20-25 minutes        | repl.it account     |
| Installing software & package managers      | 10-15 minutes        | ❌                  |
| Summary & Next class overview               | 10 minutes           | ❌                  |

## Recap [Session 1](../command_line_part1)
- Questions
  - Linux and Windows are ...
  - To create a directory in linux we use the command: ...
  - To create a file in linux we use the command: ...
  - Commands like above/before expect us to provide also an ... 
  
## Navigating through the Linux File System

```bash
root@abc40003dc7a:/# pwd
/
root@abc40003dc7a:/# cd home/
root@abc40003dc7a:/home# pwd
/home
root@abc40003dc7a:/home# cd deliergky/
root@abc40003dc7a:/home/deliergky# pwd
/home/deliergky
root@abc40003dc7a:/home/deliergky# cd ..
root@abc40003dc7a:/home# pwd
/home
root@abc40003dc7a:/home# cd ..
root@abc40003dc7a:/# pwd
/
```

```bash
root@abc40003dc7a:/home/deliergky# pwd
/home/deliergky
root@abc40003dc7a:/home/deliergky# cd ~
root@abc40003dc7a:~# pwd
/root
```

```bash
$ ls -an
total 88
drwxr-xr-x   1 0 0 4096 Mar  8 17:48 .
drwxr-xr-x   1 0 0 4096 Mar  8 17:48 ..
drwxr-xr-x   2 0 0 4096 Feb 22 22:47 bin
drwxr-xr-x   2 0 0 4096 Apr 24  2018 boot
drwxr-xr-x   5 0 0  360 Mar  8 17:48 dev
drwxr-xr-x   1 0 0 4096 Mar  8 18:29 etc
drwxr-xr-x   1 0 0 4096 Mar  8 18:31 home
drwxr-xr-x   1 0 0 4096 Mar  8 17:59 lib
drwxr-xr-x   2 0 0 4096 Feb 22 22:46 lib64
drwxr-xr-x   2 0 0 4096 Feb 22 22:43 media
drwxr-xr-x   2 0 0 4096 Feb 22 22:43 mnt
drwxr-xr-x   2 0 0 4096 Feb 22 22:43 opt
dr-xr-xr-x 127 0 0    0 Mar  8 17:48 proc
drwx------   2 0 0 4096 Feb 22 22:47 root
drwxr-xr-x   1 0 0 4096 Mar  4 02:24 run
drwxr-xr-x   1 0 0 4096 Mar  4 02:24 sbin
drwxr-xr-x   2 0 0 4096 Feb 22 22:43 srv
dr-xr-xr-x  13 0 0    0 Mar  8 17:48 sys
drwxrwxrwt   1 0 0 4096 Mar  8 18:04 tmp
drwxr-xr-x   1 0 0 4096 Feb 22 22:43 usr
drwxr-xr-x   1 0 0 4096 Feb 22 22:47 var
```

## Create, view, manipulate files & folders
{{< block "grid-2" >}}

{{< column >}}

- *Create* a *file*:
```bash
root@abc40003dc7a:/home/deliergky# mkdir -p 2021/03
```

- *Create* a *folder*:
```bash
root@abc40003dc7a:/home/deliergky# touch 2021/03/08.log
```

- *Copy* a *file*:
```bash
root@abc40003dc7a:/home/deliergky# cp 2021/03/09.log 2021/03/10.log
root@abc40003dc7a:/home/deliergky# cat 2021/03/10.log
Learning something cool @ReDI
```

- *Copy* a *folder*:
```bash
root@abc40003dc7a:/home/deliergky# cp -r 2021/03/ 2021/04
root@abc40003dc7a:/home/deliergky# ls -an 2021/04/
total 16
drwxr-xr-x 2 0 0 4096 Mar  8 18:58 .
drwxr-xr-x 4 0 0 4096 Mar  8 18:58 ..
-rw-r--r-- 1 0 0    0 Mar  8 18:58 07.log
-rw-r--r-- 1 0 0    0 Mar  8 18:58 08.log
-rw-r--r-- 1 0 0   30 Mar  8 18:58 09.log
-rw-r--r-- 1 0 0   30 Mar  8 18:58 11.log
root@abc40003dc7a:/home/deliergky#
```

- *Delete/Remove* a *file*:
```bash
root@abc40003dc7a:/home/deliergky# rm 2021/04/09.log
root@abc40003dc7a:/home/deliergky# ls -an 2021/04/
total 12
drwxr-xr-x 2 0 0 4096 Mar  8 19:01 .
drwxr-xr-x 4 0 0 4096 Mar  8 18:58 ..
-rw-r--r-- 1 0 0    0 Mar  8 18:58 07.log
-rw-r--r-- 1 0 0    0 Mar  8 18:58 08.log
-rw-r--r-- 1 0 0   30 Mar  8 18:58 11.log
root@abc40003dc7a:/home/deliergky#
```

- *Delete/Remove* a *folder*:
```bash
root@abc40003dc7a:/home/deliergky# rm 2021/04/
rm: cannot remove '2021/04/': Is a directory
root@abc40003dc7a:/home/deliergky# rm -r 2021/04/
root@abc40003dc7a:/home/deliergky#
```

{{< /column >}}
{{< column >}}

- *View* a *file*:
```bash
root@abc40003dc7a:/home/deliergky# cat 2021/03/08.log
International Women's Day (March 8) is a global day celebrating the social, economic, cultural, and political achievements of women. The day also marks a call to action for accelerating women's equality.
```

- *List* a *folder's* content:
```bash
root@abc40003dc7a:/home/deliergky# ls -an 2021/03/
total 12
drwxr-xr-x 2 0 0 4096 Mar  8 18:35 .
drwxr-xr-x 3 0 0 4096 Mar  8 18:31 ..
-rw-r--r-- 1 0 0    0 Mar  8 18:35 07.log
-rw-r--r-- 1 0 0  204 Mar  8 18:41 08.log
-rw-r--r-- 1 0 0    0 Mar  8 18:34 09.log
```

- *Update* a *file's* content:
```bash
root@abc40003dc7a:/home/deliergky# echo "Learning something cool @ReDI" > 2021/03/09.log
root@abc40003dc7a:/home/deliergky# cat 2021/03/09.log
Learning something cool @ReDI
```

- *Rename* a *file*:
```bash
root@abc40003dc7a:/home/deliergky# mv 2021/03/10.log 2021/03/11.log
root@abc40003dc7a:/home/deliergky# ls -an 2021/03/
total 16
drwxr-xr-x 2 0 0 4096 Mar  8 18:49 .
drwxr-xr-x 3 0 0 4096 Mar  8 18:31 ..
-rw-r--r-- 1 0 0    0 Mar  8 18:35 07.log
-rw-r--r-- 1 0 0    0 Mar  8 18:44 08.log
-rw-r--r-- 1 0 0   30 Mar  8 18:47 09.log
-rw-r--r-- 1 0 0   30 Mar  8 18:48 11.log
```
{{< /column >}}
{{< /block >}}

## Group project: Creating a journal/diary
{{< block "grid-2" >}}
{{< column >}}
Let's create a simple diary in the following format: `2021/03/09.log`

Where:

- `2021` represents the year and is a folder
- `03` represents the month and is a folder
- `09.log` represents the day and is a file 

Add also some content to the files ;-) 

{{< /column >}}
{{< column >}}
```bash
root@abc40003dc7a:/home/deliergky# ls -alR 2021/
2021/:
total 20
drwxr-xr-x 5 root root 4096 Mar  8 19:05 .
drwxr-xr-x 3 root root 4096 Mar  8 18:31 ..
drwxr-xr-x 2 root root 4096 Mar  8 18:49 03
drwxr-xr-x 2 root root 4096 Mar  8 19:05 04
drwxr-xr-x 2 root root 4096 Mar  8 19:05 05

2021/03:
total 16
drwxr-xr-x 2 root root 4096 Mar  8 18:49 .
drwxr-xr-x 5 root root 4096 Mar  8 19:05 ..
-rw-r--r-- 1 root root    0 Mar  8 18:35 07.log
-rw-r--r-- 1 root root    0 Mar  8 18:44 08.log
-rw-r--r-- 1 root root   30 Mar  8 18:47 09.log
-rw-r--r-- 1 root root   30 Mar  8 18:48 11.log

2021/04:
total 16
drwxr-xr-x 2 root root 4096 Mar  8 19:05 .
drwxr-xr-x 5 root root 4096 Mar  8 19:05 ..
-rw-r--r-- 1 root root    0 Mar  8 19:05 07.log
-rw-r--r-- 1 root root    0 Mar  8 19:05 08.log
-rw-r--r-- 1 root root   30 Mar  8 19:05 09.log
-rw-r--r-- 1 root root   30 Mar  8 19:05 11.log

2021/05:
total 16
drwxr-xr-x 2 root root 4096 Mar  8 19:05 .
drwxr-xr-x 5 root root 4096 Mar  8 19:05 ..
-rw-r--r-- 1 root root    0 Mar  8 19:05 07.log
-rw-r--r-- 1 root root    0 Mar  8 19:05 08.log
-rw-r--r-- 1 root root   30 Mar  8 19:05 09.log
-rw-r--r-- 1 root root   30 Mar  8 19:05 11.log
```
{{< /column >}}
{{< /block >}}
  
## Installing software & package managers

{{< picture "linux-package-manager-explanation.webp" "linux-package-manager-explanation.webp" "Linux package managers" >}}

- Package: collections of files that are bundled together and can be installed and removed as a group

    ```bash
    root@abc40003dc7a:/# apt show golang
    Package: golang
    Version: 2:1.10~4ubuntu1
    Priority: optional
    Section: devel
    Source: golang-defaults
    Origin: Ubuntu
    Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>
    Original-Maintainer: Go Compiler Team <pkg-golang-devel@lists.alioth.debian.org>
    Bugs: https://bugs.launchpad.net/ubuntu/+filebug
    Installed-Size: 11.3 kB
    Depends: golang-1.10, golang-doc (>= 2:1.10~4ubuntu1), golang-go (>= 2:1.10~4ubuntu1), golang-src (>= 2:1.10~4ubuntu1)
    Homepage: https://golang.org
    Supported: 5y
    Download-Size: 2896 B
    APT-Sources: http://archive.ubuntu.com/ubuntu bionic/main amd64 Packages
    Description: Go programming language compiler - metapackage
    ```

- Keeps track of what software is installed

    ```bash
    root@abc40003dc7a:/# apt list golang
    Listing... Done
    golang/bionic,now 2:1.10~4ubuntu1 amd64 [installed]
    ```

- Allows you to easily install new software

    ```bash
    root@abc40003dc7a:/# apt-get install golang
    Reading package lists... Done
    Building dependency tree
    Reading state information... Done
    The following additional packages will be installed:
    binutils binutils-common binutils-x86-64-linux-gnu build-essential cpp cpp-7 dirmngr dpkg-dev fakeroot g++ g++-7 gcc gcc-7 gcc-7-base gnupg gnupg-l10n
    gnupg-utils golang-1.10 golang-1.10-doc golang-1.10-go golang-1.10-race-detector-runtime golang-1.10-src golang-doc golang-go golang-race-detector-runtime
    golang-src gpg gpg-agent gpg-wks-client gpg-wks-server gpgconf gpgsm libalgorithm-diff-perl libalgorithm-diff-xs-perl libalgorithm-merge-perl libasan4
    libasn1-8-heimdal libassuan0 libatomic1 libbinutils libc-dev-bin libc6-dev libcc1-0 libcilkrts5 libdpkg-perl libfakeroot libfile-fcntllock-perl
    libgcc-7-dev libgdbm-compat4 libgdbm5 libglib2.0-0 libglib2.0-data libgomp1 libgssapi3-heimdal libhcrypto4-heimdal libheimbase1-heimdal
    libheimntlm0-heimdal libhx509-5-heimdal libicu60 libisl19 libitm1 libkrb5-26-heimdal libksba8 libldap-2.4-2 libldap-common liblocale-gettext-perl liblsan0
    libmpc3 libmpfr6 libmpx2 libnpth0 libperl5.26 libquadmath0 libreadline7 libroken18-heimdal libsasl2-2 libsasl2-modules libsasl2-modules-db libsqlite3-0
    libssl1.1 libstdc++-7-dev libtsan0 libubsan0 libwind0-heimdal libxml2 linux-libc-dev make manpages manpages-dev netbase patch perl perl-modules-5.26
    pinentry-curses pkg-config readline-common shared-mime-info xdg-user-dirs xz-utils
    Suggested packages:
    binutils-doc cpp-doc gcc-7-locales dbus-user-session libpam-systemd pinentry-gnome3 tor debian-keyring g++-multilib g++-7-multilib gcc-7-doc
    libstdc++6-7-dbg gcc-multilib autoconf automake libtool flex bison gdb gcc-doc gcc-7-multilib libgcc1-dbg libgomp1-dbg libitm1-dbg libatomic1-dbg
    libasan4-dbg liblsan0-dbg libtsan0-dbg libubsan0-dbg libcilkrts5-dbg libmpx2-dbg libquadmath0-dbg parcimonie xloadimage bzr ca-certificates git mercurial
    subversion scdaemon glibc-doc gdbm-l10n libsasl2-modules-gssapi-mit | libsasl2-modules-gssapi-heimdal libsasl2-modules-ldap libsasl2-modules-otp
    libsasl2-modules-sql libstdc++-7-doc make-doc man-browser ed diffutils-doc perl-doc libterm-readline-gnu-perl | libterm-readline-perl-perl pinentry-doc
    readline-doc
    The following NEW packages will be installed:
    binutils binutils-common binutils-x86-64-linux-gnu build-essential cpp cpp-7 dirmngr dpkg-dev fakeroot g++ g++-7 gcc gcc-7 gcc-7-base gnupg gnupg-l10n
    gnupg-utils golang golang-1.10 golang-1.10-doc golang-1.10-go golang-1.10-race-detector-runtime golang-1.10-src golang-doc golang-go
    golang-race-detector-runtime golang-src gpg gpg-agent gpg-wks-client gpg-wks-server gpgconf gpgsm libalgorithm-diff-perl libalgorithm-diff-xs-perl
    libalgorithm-merge-perl libasan4 libasn1-8-heimdal libassuan0 libatomic1 libbinutils libc-dev-bin libc6-dev libcc1-0 libcilkrts5 libdpkg-perl libfakeroot
    libfile-fcntllock-perl libgcc-7-dev libgdbm-compat4 libgdbm5 libglib2.0-0 libglib2.0-data libgomp1 libgssapi3-heimdal libhcrypto4-heimdal
    libheimbase1-heimdal libheimntlm0-heimdal libhx509-5-heimdal libicu60 libisl19 libitm1 libkrb5-26-heimdal libksba8 libldap-2.4-2 libldap-common
    liblocale-gettext-perl liblsan0 libmpc3 libmpfr6 libmpx2 libnpth0 libperl5.26 libquadmath0 libreadline7 libroken18-heimdal libsasl2-2 libsasl2-modules
    libsasl2-modules-db libsqlite3-0 libssl1.1 libstdc++-7-dev libtsan0 libubsan0 libwind0-heimdal libxml2 linux-libc-dev make manpages manpages-dev netbase
    patch perl perl-modules-5.26 pinentry-curses pkg-config readline-common shared-mime-info xdg-user-dirs xz-utils
    0 upgraded, 100 newly installed, 0 to remove and 0 not upgraded.
    Need to get 110 MB of archives.
    After this operation, 496 MB of additional disk space will be used.
    Do you want to continue? [Y/n]
    ```

- Upgrade software to newer versions,

    ```bash
    root@abc40003dc7a:/# apt-get upgrade golang
    Reading package lists... Done
    Building dependency tree
    Reading state information... Done
    golang is already the newest version (2:1.10~4ubuntu1).
    Calculating upgrade... Done
    0 upgraded, 0 newly installed, 0 to remove and 0 not upgraded.
    ```
- Remove software that you previously installed

    ```bash
    root@abc40003dc7a:/# apt-get remove golang
    Reading package lists... Done
    Building dependency tree
    Reading state information... Done
    The following packages were automatically installed and are no longer required:
    binutils binutils-common binutils-x86-64-linux-gnu build-essential cpp cpp-7 dirmngr dpkg-dev fakeroot g++ g++-7 gcc gcc-7 gcc-7-base gnupg gnupg-l10n
    gnupg-utils golang-1.10 golang-1.10-doc golang-1.10-go golang-1.10-race-detector-runtime golang-1.10-src golang-doc golang-go golang-race-detector-runtime
    golang-src gpg gpg-agent gpg-wks-client gpg-wks-server gpgconf gpgsm libalgorithm-diff-perl libalgorithm-diff-xs-perl libalgorithm-merge-perl libasan4
    libasn1-8-heimdal libassuan0 libatomic1 libbinutils libc-dev-bin libc6-dev libcc1-0 libcilkrts5 libdpkg-perl libfakeroot libfile-fcntllock-perl
    libgcc-7-dev libgdbm-compat4 libgdbm5 libglib2.0-0 libglib2.0-data libgomp1 libgssapi3-heimdal libhcrypto4-heimdal libheimbase1-heimdal
    libheimntlm0-heimdal libhx509-5-heimdal libicu60 libisl19 libitm1 libkrb5-26-heimdal libksba8 libldap-2.4-2 libldap-common liblocale-gettext-perl liblsan0
    libmpc3 libmpfr6 libmpx2 libnpth0 libperl5.26 libquadmath0 libreadline7 libroken18-heimdal libsasl2-2 libsasl2-modules libsasl2-modules-db libsqlite3-0
    libssl1.1 libstdc++-7-dev libtsan0 libubsan0 libwind0-heimdal libxml2 linux-libc-dev make manpages manpages-dev netbase patch perl perl-modules-5.26
    pinentry-curses pkg-config readline-common shared-mime-info xdg-user-dirs xz-utils
    Use 'apt autoremove' to remove them.
    The following packages will be REMOVED:
    golang
    0 upgraded, 0 newly installed, 1 to remove and 0 not upgraded.
    After this operation, 11.3 kB disk space will be freed.
    Do you want to continue? [Y/n] Y
    (Reading database ... 21037 files and directories currently installed.)
    Removing golang (2:1.10~4ubuntu1) ... 
    ```
- Downloaded from software repositories(repos, sources, feeds)

    ```bash
    root@abc40003dc7a:/# apt-get update
    Get:1 http://archive.ubuntu.com/ubuntu bionic InRelease [242 kB]
    Get:2 http://security.ubuntu.com/ubuntu bionic-security InRelease [88.7 kB]
    Get:3 http://security.ubuntu.com/ubuntu bionic-security/multiverse amd64 Packages [24.5 kB]
    Get:4 http://archive.ubuntu.com/ubuntu bionic-updates InRelease [88.7 kB]
    ...
    Fetched 22.0 MB in 27s (810 kB/s)
    Reading package lists... Done
    ```
- Varies by Operating System & Distribution

    - MacOS: `brew install golang`, AppStore
    - Windows: PackageManagement, Chocalatey...

        {{< picture "windows-package-management.png" "windows-package-management.png" "Windows package management" >}}

    - Linux: `yum`, `apt-get`, `zypper`

        {{< picture "packages-by-distro.jpg" "packages-by-distro.jpg" "Linux package managers" >}}

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

{{< button "../../git" "Version Control with GIT" "mb-1 grid-4" >}}

