---
categories: ['research', 'ops']
tags: ['paper']
journal: JCTC
doi: ['10.1021/acs.jctc.8b00626', '10.1021/acs.jctc.8b00627']
layout: page
title: Articles about OpenPathSampling published
teaser: >
  The two papers introducing OpenPathSampling, the software I've been
  developing for several years, have been published in the Journal of Chemical
  Theory and Computation.
---

Path sampling methods are powerful tools for studying rare events. However,
they were not as widely-used as they might be, in part because there was no
standard software for path sampling.

My colleagues and I wrote OpenPathSampling (OPS), a Python package for path
sampling simulations, as well as other trajectory-based approaches to rare
events. This was a major undertaking, and in the process, we developed a new
formalism to describe the path ensembles used in these methods.

As a result, we wrote two papers describing the code. The first is for general
users, and explains how to use our package to do common path sampling tasks.
The second is aimed more at methods developers, and explains our new formalism
and shows how to use it, and other parts of OPS, to quickly and easily develop
new methods.

Both have now been officially published in Journal of Chemical Theory and
Computation. The publication of these articles was also the subject of [a
news item](https://www.e-cam2020.eu/two-papers-introducing-openpathsampling/)
on the E-CAM Centre of Excellence's website.

[David W. H. Swenson, Jan-Hendrik Prinz, Frank Noe, John D. Chodera, and Peter
G. Bolhuis, "OpenPathSampling: A Python Framework for Path Sampling
Simulations. 1. Basics" J. Chem. Theory Comput. **15**, 813
(2019).](http://doi.org/{{ page.doi[0] }})

[David W. H. Swenson, Jan-Hendrik Prinz, Frank Noe, John D. Chodera, and Peter
G. Bolhuis, "OpenPathSampling: A Python Framework for Path Sampling
Simulations. 2. Building and Customizing Path Ensembles and Sample Schemes" J.
Chem. Theory Comput. **15**, 837 (2019).](http://doi.org/{{ page.doi[1] }})
