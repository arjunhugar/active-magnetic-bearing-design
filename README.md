# active-magnetic-bearing-design
Design and control of an active magnetic bearing (AMB) for rotor stabilization using analytical modeling and MATLAB simulation
# Active Magnetic Bearing Design and Control

## Overview
This project presents the analytical design and control of an Active Magnetic Bearing (AMB) system for stabilizing a rotating rotor without mechanical contact. The system was designed to support a 50 kg rotor under gravitational and unbalance forces using electromagnetic actuation.

## Objectives
- Design an 8-pole active magnetic bearing
- Compute bearing geometry and electromagnetic parameters
- Model force–current–airgap relationships
- Design a PD controller for rotor stabilization
- Validate performance using MATLAB simulation

## System Specifications
- Rotor mass: 50 kg
- Air gap: 1.5 mm
- Number of poles: 8
- Turns per coil: 200
- Base current: 3.43 A
- Peak current (unbalance): 5.01 A

## Key Design Results
- Inner diameter: 43 mm
- Outer diameter: 143 mm
- Pole width: 16.9 mm
- Bearing length: 20 mm

## Control Design
A PD controller was designed using a state-space model of the rotor–bearing system. Unbalance forces due to rotor eccentricity were included in the simulation.

## Tools Used
- MATLAB (control & simulation)
- Electromagnetic force modeling
- Analytical mechanical calculations

## Results
The controller successfully stabilizes the rotor under gravitational and centrifugal unbalance forces. Rotor displacement is reduced and system stability is maintained.

## My Contribution
- Electromagnetic force modeling
- Current and stiffness calculations
- Control system modeling
- MATLAB simulation and result analysis
