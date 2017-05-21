---
title: What is path sampling?
layout: page
---

One of the fundamental challenges in simulation is that there is frequently
a separation of timescales. For example, in many molecular systems, a
transition of interest may happen, on average, once a millisecond. However,
the timestep needed to simulate accurately with atomistic resolution is on
the order of a femtosecond. This means that $10^{12}$ time steps are needed
to see the event occur once. For typical systems we might be interested in,
with the powerful computers we now have, we get up to 100 ns/day. That means
we would have to wait about 30 years to see the event once. And one
trajectory is just an anecdote: to draw any scientific conclusions, we need
many trajectories!

Path sampling approaches provide a way to extend the timescale accessible to
simulation. The basic idea is that most of the simulation time is spent
inside a stable state, not in the transition region between two stable
states. Path sampling takes paths in the transition region and perturbs them
to create more paths. In this way, we end up with many transition paths at a
tiny fraction of the cost that getting a single transition would normally
take.

<!-- add video -->



