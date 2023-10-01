---
categories: ['i-made-a-thing', 'ticgithub']
layout: page
title: "ticgithub: A GitHub-based email ticketing system"
teaser: >
  Our team needed an email ticket support system that fit within our workflow
  on GitHub. Unable to find an ideal commercial or open-source solution, I
  wrote my own.
---

Our team at OpenFE has reached a slightly uncomfortable point in terms of
support requests: we're not big enough to dedicate someone to managing incoming
support requests, but we're getting enough support requests that we need some
sort of system to track them.

The obvious solution here is to go to one of the commercial solutions for this
purpose. However, most of those solutions seemed relatively expensive for our
needs. We did have a meeting with one service that seemed affordable, but it
was highly tied to a workflow using Google Chrome as the browser and Gmail as
your primary email tool. Although our support email address uses Gmail, not all
of our team does, nor does everyone use Chrome.

I realized that, for about the same cost (in my work hours) as a couple years
of that tool, I could probably write something that would work for our needs,
and would be better integrated into our existing workflows. In particular, I
could create something that would enable us to use notification and assignment
mechanisms that were a part of GitHub to handle email tickets, which are the
same tools we already use to organize our software development process.

The resulting project is called
[`ticgithub`](https://github.com/dwhswenson/ticgithub) (hoping that I don't get
[sued](https://tickethub.co)! The idea is that you will create a (possibly
private) GitHub repository where issues will track your email tickets. It
provides highly customizable workflows to manage the following tasks for you:

* When an email arrives at the team Gmail account, it creates a GitHub issue to
  track that email.
* When an issue on GitHub is assigned to a particular teammate, a custom label
  will be applied in the Gmail inbox to indicate that the task has been assigned
  to someone.
* If an issue sits without assignment for a set time, a bot will prod everyone
  as a reminder to assign the issue (via a comment on the GitHub issue tracking
  the ticket)
* If an issue has been assigned but not closed for a set time, a bot can prod
  the assignee (or others) to reply to the unanswered ticket.

For a team that operates with a response time on the order of a day, with
support responsibilities as part of the developer duties, this tool allows you
to integrate email ticket support into a GitHub-focused workflow. I think it
will work for us; I hope others will try it too! For more details, see the main
[ticgithub repository website](https://github.com/dwhswenson/ticgithub),
especially its README file.
