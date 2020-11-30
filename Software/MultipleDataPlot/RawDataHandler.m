clear
clc
close all
% load('TestData/TestData301120212502.mat')
load('TestData/TestData301120212556.mat')
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
    for i=1:NumberOfFloatsPerPacket
        subplot(3,2,i)
        plot((1:numel(TheDataConvertedValues(i,:)))/DataSampleRate,TheDataConvertedValues(i,:));
        grid on
    end   
end
figure
plot(TheDataConvertedValues(1,:)+TheDataConvertedValues(3,:)+TheDataConvertedValues(5,:))

figure 
plot(-TheDataConvertedValues(1,:)/max(TheDataConvertedValues(1,:)))
hold on
plot(2*(TheDataConvertedValues(2,:)-4750)/max(TheDataConvertedValues(2,:)))
