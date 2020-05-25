clear
clc
NumberOfSlots = 24;
NumberOfPoles = 20;

CoilsPhaseShift = 360*(NumberOfPoles/2)*(1/NumberOfSlots);

WindingAngles = zeros(24,1);
increment = 0;

for i = 1:24
    WindingAngles(i) = mod(increment,360);
    increment= increment + CoilsPhaseShift;
end
