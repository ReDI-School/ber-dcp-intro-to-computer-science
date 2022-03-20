## Guide

This guide covers the necessary bits. As the project evolves, it will become more comprehensive

## Setup & Usage

- After cloning, initialize and update the themes submodule (`git submodule update --init`)
- Install go 1.16+ (https://golang.org/doc/install)
- Install hugo on your computer (`go install github.com/gohugoio/hugo@v0.81.0`)

### Process for Adding Content

Markdown files in the `content` folder will be built into the site except for `content/docs/past_content_hidden/*` which is ignored.

To add material for a session:

- copy or move the relevant page from the `past_content_hidden` into the appropriate `content/docs/*` subcategory
  - moving rather than copy/pasting allows the pages to be hidden and still have useful git history
  - copying may be preferred when restructuring large parts of the course (i.e. merging two old lessons, writing your own material); ideally add comments to the top of the doc explaining if so
- make any changes desired (i.e. update the dates, add or change exercises, make corrections)
- add any necessary tables or content to the `References & Cheat Sheets` section (i.e. new glossaries, tables, references that would be nice to have in one place for quick reference)
  - (Optional but recommended:) using the VSCode Markdown All in One extension to automatically generate and update the Table of Contents
- test your changes on a local development server with `make server`
- before pushing to github build the site with `make build`

## Troubleshooting

1. `failed to extract shortcode: template for shortcode "block" not found` when building site or running the server
   - Run `make update-submodules`
