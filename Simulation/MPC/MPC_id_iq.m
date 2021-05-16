clc
clear
% close all

iq = 10;
id = 0;

speedrpm = 100;
fs = 1000:1:10000;
ts = 1./fs;
Ls = 3.5e-3;
Rs = 0.531;
fluxpm = 0.18;

vd = 2;
vq = 10;

speedradsec = speedrpm*2*pi/60;
polepairs = 10;


iq_1 = iq + ts/Ls*(-iq*Rs-speedradsec*polepairs*(id*Ls+fluxpm)+vq);
terms_iq_1 = [iq (-iq*Rs)/1000/Ls speedradsec*polepairs*(id*Ls+fluxpm)/1000/Ls vq/1000/Ls];
sum(terms_iq_1)

id_1 = id + ts/Ls*(-id*Rs+speedradsec*polepairs*Ls*iq+vd);

figure
plot(iq-iq_1)
hold on
plot(id-id_1)
legend('iq error', 'id error')