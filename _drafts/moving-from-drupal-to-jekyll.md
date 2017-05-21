---
categories: ['dwhs']
layout: page
teaser: >
    Every decade or so, it's time to refresh a website's design. Here's the
    new HyperBlazer.net.
title: "The Great Site Redesign of 2017: Moving to Jekyll"
---

Here it is: the new hyperblazer.net. Preparing it has involved a complete
redesign of the site, including completely scrapping the old
[Drupal](http://drupal.org) site in favor of [Jekyll](http://jekyllrb.com).

Why did I do this? Well, for one thing, I suppose you should probably give
your website a redesign about once a decade, whether it needs it or not. And
nearly a decade (9 years, 40 weeks) after I launched the Drupal version of
my old static site, it *did* need the redesign.

This isn't only a matter of the needing a visual update.  In 2017, Google
Chrome [started marking pages that allow password input over `http` as "Not
Secure"][google_msg]. While I completely understand where they're coming
from, my own site only had a password field so that *I* could log in and use
it. And my hosting provider, [BlueHost](http://bluehost.com), does not make
it easy (at least, not cheap) to get the SSL certificates necessary to serve
my site securely. So I starting considering moving to a static site
platform, such as Jekyll, which wouldn't need the on-site password field.

[google_msg]: https://security.googleblog.com/2016/09/moving-towards-more-secure-web.html

Moving to a static site has several advantages. First off, simplicity. My
site is primarily static, and so making it simpler just makes sense.
Historically, I update it a few times a year; I don't need databases that
can handle multiple concurrent edits.  Back in 2007 I switched to a CMS
mainly because I wanted to have an easier way to style and template pages,
and to have access to the active community contributions that Drupal had.
Drupal was particularly appealing to me because it seemed much more flexible
than, say, WordPress, so I knew I would have room to grow.

But you know what? I've got a job, and things to get done. My website is not
my priority; it's barely even a hobby. I wasn't going to grow enough to need
Drupal's more advanced features, and it was harder do what I would want with
Drupal than it was with straight HTML.

Second, there's security. Google is prioritizing secure traffic as a way to
protect users, which is good. But my concern is with the spam that was
getting into my site. I left open the ability for potential users to
register with my site. Since users can write their own bios, I soon had
hundreds of link-farm spam bios. When I closed that off by requiring admin
approval for new users, I had thousands of spam requests to join my site.

"I say we take off and nuke the entire site from orbit. It's the only way to
be sure."

In addition, this is just a cleaner development environment for me. I write
posts in Vim (just like I write *everything* from code to papers.) I can use
GitHub and all the GitHub branch/merge workflows I use for software
development. ???

Finally, this redesign has been a chance to consider what I've learned over
the last 10 years about what my website is good for, and what I can
realistically do with it. When I started this site, I had very little sense
of how a scientific career develops. I knew I wanted to do science, but I
had no idea how to make a website that would describe the work I've done in
a way that is at all approachable. I've tried to do that with this site.

-----

Unfortunately, the core problem that got me started on this, Google prefers
`https://` connections, still isn't solved. This trend is going to continue,
and is, overall, a good one. However, Bluehost does not seem to have a
reasonable solution for it.

Current approach:

* site on GitHub
* script on server builds and deploys the site
* that script is triggered by an SSH key

This gives me a pull-based solution: the website server actually pulls the
data from GitHub. 

The next stage is future-proofing by preparing to move away from BlueHost.
Right now, I use BlueHost for the following:

* website
* email (including hosting my archives in IMAP)
* a few git and svn repositories (less used now)

I also have an old, now unused, `unison` server on there.

Now that the website is based on Jekyll, it is easily transferred anywhere.
The code repositories could either be opened and put on GitHub, or there are
ways to
