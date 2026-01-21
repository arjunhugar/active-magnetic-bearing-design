Below is the MATLAB code for analysis of control design of an AMB system:
% Defining system parameters
m = 50; % mass of the rotor (kg)
Ks = 70.81; % stiffness co-efficient (N/m)
C = 0; % damping co-efficient (Ns/m)
k_p = 10000; % proportional gain (N/m)
k_d = 100; % derivative gain (Ns/m)
omega = 104.66; % nominal angular speed (rad/s)
J = 0.01; % Moment of inertia (kg*m^2)
e = 0.001; % eccentricity (m)
m_u = 50; % unbalance mass (kg)
F_unb = m_u * e * omega^2; % Unbalance Force

% Unbalance force
F_unbalance = @(t) m_u * e * omega^2 * sin(omega * t);

% Define state-space model
A = [0 1; -Ks/m -C/m];
B = [0; 1/m];
C = [1 0];
D = [0];

% Controller (PD)
K = [k_p k_d];

% Create a state-space system for simulation
sys = ss (A-B*K, B, C, D);

% Initial conditions (displacement and velocity)
initial_displacement = -0.0015; % 1.5 mm initial displacement
initial_velocity = 0; % initial velocity
x0 = [initial_displacement; initial_velocity];

% Simulation time
t = linspace(0, 10, 1000);

% Simulate response to unbalance force with initial conditions
u = F_unbalance(t);
[y, t, x] = lsim(sys, u, t,x0);

% Plot the response
figure;
plot (t, y);
title ('Rotor Displacement Response');
xlabel('Time (s)');
ylabel('Displacement (m)');
grid on;

