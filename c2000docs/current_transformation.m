clear
clc
close all

Current = -20:0.01:20;
Resistance = 7e-3;

SN_SP_voltage = Current*Resistance;

DRV_GAIN = 10;

k  = 2;

Vref = 3.3;

Vo = Vref/k-DRV_GAIN*SN_SP_voltage;

max(Vo)
min(Vo)


figure
plot(Vo)

CurrentRetransform = (Vo-Vref/k)/(-DRV_GAIN)/Resistance;

figure
plot(CurrentRetransform)
max(CurrentRetransform)
min(CurrentRetransform)