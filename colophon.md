---
title: Colophon
layout: page
---

## Overview

This site uses:

* [Jekyll][]: a lightweight content management system for static sites
* A [heavily-customized version](#custom-theme) of the [Feeling
  Responsive][] Jekyll theme
* [fancyBox3][] for lightboxes (PDFs and images)
* ?? Fonts ??
* ?? slides ??
* [Vimeo][] to host videos (mostly of talks)
<!-- 
consider Copse for headlines, and something Helvetica/Eurostile-ish for body
-->

[Jekyll]: http://jekyllrb.com
[Feeling Responsive]: http://phlow.github.io/feeling-responsive/
[fancyBox3]: http://fancyapps.com/fancybox/3/
[Vimeo]: http://vimeo.com

## Workflow

The source for the site is hosted on [GitHub][]. The development workflow
involves branches per post, followed by a pull request on GitHub. Once
merged, I manually initiate a pull and build on my remote server (hosted by
[BlueHost][]) using an ssh key that launches that command.

This workflow means that my in-progress posts can be public (allowing others
to comment on them), which I like. It is also designed to maximize security.
Even if you have the ssh key for my website, the only thing you could do
would be to force deployment of the master branch of the GitHub repository.

[GitHub]: http://github.com/dswenson/hyperblazer-net/
[BlueHost]: http://bluehost.com

## <a name="custom-theme"></a>Theme customizations

While I have made many, many minor modifications to [Phlow's][] [Feeling
Responsive][] theme, here are the main ones:

[Phlow's]: https://github.com/Phlow

**Category, tags, and project layout**

Note: This assumes you're familiar with Jekyll nomenclature.

I'm using metadata in the yaml frontmatter for `tags` and `categories`. The
`categories` group describes what project(s) a post belongs to. Each project
has its own page, and uses a special `_project.html` layout file.

The `_project.html` layout provides a few useful features:

* Separates the posts into excerpt and full text, and includes a "show
  more/show less" to toggle showing just the excertp (with help from custom
  CSS in `_sass/_dwhs_extra.scss` and custom JavaScript in
  `assets/js/dwhs_extra.js`). It is also smart enough to know not to show
  the "show more/less" line if there's no additional text to show.
* Searches for all posts in the project category and add a list of talks,
  posters, and papers related to the project at the end of the page

I won't bother going into code-level detail about how the `_project.html`
layout file works, since you can see it for yourself in the GitHub
repository.

**Shrinking logo size**

**Color scheme**

I wanted to keep the 

**Others**

As listed above, I've made different font selection from the original.
