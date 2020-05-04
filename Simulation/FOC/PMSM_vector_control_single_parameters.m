%% PMSM Vector Control Simulation Parameters

% Simulation parameters
Ts = 1000e-9; % sec
Tfinal = 10; % sec
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
LoadTorque1 = 5; % Nm
LoadTorque2 = 5; % Nm
LoadTorqueStepTime = 3; % s

% Drive parameters
fsw = 40e3; % Hz
fout = 100; % Hz
Vdc = 100; % Volts
m = 3;
np = 1;
ns = 1;
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

Idref = 0;
SpeedPIDmax = 20;
SpeedPIDmin = -20;
IrefOverTref = MotorSpeedRad/(EfRated*3);
IdPIDmax = Vdc/5;
IdPIDmin = -Vdc/5;
IqPIDmax = Vdc-10;
IqPIDmin = -(Vdc-10);

% Input model
Rin = 1e-3;
Vin = Vdc + Rin*(Pout/Vdc);


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
