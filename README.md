# Numerical_Models

Several numerical modeling codes written in cpp and matlab

Numerical Rootfinding and ODE solvers

## Ostwald Ripening Model

[Ostwald Ripening Model](https://en.wikipedia.org/wiki/Ostwald_ripening) Written in C++ 

Ostwald Ripening is a physical phenomenon observed in solutions that governs the size of precipitating crystals in a solution. The driving force behind this process is that molecules on the interior of a crystal are more energetically favorable than those on the surface. Molecules in the bulk crystal are completely bonded, but those on the surface are missing a portion of their neighbors and are thus less energetically desirable. When applied on a macroscopic scale, larger crystal particles are more stable than smaller particles since more molecules are maintained on the interior. [A smaller particle will eventually dissolve because the system will lower its energy by diffusing surface molecules into the solution](https://link.springer.com/book/10.1007/978-3-662-04884-9).

Process is very useful in batch crystalization

This model can be described by the autonomous ODE:

![ODE](/res/ODE.jpg)

with c* being the saturation concentration as the dilution of the solution goes to infinity, Γ being the favorability of solubility in the system, and x* being the size of crystals at time 0. 
σ is the surface energy, v is the molar volume of the solute, R is the gas constant, c0 is the initial concentration, and T being temperature. In this model, c*,Γ,μ,c0,x* are all parameters that can be optimized to reach a desired crystal size at x(t).

Solving this ODE in a binary case with a multivariate Euler predicts that for crystals of N sizes, the smaller crystals will be consumed by larger ones until only there is only a single crystal size. Because of the behavior of the equilibria points, one attracting x(t) while the other repelling, a solution exists for every physically possible crystal size. 

### Result of Model
![ODE Solved](/res/ODE_Evolution.jpg)

Evolution of large and small crystal (x<sub>2</sub>) after initial timestep. Dotted lines are the steady state solutions to the ODE. Higher equilibrium is attractive, while lower is repulsive.


