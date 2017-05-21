---
<!--category: multistate-->
category: mistis
layout: project
title: Multiple Interface Set TIS
---

Multiple interface set transition interface sampling (MISTIS) is an approach
that I developed for studying systems with many stable states. In such
systems, a single initial state can, in theory, have transitions to all the
other states. And it is unlikely that a single order parameter will be a
good guess of the reaction coordinate for all transitions. MISTIS allows us
to use multiple order parameters, while still being more efficient than
independent simulations.

<!-- more -->

MISTIS allows multiple order parameters for each initial state. It retains
the efficiency advantages that come with replica exchange TIS, even allowing
replica exchange between different interface sets. It also has the
additional advantage that specific transitions of interest can be focused on
(instead of requiring all $N(N-1)$ transitions that are possible for $N$
states).


