---
title: Paper published on Kartograf, a novel atom-mapping framework
tags: ['paper']
journal: JCTC
doi: 10.1021/acs.jctc.3c01206
layout: page
main-image: kartograf-toc.gif
teaser: >
  My colleagues and I recently published a paper on Kartograf, a novel
  atom-mapping framework for alchemical free energy calculations. We hope this
  combination of software and scientific advances will be useful for the
  computational chemistry community.

---

Alchemical free energy methods are, in my opinion, one of the coolest ideas in
computational chemistry. Basically, you transmute one molecule into another,
and that you can do this in a way that gives you scientifically valid
information about the differences between them.

However, how you transmute one molecule into another is a non-trivial problem.
That's part of what we tried to address with Kartograf. Our view was that how
the atoms were connected to each other (known as the 2D information) needed to
be combined with the actual coordinates of the atoms (known as the 3D
information). So we developed a 3D-first atom mapping algorithm.

I should be clear that my own contributions to this were not huge. I was
helpful in setting up the software framework that was used, and I had many
questions and suggestions for how we could compare our mappings to methods
that were considered the current state of the art. But the majority of the
work, both science and software development, was performed by [Ben
Ries](https://www.linkedin.com/in/benjamin-ries/).

[Benjamin Ries, Irfan Alibay, David W.H. Swenson, Hannah M. Baumann, Michael M.
Henry, James R. B. Eastwood, and Richard J. Gowers. "Kartograf: A Geometrically
Accurate Atom Mapper for Hybrid-Topology Relative Free Energy Calculations." **20**, 1862 (2024).](https://doi.org/{{ page.doi }})
