%%Modellierung des Heli
% Massen in g
m_ha = 377; % Masse Hauptarm
m_na = 138; % Masse Nebenarm
m_gw = 1918;
m_ma = 70; % Masse Magnet
m_gb2 = 106; % Masse Gelenkblock 2

%% Helikopter - Arm:
% KOS Ursprung im gelenk, x nach recht, y nach oben, z aus ebene
% Hauptarm Massenmittelpunkt:

x_ha = -210;
y_ha = -51.5;
z_ha = 0;

% Nebenarm Massenmittelpunkt:
teta = deg2rad(16);
x_na = 228.5+cos(teta)*135.5;
y_na = -51.5 + sin(teta) * 135.5; % Berechnung der y-Koordinate des Nebenarms
z_na = 0; % z-Koordinate des Nebenarms bleibt gleich

% Gegengewicht Massenmittelpunkt:
x_gw = 228.5+cos(teta)*262;
y_gw = -51.5 + sin(teta)*262;
z_gw = 0; % z-Koordinate des Gegengewichts bleibt gleich

% Magnet mit Stange:
x_ma = -655+152-cos(deg2rad(60))*62;
y_ma = -51.5-9.5-sin(deg2rad(60))*62;
z_ma = 0;

% Gelenkblock 2 Massenmittelpunkt:
x_gb2 = -655;
y_gb2 = -42-19-28;
z_gb2 = 0;

% Berechnung der Gesamtmasse Hauptarm:
totalMassPointHa = m_ha + m_gb2+m_ma;
% Massenmittelpunkt Hauptarm
x_cm_ha = (m_ha * x_ha + m_gb2 * x_gb2 + m_ma * x_ma) / totalMassPointHa;
y_cm_ha = (m_ha * y_ha + m_gb2 * y_gb2 + m_ma * y_ma) / totalMassPointHa;
z_cm_ha = (m_ha * z_ha + m_gb2 * z_gb2 + m_ma * z_ma) / totalMassPointHa;

% Massenmittelpunkt Nebenarm
totalMassPointNa = m_na + m_gw; % Berechnung der Gesamtmasse Nebenarm
x_cm_na = (m_na * x_na + m_gw * x_gw) / totalMassPointNa; % Massenmittelpunkt Nebenarm
y_cm_na = (m_na * y_na + m_gw * y_gw) / totalMassPointNa;
z_cm_na = (m_na * z_na + m_gw * z_gw) / totalMassPointNa;

% Ausgabe der Massenmittelpunkte
fprintf('Massenmittelpunkt Hauptarm: (%.2f, %.2f, %.2f)\n', x_cm_ha, y_cm_ha, z_cm_ha);
fprintf('Massenmittelpunkt Nebenarm: (%.2f, %.2f, %.2f)\n', x_cm_na, y_cm_na, z_cm_na);


%% Helikopter - Antrieb
% KOS: x zur mitte, z nach oben, y so, dass rechtssystem

% Einseitig berechen, für 2. bunkt gespiegelt.
% Massen in g
m_rot = 200;
m_mo = 287;
m_bar = 322/2;

% Motor Massenmittelpunkt:
x_mo = 0;
y_mo = 177.5;
z_mo = -41+69/2;

% Rotorgehäuse Massenmittelpunkt:
x_rot = 0;
y_rot = 177.5;
z_rot = -41+69+27/2;

% Bar Massenmittelpunkt;
x_bar = 0;
y_bar = 247.5;
z_bar = -41-3;




