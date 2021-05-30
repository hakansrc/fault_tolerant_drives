clc
clear
close all

iqref = 5;
LoadWeight = 0.445;

Tfinal = 1;
TimeArray = 0:0.00001:Tfinal;

Poles = 20;
Polepairs = 10;
Rs = 0.531;

SpeedRpmMec = 60;
SpeedRpmElec = 60*Polepairs;
SpeedRadSecElec = SpeedRpmElec/60*2*pi;



Module1_IqRef = LoadWeight*iqref / 2 * ( 1 + sin( SpeedRadSecElec*TimeArray));
Module1_IdRef = LoadWeight*iqref / 2 * ( 1 + cos( SpeedRadSecElec*TimeArray));

Module2_IqRef = iqref - Module1_IqRef;
Module2_IdRef = 0;



figure
plot(Module1_IqRef)
hold on
plot(Module2_IqRef)



Module1_Losses = 1.5*Rs*(Module1_IqRef.^2 + Module1_IdRef.^2);
Module2_Losses = 1.5*Rs*(Module2_IqRef.^2 + Module2_IdRef.^2);
figure
plot(Module1_Losses)
hold on
plot(Module2_Losses)

mean(Module1_Losses)
mean(Module2_Losses)

mean(Module1_Losses) + mean(Module2_Losses)


%%
index = 1;

for LoadWeight = 0:0.001:1
    Module1_IqRef = LoadWeight*iqref / 2 * ( 1 + sin( SpeedRadSecElec*TimeArray));
    Module1_IdRef = LoadWeight*iqref / 2 * ( 1 + cos( SpeedRadSecElec*TimeArray));
    
    Module2_IqRef = iqref - Module1_IqRef;
    Module2_IdRef = 0;
    
    Module1_Losses = 1.5*Rs*(Module1_IqRef.^2 + Module1_IdRef.^2);
    Module2_Losses = 1.5*Rs*(Module2_IqRef.^2 + Module2_IdRef.^2);
    
    module1_losses(index) = mean(Module1_Losses);
    module2_losses(index) = mean(Module2_Losses);
    
    losses(index) = mean(Module1_Losses) + mean(Module2_Losses);
    index = index+1;
    
end

figure
plot(0:0.001:1,losses)
[minloss minlossindex] = min(losses);


module1_losses(minlossindex)
module2_losses(minlossindex)

module2_losses(minlossindex)/module1_losses(minlossindex)






