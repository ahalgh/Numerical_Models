# Numerical_Models

Several numerical modeling codes written in cpp and matlab

Numerical Rootfinding and ODE solvers

## Ostwald Ripening Model 

 [Ostwald Ripening Model](https://en.wikipedia.org/wiki/Ostwald_ripening) Written in C++ 
##### Utilizes Euler Multivariate Scheme with Newton Raphson Rootfinding to discover the steady state solutions
Ostwald Ripening is a physical phenomenon observed in solutions that governs the size of precipitating crystals in a solution. The driving force behind this process is that molecules on the interior of a crystal are more energetically favorable than those on the surface. Molecules in the bulk crystal are completely bonded, but those on the surface are missing a portion of their neighbors and are thus less energetically desirable. When applied on a macroscopic scale, larger crystal particles are more stable than smaller particles since more molecules are maintained on the interior. [A smaller particle will eventually dissolve because the system will lower its energy by diffusing surface molecules into the solution](https://link.springer.com/book/10.1007/978-3-662-04884-9).

Process is very useful in batch crystalization

The single crystal model can be described by the autonomous ODE:

![ODE](/res/ODE.jpg)

with c* being the saturation concentration as the dilution of the solution goes to infinity, Γ being the favorability of solubility in the system, and x* being the size of crystals at time 0. 
σ is the surface energy, v is the molar volume of the solute, R is the gas constant, c0 is the initial concentration, and T being temperature. In this model, c*,Γ,μ,c0,x* are all parameters that can be optimized to reach a desired crystal size at x(t).

This problem can be expanded to model a system of crystals with N sizes. All theory remains the same. The initial solute concentration becomes the preexisting concentration and the sum of the contributions from all crystals of N sizes:

![ODE Solved](/res/c1.jpg)

The coefficient μ is assumed to be identical for all crystals in the system since they exist in the same crystallizer. The total concentration of the solution over time is then assumed to be the difference between the initial concentration and the concentration from all crystals at time t:

![ODE Solved](/res/ct.jpg)

The growth rate of each respective crystal can be expressed in the same form as the single crystal ODE

![ODE Solved](/res/full.jpg)

This means that smaller crystals in the system dissolve first, reaching x(t)<sub>i</sub> = 0. The dissolution of smaller crystals propagates through the system until eventually only crystals of size x(t)<sub>N</sub> remains. Once this stage of crystallization has been reached, all contributions from crystals of size x(t)<sub>i</sub> are mitigated and the problem diverts back into an ODE modelled by the single crystal problem. Once this stage has been reached, the size of the surviving crystal is used as a parameter to determine the final steady-state solutions of the model.

### Result of Model
![ODE Solved](/res/ODE_Evolution.jpg)

Evolution of large and small crystal (x<sub>2</sub>) after initial timestep. Dotted lines are the steady state solutions to the ODE. Higher equilibrium is attractive, while lower is repulsive.

Solving this ODE in a binary case with a multivariate Euler predicts that for crystals of N sizes, the smaller crystals will be consumed by larger ones until only there is only a single crystal size. Because of the behavior of the equilibria points, one attracting x(t) while the other repelling, a solution exists for every physically possible crystal size. 

## DNA Hybridization

##### Utilizes 4th Order Runge Kutta method

DNA Hybridization behaves according to the ODE:

![DNA ODE](/res/dna.jpg)

With k<sub>on</sub> being the forward rate constant for adsorption, k<sub>off</sub> being the backwards rate constant [1/s], L<sub>im</sub> being the binding site density [sites/cm<sup>2</sup>], and C<sub>1</sub> being the mobile target molecule concentration [nM].

This type of reaction can happen in a [microfluidic device](https://en.wikipedia.org/wiki/Microfluidics) as target DNA binds to the surface. Using this ODE, an adsorption and desorption experiment can be modeled. In this case, the reaction continues until a steady state solution is reached. After, target molecules are flushed out of the system in the desorption phase.

### Result of the Model

![DNA ODE](/res/DNA_AD.png)




