---
categories: ['blog', 'i-made-a-thing']
layout: page
title: "ghcontribs: A tool for looking at user contributions to GitHub"
teaser: >
  I wanted to get a better sense of what contributions I've made to various
  open-source projects, so I wrote a library to query GitHub and analyze the
  results.
---

As I've been preparing to get a "real job," I realized that one of my selling
points -- especially to organizations that focus on open source development --
is that I have a decent bit of experience in the open source community,
particularly around computational chemistry.

But although I tend to remember the highlights of my contributions, especially
contributions to big projects (millions of downloads per month), I was curious
what the actual statistics on my contributions looked like.

So I wrote a little tool,
[`ghcontribs`](https://github.com/dwhswenson/ghcontribs), that would help me
look at that. In the end, there are some other tools that might be more useful
for some users, in particular
[show-me](https://github.com/TomasTomecek/show-me). I think my tool does a
little more to facilitate a deep-dive into a user's contributions, especially
if you're working from an interactive environment like a Jupyter notebook.

From a software development standpoint this project has two kind of interesting
aspects. The first is that it gave me an excuse to start to learn the GitHub v4
GraphQL API. The GraphQL API is, for many reasons, an improvement on the older
v3 REST API. However, it doesn't lend itself to writing a library as easily as
the older API does, so one tends to need to write custom code to meet the goals
of a given tool.

The second interesting software development idea I played with here has to do
with Python's `Enum` class, and how it differs from an `enum` in C. For the
Python `Enum`, the values can be any object, which means that we can carry
additional information (or methods) in the values of that `Enum`, unlike the C
`enum` which must take integer values. This allows some simplified design
choices that I tried experimenting with in this package: for example, the
specific URL for an issue/pull request (PR) in GitHub can be determined based
on the `Enum` value identifying whether a contribution was an issue or a PR.

In any case, this tool is a bit of a one-off to scratch an itch. It has enough
of a test suite that it should be maintainable, if there is interest, but I
don't expect to be adding significant new features in the future. It has been
released on PyPI, so you can install it with `python -m pip install
ghcontribs`.
