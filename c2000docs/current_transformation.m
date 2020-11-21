clear
clc
close all


Resistance = 7e-3;
current_magnitude = 15;
t = 0:0.0001:0.04;

Current = current_magnitude*sin(2*pi*50*t);

##figure
##plot(Current)


SN_SP_voltage = Current*Resistance;

DRV_GAIN = 10;

k  = 2;

Vref = 3.3;

Vo = Vref/k-DRV_GAIN*SN_SP_voltage;

max(Vo)
min(Vo)


figure
plot(Vo)

##figure
##plot(Vo/Vref*4095)

CurrentRetransform = (Vo-Vref/k)/(DRV_GAIN)/Resistance;

##figure
##plot(CurrentRetransform)
##max(CurrentRetransform)
##min(CurrentRetransform)