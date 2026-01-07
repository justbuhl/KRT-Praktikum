clear all;

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


%% Zustandslinearisierung
syms alpha alpha_d beta beta_d gamma gamma_d

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
       gamma_dd];



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
sys = ss(A_lin,B_lin,C,D);

%Q = diag([5,50,5,1e-6,1e-6,1e-6]);
%R = diag([1e-1,1e-1]);

Q = diag([5,50,5,1e-6,1e-6,1e-6]);
R = diag([1e1,1e1]);

[K,S,eigenvalues] = lqr(A_lin,B_lin,Q,R)


%%

r = [deg2rad(180),deg2rad(11),deg2rad(0),0,0,0];