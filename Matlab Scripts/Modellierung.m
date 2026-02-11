%%Modellierung des Heli
% Massen in g
m_ha = 377; % Masse Hauptarm
m_na = 138; % Masse Nebenarm
m_gw = 1918;
m_ma = 70; % Masse Magnet
m_gb2 = 106; % Masse Gelenkblock 2

syms alpha beta gamma;

%% Vektor: I_c -> I_1
x_Ic_I1 = 100; % Inertialsystem muss fest sein (100 cm unter aufhängepunkt)
y_Ic_I1 = 0;
z_Ic_I1 = 0;
Ic_I1 = [x_Ic_I1, y_Ic_I1, z_Ic_I1]';

%% Vektor: I_1 -> I_2
x_I1_I2 = -51.5;
y_I1_I2 = 0;
z_I1_I2 = 0;
I1_I2 = [x_I1_I2, y_I1_I2, z_I1_I2]';

%% Vektor: I_2 -> I_3
x_I2_I3 = -19/2 -28;
y_I2_I3 = 0;
z_I2_I3 = 655;
I2_I3 = [x_I2_I3, y_I2_I3, z_I2_I3]';

%% Drehmatrizen:
T_c_1 = [1      0           0;
        0 cos(alpha) -sin(alpha);
        0 sin(alpha) cos(alpha)];

T_1_2 = [cos(beta)  0   sin(beta);
        0           1       0;
        -sin(beta)  0   cos(beta)];

T_2_3 = [cos(gamma) -sin(gamma) 0;
        sin(gamma) cos(gamma)   0;
            0           0       1];

%% Helikopter - Arm:
% KOS Ursprung im gelenk, x nach recht, y nach oben, z aus ebene
% Hauptarm Massenmittelpunkt:
z_ha = -210;
x_ha = 0;
y_ha = 0;
ha = [x_ha, y_ha, z_ha]';

% Nebenarm Massenmittelpunkt:
teta = deg2rad(16);
z_na = 228.5+cos(teta)*135.5;
x_na = sin(teta) * 135.5; % Berechnung der y-Koordinate des Nebenarms
y_na = 0; % z-Koordinate des Nebenarms bleibt gleich
na = [x_na, y_na, z_na]';

% Gegengewicht Massenmittelpunkt:
z_gw = 228.5+cos(teta)*262;
x_gw = sin(teta)*262;
y_gw = 0; % z-Koordinate des Gegengewichts bleibt gleich
gw = [x_gw, y_gw, z_gw]';

% Magnet mit Stange:
z_ma = -655+152-cos(deg2rad(60))*62;
x_ma = -9.5-sin(deg2rad(60))*62;
y_ma = 0;
ma = [x_ma, y_ma, z_ma]';

% Gelenkblock 2 Massenmittelpunkt:
z_gb2 = -655;
x_gb2 = -42-19-28;
y_gb2 = 0;
gb2 = [x_gb2, y_gb2, z_gb2]';

% Berechnung der Gesamtmasse Hauptarm:
totalMassPointHa = m_ha + m_gb2 + m_ma;

% Massenmittelpunkt Hauptarm
z_cm_ha = (m_ha * z_ha + m_gb2 * z_gb2 + m_ma * z_ma) / totalMassPointHa;
x_cm_ha = (m_ha * x_ha + m_gb2 * x_gb2 + m_ma * x_ma) / totalMassPointHa;
y_cm_ha = (m_ha * y_ha + m_gb2 * y_gb2 + m_ma * y_ma) / totalMassPointHa;
cm_ha = [x_cm_ha, y_cm_ha, z_cm_ha]';

% Massenmittelpunkt Nebenarm
totalMassPointNa = m_na + m_gw; % Berechnung der Gesamtmasse Nebenarm
z_cm_na = (m_na * z_na + m_gw * z_gw) / totalMassPointNa; % Massenmittelpunkt Nebenarm
x_cm_na = (m_na * x_na + m_gw * x_gw) / totalMassPointNa;
y_cm_na = (m_na * y_na + m_gw * y_gw) / totalMassPointNa;
cm_na = [x_cm_na, y_cm_na, z_cm_na]';

