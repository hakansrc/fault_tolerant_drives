clear
clc
%% Simulation parameters
Sampling_time = 1e-6;
ref_frequency = 100*pi;
Tfinal = 3.5; %seconds
%% PMSM parameters
MotorSpeed = 600; % rpm
PolePairs = 10;
EfRated = 80.3; % Volts
Ls = 3.51e-3; % Henries
Rs = 321e-3; % Ohms
VoltageConstant = EfRated*sqrt(6)/MotorSpeed*1e3;% Vll-peak/krpm
Inertia = 1e-2; % kgm^2
ViscousFriction = 1e-3; % Nms

% Mechanical parameters
MechanicalLoadTorque1 = 2; % Nm
MechanicalLoadTorque2 = 2; % Nm
MechanicalInertia1 = 0.01; % kgm^2
MechanicalInertia2 = 0.01; % kgm^2
MechanicalShaftStiffness = 2e+5; % Nm/rad
MechanicalShaftInertia = 0.02; % kgm^2
MechanicalShaftDampingRatio = 0.01; % ?
PMSMLoadResistance = 1e3; % Ohms

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

Module1Phase_A_Lq = 3.72e-3;
Module1Phase_B_Lq = 3.68e-3;
Module1Phase_C_Lq = 3.56e-3;
Module2Phase_A_Lq = 3.51e-3;
Module2Phase_B_Lq = 3.43e-3;
Module2Phase_C_Lq = 3.62e-3;
Module3Phase_A_Lq = 3.55e-3;
Module3Phase_B_Lq = 3.67e-3;
Module3Phase_C_Lq = 3.68e-3;
Module4Phase_A_Lq = 3.58e-3;
Module4Phase_B_Lq = 3.64e-3;
Module4Phase_C_Lq = 3.62e-3;
MeanLq = (1/12)*(Module1Phase_A_Lq+Module1Phase_B_Lq+Module1Phase_C_Lq+...
    Module2Phase_A_Lq+Module2Phase_B_Lq+Module2Phase_C_Lq+...
    Module3Phase_A_Lq+Module3Phase_B_Lq+Module3Phase_C_Lq+...
    Module4Phase_A_Lq+Module4Phase_B_Lq+Module4Phase_C_Lq);

Module1Phase_A_Ld = 3.2e-3;
Module1Phase_B_Ld = 3.18e-3;
Module1Phase_C_Ld = 3.12e-3;
Module2Phase_A_Ld = 3.05e-3;
Module2Phase_B_Ld = 2.94e-3;
Module2Phase_C_Ld = 3.07e-3;
Module3Phase_A_Ld = 2.99e-3;
Module3Phase_B_Ld = 3.02e-3;
Module3Phase_C_Ld = 3.07e-3;
Module4Phase_A_Ld = 2.98e-3;
Module4Phase_B_Ld = 3.12e-3;
Module4Phase_C_Ld = 3.12e-3;
MeanLd = (1/12)*(Module1Phase_A_Ld+Module1Phase_B_Ld+Module1Phase_C_Ld+...
    Module2Phase_A_Ld+Module2Phase_B_Ld+Module2Phase_C_Ld+...
    Module3Phase_A_Ld+Module3Phase_B_Ld+Module3Phase_C_Ld+...
    Module4Phase_A_Ld+Module4Phase_B_Ld+Module4Phase_C_Ld);

%% Inverter parameters
DCLINK_Cap = 1000e-6;
Vdc = 50;
ma = 0.9;
sw_frequency = 40000;
intangle1 = 0;
Pout = 2e3; % W
Rin = 1e-3;
Vin = Vdc + Rin*(Pout/Vdc);
wrated = 600*2*pi/60;
Trated = Pout/wrated;
iqrated = Trated/(1.5*PolePairs*FluxPM);
%% Other parameters
Load_Nominal_Freq = 50;
THD_mean_frequency = 50;
SpeedRef1 = 100; % RPM
SpeedRef2 = 100;
SpeedRefUpdateTime = 1.75;
Tload1 = 20; %Nm
Tload2 = 40;
TloadUpdateTime = SpeedRefUpdateTime;
M1_FaultTime = 20;
M2_FaultTime = 20;
%%
RefModeSelection = 1;