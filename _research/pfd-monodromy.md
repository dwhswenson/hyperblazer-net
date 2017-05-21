---
title: Precision finite difference monodromy matrix
category: pdf-monodromy
layout: project
---

The [semiclassical initial value representation (SC-IVR)](/research/scivr)
captures quantum dynamical effects by running many classical trajectories.
However the most accurate versions of the SC-IVR require propagating
additional information, called the "monodromy matrix," which is the most
expensive part of the simulation. I developed a new approach to calculate
the monodromy matrix that was both efficient and general.

<!-- -->

The most efficient approaches to calculate the monodromy matrix require
specialized calculations in the underlying dynamics, which often aren't
directly available without significant programming effort. Approaches that
don't require this are more general. My method, the "precision finite
difference (PFD) monodromy matrix", is general and is more efficient than
previously existing general approaches. 
