## Guide

This guide covers the necessary bits. As the project evolves, it will become more comprehensive

## Setup & Usage

- After cloning, initialize and update the themes submodule (`git submodule update --init`)
- Install go 1.16+ (https://golang.org/doc/install)
- Install hugo on your computer (`go install github.com/gohugoio/hugo@v0.81.0`)

### Process for Adding Content

Markdown files in the `content` folder will be built into the site except for `content/docs/past_content_hidden/*` which is ignored.

To add material for a session:

- **move** the relevant page from the `past_content_hidden` into the appropriate `content/docs/*` subcategory
  - moving rather than copy/pasting allows the pages to be hidden and still have useful git history
- make any changes desired (i.e. update the dates, add or change exercises, make corrections)
- test your changes on a local development server with `make server`
- before pushing to github build the site with `make build`

## Troubleshooting

1. `failed to extract shortcode: template for shortcode "block" not found` when building site or running the server
   - Run `make update-submodules`
