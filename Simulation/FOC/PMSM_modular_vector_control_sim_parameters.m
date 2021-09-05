%% PMSM - Modular Motor - Vector Control Simulation Parameters

% Simulation parameters
Ts = 1000e-9; % sec
Sampling_time = Ts;
Tfinal = 2; % sec
Ripth = 0.1; % sec 

% PMSM parameters
Pout = 2e3; % W
PolePairs = 10;
FluxPM = 0.1808;
wrated = 600*2*pi/60;
Trated = Pout/wrated;
iqrated = Trated/(1.5*PolePairs*FluxPM);
MotorSpeed = 600; % rpm
EfRated = 80; % Volts
Ls = 3.51e-3; % Henries
Rs = 321e-3; % Ohms
VoltageConstant = EfRated*sqrt(6)/MotorSpeed*1e3;% Vll-peak/krpm
Inertia = 1e-2; % kgm^2
ViscousFriction = 1e-3; % Nms
MotorSpeedRad = MotorSpeed*pi/30; % rad/sec
LoadTorque1 = Trated/4; %Nm; % Nm
LoadTorque2 = 3*Trated/4; %Nm; % Nm
LoadTorqueStepTime = 1.4; % s
% Control parameters
SpeedRef1 = 40; % rpm
SpeedRef2 = 80; % rpm
SpeedRefStepTime = .8; % s

% Drive parameters
fsw = 10e3; % Hz
fout = 100; % Hz
Vdc = 40; % Volts (200: series)
m = 3;
np = 1;
ns = 2;
Vdcm = Vdc/ns;
wout = 2*pi*fout; % rad/sec
phase = [0 0 0 0];
Cdc = 150e-6;
modulation_type = 1; % 1:SPWM, -1:SVPWM

% Rated parameters
Pout = 2e3; % W

% Calculated parameters
n = ns*np;



IdrefM1 = 0;
IdrefM2 = 0;
SpeedPIDmax = 200;
SpeedPIDmin = -200;
IrefOverTref = MotorSpeedRad/(EfRated*3);
IdPIDmax = 100*Vdcm/5;
IdPIDmin = 100*-Vdcm/5;
IqPIDmax = 100*Vdcm-10;
IqPIDmin = 100*-(Vdcm-10);

% Input model
Rin = 1e-3;
Vin = Vdc + Rin*(Pout/Vdc);

% Mechanical parameters
MechanicalLoadTorque1 = 2; % Nm
MechanicalLoadTorque2 = 2; % Nm
MechanicalInertia1 = 0.01; % kgm^2
MechanicalInertia2 = 0.01; % kgm^2
MechanicalShaftStiffness = 2e+5; % Nm/rad
MechanicalShaftInertia = 0.02; % kgm^2
MechanicalShaftDampingRatio = 0.01; % ?
PMSMLoadResistance = 1e3; % Ohms

%% Oldd
% Poutm = Pout/n; % Watts
% Is = Poutm/(EfRated*m); % amps
% Xs = wout*Ls; % Ohms
% Vdrop = Is*Xs; % Volts
% Vt = sqrt(EfRated^2+Vdrop^2); % Volts
% Vdcm = Vdc/ns; % volts
% ma = Vt*sqrt(3)/(Vdcm*0.612);
% delta = acos(EfRated/Vt); % radians
% deltad = delta*180/pi; % degrees
% pf = cos(delta);
%%
CurrentController_P = 30;
CurrentController_I = 80;
%%
PI_Frequency_Iq = 5000;
Ki_Iq = 20;
Kp_Iq = 2;
PI_Ts_Iq = 1/PI_Frequency_Iq;
PI_Sat_Iq = iqrated*2;
%%
PI_Frequency_Vq = fsw;
Ki_Vq = 1000;
Kp_Vq = 50;
PI_Ts_Vq = 1/PI_Frequency_Vq;
PI_Sat_Vq = 200;