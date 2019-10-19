clc
clear
Sampling_time = 1e-6;
Tend = 5;
DCLINK_Cap = 100e-6;
Rin = 1e-6;
Pout = 4000;
Vdesired = 540;
Vin = Vdesired;%Vdesired+Pout/Vdesired*Rin;
sw_frequency = 20e3;
interleaving_angle_1 = 0;
ref_frequency = 2*pi*50;
Tload = 15;
ma = 0.9; 