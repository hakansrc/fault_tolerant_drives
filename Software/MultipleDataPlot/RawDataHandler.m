clear
clc
close all
% load('TestData/TestData301120212502.mat')
load('TestData/TestDataAlignmentOnMachine_040121191752.mat')
EnablePlotting = 1;
TheTagValue = zeros(NumberOfFloatsPerPacket,4);
TheSaveArrayScreened = RawDataArray;
TheTagIndices = strfind(TheSaveArrayScreened',TheTag);
if(isempty(TheTagIndices)==0)
    for i=1:(numel(TheTagIndices)-1)
        if(i+TheTagIndices(i)+4*6)<numel(TheSaveArrayScreened)
            if(TheTagIndices(i)-TheTagIndices(i+1))~=(-(TheTagByteSize+4*NumberOfFloatsPerPacket))
                continue;
            end
            for a=1:NumberOfFloatsPerPacket
                TheTagValue(a,1) = TheSaveArrayScreened(TheTagIndices(i)+TheTagByteSize+0+(a-1)*4);
                TheTagValue(a,2) = TheSaveArrayScreened(TheTagIndices(i)+TheTagByteSize+1+(a-1)*4);
                TheTagValue(a,3) = TheSaveArrayScreened(TheTagIndices(i)+TheTagByteSize+2+(a-1)*4);
                TheTagValue(a,4) = TheSaveArrayScreened(TheTagIndices(i)+TheTagByteSize+3+(a-1)*4);
                TheDataConvertedValues(a,i) = typecast(uint32(hex2dec(strcat(dec2hex(TheTagValue(a,4),2),dec2hex(TheTagValue(a,3),2),dec2hex(TheTagValue(a,2),2),dec2hex(TheTagValue(a,1),2)))),'single');                        
            end
        end
    end
    for i=1:6
        subplot(3,2,i)
        plot((1:numel(TheDataConvertedValues(i,:)))/DataSampleRate,TheDataConvertedValues(i,:));
        grid on
    end   
end
return
%% TestDataRL_Alignment_281220185406 &  TestDataRL_Alignment_281220185521
figure
FontSize = 16;
subplot(2,1,1)
plot((1:numel(TheDataConvertedValues(1,:)))/DataSampleRate,TheDataConvertedValues(1,:),'LineWidth',2);
hold on
plot((1:numel(TheDataConvertedValues(2,:)))/DataSampleRate,TheDataConvertedValues(2,:),'LineWidth',2);
grid on
title("D current reference and measured")
xlim([0 0.1])
ylim([0 1.1])
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Current (A)','FontSize',FontSize,'FontWeight','bold');
legend('Reference', 'Measured')
set(gca,'FontSize',FontSize,'FontWeight','bold')

% figure
subplot(2,1,2)
plot((1:numel(TheDataConvertedValues(3,:)))/DataSampleRate,TheDataConvertedValues(3,:),'LineWidth',2);
hold on
plot((1:numel(TheDataConvertedValues(4,:)))/DataSampleRate,TheDataConvertedValues(4,:),'LineWidth',2);
grid on
title("Q current reference and measured")
xlim([0 0.1])
ylim([0 1.1])
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Current (A)','FontSize',FontSize,'FontWeight','bold');
legend('Reference', 'Measured')
set(gca,'FontSize',FontSize,'FontWeight','bold')

%% TestDataRL_Alignment_281220191813
idref = 1.1*ones(1,numel(TheDataConvertedValues(1,:)));
iqref = 0.4*ones(1,numel(TheDataConvertedValues(1,:)));

figure
FontSize = 16;
subplot(2,1,1)
plot((1:numel(TheDataConvertedValues(1,:)))/DataSampleRate,idref,'LineWidth',2);
hold on
plot((1:numel(TheDataConvertedValues(2,:)))/DataSampleRate,TheDataConvertedValues(1,:),'LineWidth',2);
grid on
title("D current reference and measured")
xlim([0 0.1])
ylim([0 1.2])
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Current (A)','FontSize',FontSize,'FontWeight','bold');
legend('Reference', 'Measured')
set(gca,'FontSize',FontSize,'FontWeight','bold')

% figure
subplot(2,1,2)
plot((1:numel(TheDataConvertedValues(3,:)))/DataSampleRate,iqref,'LineWidth',2);
hold on
plot((1:numel(TheDataConvertedValues(4,:)))/DataSampleRate,TheDataConvertedValues(2,:),'LineWidth',2);
grid on
title("Q current reference and measured")
xlim([0 0.1])
ylim([0 1.2])
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Current (A)','FontSize',FontSize,'FontWeight','bold');
legend('Reference', 'Measured')
set(gca,'FontSize',FontSize,'FontWeight','bold')

figure
subplot(3,1,1)
plot((1:numel(TheDataConvertedValues(2,:)))/DataSampleRate,TheDataConvertedValues(3,:),'LineWidth',2);
grid on
title("Phase A current measured ")
xlim([0 0.1])
ylim([-1.2 1.2])
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Current (A)','FontSize',FontSize,'FontWeight','bold');
set(gca,'FontSize',FontSize,'FontWeight','bold')

subplot(3,1,2)
plot((1:numel(TheDataConvertedValues(4,:)))/DataSampleRate,TheDataConvertedValues(4,:),'LineWidth',2);
grid on
title("Phase B current measured ")
xlim([0 0.1])
ylim([-1.2 1.2])
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Current (A)','FontSize',FontSize,'FontWeight','bold');
set(gca,'FontSize',FontSize,'FontWeight','bold')

subplot(3,1,3)
plot((1:numel(TheDataConvertedValues(4,:)))/DataSampleRate,TheDataConvertedValues(5,:),'LineWidth',2);
grid on
title("Phase C current measured ")
xlim([0 0.1])
ylim([-1.2 1.2])
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Current (A)','FontSize',FontSize,'FontWeight','bold');
set(gca,'FontSize',FontSize,'FontWeight','bold')


