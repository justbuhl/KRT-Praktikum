% clear all;

% Simulation (0) oder Real (1)
V = 1;
%% Parameters

l_rotor = 0.1775;
l_heli = 0.655;
l_mmp = 0.010029;

I_alpha = 1.130985;
I_beta = 1.125115;
I_gamma = 0.040229;

m_mmp = 3.96;
g = 9.81;

F_g = m_mmp*g;

%% System
syms F_vorne F_hinten alpha beta gamma;

alpha_dd = (-(F_vorne+F_hinten)*l_heli*sin(gamma))/I_alpha;
beta_dd  = ((F_vorne+F_hinten)*l_heli*cos(gamma) - F_g*l_mmp*cos(beta))/I_beta;
gamma_dd = ((F_vorne-F_hinten)*l_rotor)/I_gamma;


%% Zustandslinearisierung für Regler
syms alpha alpha_d beta beta_d gamma gamma_d integrator_alpha integrator_beta integrator_alpha_d integrator_beta_d

x=[alpha;
   beta;
   gamma;
   alpha_d;
   beta_d;
   gamma_d];

u = [F_vorne;
     F_hinten];

x_d = [alpha_d; 
       beta_d;
       gamma_d;
       alpha_dd;
       beta_dd;
       gamma_dd
       ];



lin_point = [0,deg2rad(-11),deg2rad(0)];
lin_u = [0.3,0.3];

A = jacobian(x_d, x);
A_lin = subs(A, [beta,gamma,F_vorne,F_hinten],[lin_point(2:3),lin_u])
B = jacobian(x_d, u);
B_lin = subs(B,[beta,gamma,F_vorne,F_hinten],[lin_point(2:3),lin_u])

C = zeros(3,6);
C(1:3,1:3) = eye(3);
D = zeros(3, 2);


%% Reglerentwurf
A_lin = double(A_lin);
B_lin = double(B_lin);

A_lin_integrator =zeros(8);
A_lin_integrator(1:6,1:6) = A_lin;
A_lin_integrator(7:8,1:2) = -eye(2)

B_lin_integrator = zeros(8,2);
B_lin_integrator(1:6,1:2) = B_lin

C_integrator = zeros(3,8);
C_integrator(1:3,1:6) = C;

sys = ss(A_lin_integrator,B_lin_integrator,C_integrator,D);

%Q = diag([5,50,5,1e-6,1e-6,1e-6]);
%R = diag([1e-1,1e-1]);

Q = diag([50,5,1e-3,1e-3,1e-3,1e-3,1e1,1e1]); %%OK
Q = diag([50,5,1e-3,1e-3,1e-3,1e-3,1e1,1e1]);
R = diag([5,5]); %%OK

[K,S,eigenvalues] = lqr(A_lin_integrator,B_lin_integrator,Q,R)


%%

r = [deg2rad(180),deg2rad(11),deg2rad(0),0,0,0];