% Ausgabe der Massenmittelpunkte
fprintf('Massenmittelpunkt Hauptarm: (%.2f, %.2f, %.2f)\n', x_cm_ha, y_cm_ha, z_cm_ha);
fprintf('Massenmittelpunkt Nebenarm: (%.2f, %.2f, %.2f)\n', x_cm_na, y_cm_na, z_cm_na);


%% Helikopter - Antrieb
% KOS: x zur mitte, z nach oben, y so, dass rechtssystem

% Einseitig berechen, für 2. punkt gespiegelt.
% Massen in g
m_rot = 200;
m_mo = 287;
m_bar = 322/2;

totalMassPointMoRot = m_rot + m_mo;

% Motor 1 Massenmittelpunkt:
z_mo = 0;
x_mo = 177.5;
y_mo = -41+69/2;

% Rotorgehäuse 1 Massenmittelpunkt:
z_rot = 0;
x_rot = 177.5;
y_rot = -41+69+27/2;

x_cm_mo_rot = (m_mo * x_mo + m_rot * x_rot) / totalMassPointMoRot;
y_cm_mo_rot = (m_mo * y_mo + m_rot * y_rot) / totalMassPointMoRot;
z_cm_mo_rot = (m_mo * z_mo + m_rot * z_rot) / totalMassPointMoRot;
cm_mo_rot_1 = [x_cm_mo_rot, y_cm_mo_rot, z_cm_mo_rot];

% Motor 2 Massenmittelpunkt:
z_mo2 = 0;
x_mo2 = -177.5;
y_mo2 = -41+69/2;

% Rotorgehäuse 2 Massenmittelpunkt:
z_rot2 = 0;
x_rot2 = -177.5;
y_rot2 = -41+69+27/2;

x_cm_mo_rot2 = (m_mo * x_mo2 + m_rot * x_rot2) / totalMassPointMoRot;
y_cm_mo_rot2 = (m_mo * y_mo2 + m_rot * y_rot2) / totalMassPointMoRot;
z_cm_mo_rot2 = (m_mo * z_mo2 + m_rot * z_rot2) / totalMassPointMoRot;
cm_mo_rot_2 = [x_cm_mo_rot2, y_cm_mo_rot2, z_cm_mo_rot2];

fprintf('Massenmittelpunkt Mo+rot 1: (%.2f, %.2f, %.2f)\n', x_cm_mo_rot, y_cm_mo_rot, z_cm_mo_rot);
fprintf('Massenmittelpunkt Mo+rot 2: (%.2f, %.2f, %.2f)\n', x_cm_mo_rot2, y_cm_mo_rot2, z_cm_mo_rot2);

% Bar Massenmittelpunkt;
z_bar = 0;
x_bar = 0;
y_bar = -41-3;
cm_bar = [x_bar, y_bar, z_bar];

fprintf('Massenmittelpunkt Bar: (%.2f, %.2f, %.2f)\n', x_bar, y_bar, z_bar);

%% Berechnung Drallsatz
g = 9.81;

% Massenmittelpunkt:    Massen:         
% cm_ha                 totalMassPointHa   
% cm_na                 totalMassPointNa
% cm_bar                m_bar
% cm_mo_rot_1           totalMassPointMoRot
% cm_mo_rot_2           totalMassPointMoRot



F_grav = (-cm_ha(3) * totalMassPointHa - I2_I3(3) * (totalMassPointMoRot*2 + m_bar) + cm_na(3) * totalMassPointNa)*g*cos(beta);
 



%% Berechnung Massenmittelpunkte im Inertialsystem (Wird nicht benutzt)
% Bar
%bar = Ic_I1 + T_c_1 * (I1_I2 + T_1_2 * (I2_I3 + T_2_3 * r_test'));




