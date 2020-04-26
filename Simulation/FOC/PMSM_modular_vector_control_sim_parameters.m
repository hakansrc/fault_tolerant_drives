%% PMSM - Modular Motor - Vector Control Simulation Parameters

% Simulation parameters
Ts = 1000e-9; % sec
Tfinal = 8; % sec
Ripth = 0.1; % sec 

% PMSM parameters
MotorSpeed = 600; % rpm
PolePairs = 10;
EfRated = 80; % Volts
Ls = 3.51e-3; % Henries
Rs = 321e-3; % Ohms
VoltageConstant = EfRated*sqrt(6)/MotorSpeed*1e3;% Vll-peak/krpm
Inertia = 1e-2; % kgm^2
ViscousFriction = 1e-3; % Nms
MotorSpeedRad = MotorSpeed*pi/30; % rad/sec
LoadTorque1 = 2; % Nm
LoadTorque2 = 2; % Nm
LoadTorqueStepTime = 3; % s

% Drive parameters
fsw = 40e3; % Hz
fout = 100; % Hz
Vdc = 200; % Volts (200: series)
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

% Control parameters
SpeedRef1 = 200; % rpm
SpeedRef2 = 100; % rpm
SpeedRefStepTime = 6; % s

IdrefM1 = 0;
IdrefM2 = 0;
SpeedPIDmax = 20;
SpeedPIDmin = -20;
IrefOverTref = MotorSpeedRad/(EfRated*3);
IdPIDmax = Vdcm/5;
IdPIDmin = -Vdcm/5;
IqPIDmax = Vdcm-10;
IqPIDmin = -(Vdcm-10);

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
