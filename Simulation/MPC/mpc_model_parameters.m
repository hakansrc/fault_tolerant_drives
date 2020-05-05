clear
clc
%% Simulation parameters
Sampling_time = 1e-6;
ref_frequency = 100*pi;
Tfinal = 2; %seconds
%% PMSM parameters
MotorSpeed = 600; % rpm
PolePairs = 10;
EfRated = 80; % Volts
Ls = 3.51e-3; % Henries
Rs = 321e-3; % Ohms
VoltageConstant = EfRated*sqrt(6)/MotorSpeed*1e3;% Vll-peak/krpm
Inertia = 1e-2; % kgm^2
ViscousFriction = 1e-3; % Nms

Module1Phase_A_600RPM_Vrms = 79.3;
Module1Phase_B_600RPM_Vrms = 79.3;
Module1Phase_C_600RPM_Vrms = 79.8;

Module2Phase_A_600RPM_Vrms = 79.5;
Module2Phase_B_600RPM_Vrms = 79;
Module2Phase_C_600RPM_Vrms = 80.6;

Module3Phase_A_600RPM_Vrms = 81.1;
Module3Phase_B_600RPM_Vrms = 81.6;
Module3Phase_C_600RPM_Vrms = 81.8;

Module4Phase_A_600RPM_Vrms = 81.9;
Module4Phase_B_600RPM_Vrms = 80.0;
Module4Phase_C_600RPM_Vrms = 80.1;

MeanInducedVoltagePeak = (sqrt(2)/12)*(Module1Phase_A_600RPM_Vrms+Module1Phase_B_600RPM_Vrms+Module1Phase_C_600RPM_Vrms+...
    Module2Phase_A_600RPM_Vrms+Module2Phase_B_600RPM_Vrms+Module2Phase_C_600RPM_Vrms+...
    Module3Phase_A_600RPM_Vrms+Module3Phase_B_600RPM_Vrms+Module3Phase_C_600RPM_Vrms+...
    Module4Phase_A_600RPM_Vrms+Module4Phase_B_600RPM_Vrms+Module4Phase_C_600RPM_Vrms);
FluxPM = MeanInducedVoltagePeak/(2*pi*100);

Module1Phase_A_Lq = 3.72;
Module1Phase_B_Lq = 3.68;
Module1Phase_C_Lq = 3.56;
Module2Phase_A_Lq = 3.51;
Module2Phase_B_Lq = 3.43;
Module2Phase_C_Lq = 3.62;
Module3Phase_A_Lq = 3.55;
Module3Phase_B_Lq = 3.67;
Module3Phase_C_Lq = 3.68;
Module4Phase_A_Lq = 3.58;
Module4Phase_B_Lq = 3.64;
Module4Phase_C_Lq = 3.62;
MeanLq = (1/12)*(Module1Phase_A_Lq+Module1Phase_B_Lq+Module1Phase_C_Lq+...
    Module2Phase_A_Lq+Module2Phase_B_Lq+Module2Phase_C_Lq+...
    Module3Phase_A_Lq+Module3Phase_B_Lq+Module3Phase_C_Lq+...
    Module4Phase_A_Lq+Module4Phase_B_Lq+Module4Phase_C_Lq);

Module1Phase_A_Ld = 3.2;
Module1Phase_B_Ld = 3.18;
Module1Phase_C_Ld = 3.12;
Module2Phase_A_Ld = 3.05;
Module2Phase_B_Ld = 2.94;
Module2Phase_C_Ld = 3.07;
Module3Phase_A_Ld = 2.99;
Module3Phase_B_Ld = 3.02;
Module3Phase_C_Ld = 3.07;
Module4Phase_A_Ld = 2.98;
Module4Phase_B_Ld = 3.12;
Module4Phase_C_Ld = 3.12;
MeanLd = (1/12)*(Module1Phase_A_Ld+Module1Phase_B_Ld+Module1Phase_C_Ld+...
    Module2Phase_A_Ld+Module2Phase_B_Ld+Module2Phase_C_Ld+...
    Module3Phase_A_Ld+Module3Phase_B_Ld+Module3Phase_C_Ld+...
    Module4Phase_A_Ld+Module4Phase_B_Ld+Module4Phase_C_Ld);

%% Inverter parameters
DCLINK_Cap = 1000e-6;
Vdc = 270;
ma = 0.9;
sw_frequency = 40000;
intangle1 = 0;
Pout = 2e3; % W
Rin = 1e-3;
Vin = Vdc + Rin*(Pout/Vdc);

%% Other parameters
Load_Nominal_Freq = 50;
THD_mean_frequency = 50;
