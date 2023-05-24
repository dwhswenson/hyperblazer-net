---
title: Talk at Electronic Structure Software Development meeting
categories: ['ops', 'openfe']
tags: ['talk']
layout: page
teaser: >
  I presented a talk about campaign-scale simulations at a conference in
  Lausanne, combining my experiences with OpenPathSampling and Open Free
  Energy.
---

I was invited to give a talk at a CECAM workshop on "Electronic Structure
Software Development: Best Practices and Tools," held in Lausanne, Switzerland.
Although my personal software development experience hasn't focused on
electronic structure, the organizers were interested in getting perspectives
from experienced scientific software developers from other areas of
computational chemistry.

I wanted to bring some ideas that were generally relevant to programming, and
specifically relevant to best practices, so I combined my experience with
OpenPathSampling and with Open Free Energy and talked about what I refer to as
"campaign-scale" software: that is, software that involves coordinating many
individual simulations into one larger calculation. Both OpenPathSampling and
Open Free Energy are examples of this, where many individual molecules dynamics
trajectories are combined to obtain the scientific result.

{% include slides aspectRatio="16x9"
           content="/assets/talks/2022/20221011ESLLausanne" %}
