---
categories: ['research']
tags: ['paper']
journal: Nature Methods
doi: ['10.1038/s41592-019-0506-8']
layout: page
title: PLUMED Consortium article published
main-image: https://www.plumed-nest.org/nest.png
teaser: >
  I'm honored to be a co-author of a paper by the PLUMED consortium, focused on
  how to promote transparency and reproducibility in our subdomain of enhanced
  molecular simulations. Here are my thoughts on the paper.
---

![{{ page.main-image-alt }}]({{ page.main-image }}){: .right-image}

This paper introduces the PLUMED consortium, an organization focused on helping
researchers (particularly in the field of rare events/enhanced sampling) to better communicate the protocols used in their simulations, with the aims of making research more reproducible and also easier it easier to adapt those protocols to new projects.
It also introduces [PLUMED-NEST](https://www.plumed-nest.org), a tool to
accomplish those goals for users in the community of the
[PLUMED](https:/www.plumed.org) software package.

When it was founded, the PLUMED consortium consisted of 74 members from 51
institutions in 16 countries. I am honored to be one of the founding members of
the PLUMED consortium, and as such, am a formal author on this paper.

In principle, repeatability and reproducibility of results in computational science should be trivial.
But in practice, this doesn't happen.
Advanced programs, like PLUMED, include domain-specific scripting languages to provide their users with a great deal of flexibility.
But users do not publish (and journals do not demand) the scripts that the users develop to perform their science.

Most scientists would be happy to provide such scripts; the problem is a lack of a forum in which to include them.
PLUMED-NEST creates that forum for the PLUMED package.
It is a clever tool that also includes such features as identifying which versions of PLUMED a given script is compatible with.
This is a wonderful contribution to science, and was one of the things reported in this paper.

That said, while I fully agree with and support the goals of the PLUMED developers for PLUMED-NEST, I had absolutely nothing to do with the development PLUMED-NEST.
So why is my name on the paper?
Another focus of the paper is on PLUMED's role as a hub that interacts with many other codes in the molecular dynamics community.
One of those codes is my own OpenPathSampling (OPS).
We also see OPS as a hub that integrates with other projects, and PLUMED is one of them.
So my role on the paper is more as a developer of work adjacent to and interacting with PLUMED.

That said, I take it as a great compliment to OPS that the PLUMED developers value the OPS/PLUMED integration highly enough that they invited me to be a member of the PLUMED consortium.

[The PLUMED consortium. "Promoting transparency and reproducibility in enhanced
molecular simulations." Nature Methods, **16**, 670
(2019).](https://doi.org/10.1038/s41592-019-0506-8)]
