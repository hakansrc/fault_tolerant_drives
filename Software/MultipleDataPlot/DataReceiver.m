clc
clear
% fclose(instrfind) % call this command for stopping callback function
%% IMPORTANT VARIABLES
% global variables are used for communication between the main function and
% the callback function
global SerialReadArray                      %the read values are put here first, in bytes
global ShowTheDataFlag                      %when this is set to 1, the main function shows the WindowArea of received data to the user, used for live visualizing of the main signal
global RawDataIndex RawDataIndexPrevious    %To track down the index of the raw data
global TheSaveArrayRaw                      %This is the raw data array, inside which the all received data is put. This array is saved along with the tags when the received number of bytes reaches TheSaveUpperLimit value
global GoToGarbage                          %During the saving of TheSaveArrayRaw, a little bit of data goes to garbage
global CallbackFunctionByteNumber           %This value states when to call the callback function
global TheSaveUpperLimit                    %This value is the number of bytes of data to be saved as raw data (TheSaveArrayRaw)
global WindowArea                           %This variable states amount of data to be shown to the user during the operation
global SaveTheDataFlag     
%% IMPORTANT DEFINITIONS
BaudRateValue = 892857;                 %921600 is the maximum baudrate value for now
TimeoutValue = 6;                       %Allowed time in seconds to complete read and write operations, returned as a numeric value.
CallbackFunctionByteNumber=512;         %the callback function is called when this amount of bytes are read from the channel
TheSaveUpperLimit = 2048*10;       
WindowArea = 1024*10;
% TagNumber1 = '0001';                    %Tag values, these values should match with the tags stated in the DSP code (tag values are stored along with the TheSaveArrayRaw)
% TagNumber2 = '0002';
% TagNumber3 = '0003';
% TagNumber4 = '0004';
% TagNumber5 = '0005';
TheTag = 'hsrc';
TheTagByteSize = 4;

EnableSaving = 0;                       %set 0 in order to disable saving of variable (recommended to stay at 1)
EnablePlotting = 1;                     %set 0 in order to disable plotting of taken variables (for live visualization)

%% Main function
RawDataIndex = 0;                               %initialize the variable
RawDataIndexPrevious = 0;                       %initialize the variable
ShowTheDataFlag = 0;                            %initialize the variable
SaveTheDataFlag = 0;                            %initialize the variable
TheSaveArrayRaw = zeros(TheSaveUpperLimit,1);	%initialize the variable
MainSignalOffset = 0;                           %initialize the variable
IsMainSignalOffsetProper = 0;                   %initialize the variable


SerialChannel = serial('COM5','BaudRate',BaudRateValue,'Parity','none','Timeout',6);    %open the serial channel
SerialChannel.BytesAvailableFcnCount = CallbackFunctionByteNumber;  %set the callback function byte number
SerialChannel.BytesAvailableFcnMode = 'byte';                       %set the callback function type
SerialChannel.BytesAvailableFcn = @SerialReadCallbackFunction;      %state the callback function to be called
fopen(SerialChannel);                                               %open the serial channel port
if (EnableSaving==1)
    mkdir TestData                              %create directory for saving data
end
TheTagValue = zeros(6,4);
while(1)
    if(ShowTheDataFlag==1)
        TheTagValue = zeros(6,4);
        IsMainSignalOffsetProper = 0;
        TheSaveArrayScreened = TheSaveArrayRaw(RawDataIndexPrevious:(RawDataIndexPrevious+WindowArea),1);
        TheTagIndices = strfind(TheSaveArrayScreened',TheTag);
        
%         TheDataConvertedValues = zeros(6,numel(TheTagIndices));              
         
        
        if(isempty(TheTagIndices)==0)
            if(IsMainSignalOffsetProper==0)
                MainSignalOffset = mod((TheTagIndices(1)-1),4);
                IsMainSignalOffsetProper = 1;
            end
            for i=1:(numel(TheTagIndices)-1)
                if(i+TheTagIndices(i)+4*6)<numel(TheSaveArrayScreened)
                    if(TheTagIndices(i)-TheTagIndices(i+1))~=(-28)
                        continue;
                    end
                    for a=1:6
                        TheTagValue(a,1) = TheSaveArrayScreened(TheTagIndices(i)+TheTagByteSize+0+(a-1)*4);
                        TheTagValue(a,2) = TheSaveArrayScreened(TheTagIndices(i)+TheTagByteSize+1+(a-1)*4);
                        TheTagValue(a,3) = TheSaveArrayScreened(TheTagIndices(i)+TheTagByteSize+2+(a-1)*4);
                        TheTagValue(a,4) = TheSaveArrayScreened(TheTagIndices(i)+TheTagByteSize+3+(a-1)*4);                        
                        TheDataConvertedValues(a,i) = typecast(uint32(hex2dec(strcat(dec2hex(TheSaveArrayScreened(7+(a-1)*4+TheTagIndices(i)),2),dec2hex(TheSaveArrayScreened(6+(a-1)*4+TheTagIndices(i)),2),dec2hex(TheSaveArrayScreened(5+(a-1)*4+TheTagIndices(i)),2),dec2hex(TheSaveArrayScreened(4+(a-1)*4+TheTagIndices(i)),2)))),'single');                        
                    end
%                     TheTagValue(1,1) = TheSaveArrayScreened(TheTagIndices(i)+TheTagByteSize+0);
%                     TheTagValue(1,2) = TheSaveArrayScreened(TheTagIndices(i)+TheTagByteSize+1);
%                     TheTagValue(1,3) = TheSaveArrayScreened(TheTagIndices(i)+TheTagByteSize+2);
%                     TheTagValue(1,4) = TheSaveArrayScreened(TheTagIndices(i)+TheTagByteSize+3);
%                     TheDataConvertedValues(1,i) = typecast(uint32(hex2dec(strcat(dec2hex(TheSaveArrayScreened(7+TheTagIndices(i)),2),dec2hex(TheSaveArrayScreened(6+TheTagIndices(i)),2),dec2hex(TheSaveArrayScreened(5+TheTagIndices(i)),2),dec2hex(TheSaveArrayScreened(4+TheTagIndices(i)),2)))),'single');
%                     
%                     TheTagValue(2,1) = TheSaveArrayScreened(TheTagIndices(i)+TheTagByteSize+4);
%                     TheTagValue(2,2) = TheSaveArrayScreened(TheTagIndices(i)+TheTagByteSize+5);
%                     TheTagValue(2,3) = TheSaveArrayScreened(TheTagIndices(i)+TheTagByteSize+6);
%                     TheTagValue(2,4) = TheSaveArrayScreened(TheTagIndices(i)+TheTagByteSize+7);
%                     TheDataConvertedValues(2,i) = typecast(uint32(hex2dec(strcat(dec2hex(TheSaveArrayScreened(11+TheTagIndices(i)),2),dec2hex(TheSaveArrayScreened(10+TheTagIndices(i)),2),dec2hex(TheSaveArrayScreened(9+TheTagIndices(i)),2),dec2hex(TheSaveArrayScreened(8+TheTagIndices(i)),2)))),'single');
% 
%                     TheTagValue(3,1) = TheSaveArrayScreened(TheTagIndices(i)+TheTagByteSize+8);
%                     TheTagValue(3,2) = TheSaveArrayScreened(TheTagIndices(i)+TheTagByteSize+9);
%                     TheTagValue(3,3) = TheSaveArrayScreened(TheTagIndices(i)+TheTagByteSize+10);
%                     TheTagValue(3,4) = TheSaveArrayScreened(TheTagIndices(i)+TheTagByteSize+11);
%                     TheDataConvertedValues(3,i) = typecast(uint32(hex2dec(strcat(dec2hex(TheSaveArrayScreened(15+TheTagIndices(i)),2),dec2hex(TheSaveArrayScreened(14+TheTagIndices(i)),2),dec2hex(TheSaveArrayScreened(13+TheTagIndices(i)),2),dec2hex(TheSaveArrayScreened(12+TheTagIndices(i)),2)))),'single');
% 
%                     TheTagValue(4,1) = TheSaveArrayScreened(TheTagIndices(i)+TheTagByteSize+12);
%                     TheTagValue(4,2) = TheSaveArrayScreened(TheTagIndices(i)+TheTagByteSize+13);
%                     TheTagValue(4,3) = TheSaveArrayScreened(TheTagIndices(i)+TheTagByteSize+14);
%                     TheTagValue(4,4) = TheSaveArrayScreened(TheTagIndices(i)+TheTagByteSize+15);                        
%                     TheDataConvertedValues(4,i) = typecast(uint32(hex2dec(strcat(dec2hex(TheSaveArrayScreened(19+TheTagIndices(i)),2),dec2hex(TheSaveArrayScreened(18+TheTagIndices(i)),2),dec2hex(TheSaveArrayScreened(17+TheTagIndices(i)),2),dec2hex(TheSaveArrayScreened(16+TheTagIndices(i)),2)))),'single');
% 
%                     TheTagValue(5,1) = TheSaveArrayScreened(TheTagIndices(i)+TheTagByteSize+16);
%                     TheTagValue(5,2) = TheSaveArrayScreened(TheTagIndices(i)+TheTagByteSize+17);
%                     TheTagValue(5,3) = TheSaveArrayScreened(TheTagIndices(i)+TheTagByteSize+18);
%                     TheTagValue(5,4) = TheSaveArrayScreened(TheTagIndices(i)+TheTagByteSize+19);                       
%                     TheDataConvertedValues(5,i) = typecast(uint32(hex2dec(strcat(dec2hex(TheSaveArrayScreened(23+TheTagIndices(i)),2),dec2hex(TheSaveArrayScreened(22+TheTagIndices(i)),2),dec2hex(TheSaveArrayScreened(21+TheTagIndices(i)),2),dec2hex(TheSaveArrayScreened(20+TheTagIndices(i)),2)))),'single');
% 
%                     TheTagValue(6,1) = TheSaveArrayScreened(TheTagIndices(i)+TheTagByteSize+20);
%                     TheTagValue(6,2) = TheSaveArrayScreened(TheTagIndices(i)+TheTagByteSize+21);
%                     TheTagValue(6,3) = TheSaveArrayScreened(TheTagIndices(i)+TheTagByteSize+22);
%                     TheTagValue(6,4) = TheSaveArrayScreened(TheTagIndices(i)+TheTagByteSize+23);               
%                     TheDataConvertedValues(6,i) = typecast(uint32(hex2dec(strcat(dec2hex(TheSaveArrayScreened(27+TheTagIndices(i)),2),dec2hex(TheSaveArrayScreened(26+TheTagIndices(i)),2),dec2hex(TheSaveArrayScreened(25+TheTagIndices(i)),2),dec2hex(TheSaveArrayScreened(24+TheTagIndices(i)),2)))),'single');
                             
                end
            end
            if (EnablePlotting==1)  %for live visualization
                subplot(3,2,1)
                plot(TheDataConvertedValues(1,:));
                subplot(3,2,2)
                plot(TheDataConvertedValues(2,:));
                subplot(3,2,3)
                plot(TheDataConvertedValues(3,:));
                subplot(3,2,4)
                plot(TheDataConvertedValues(4,:));
                subplot(3,2,5)
                plot(TheDataConvertedValues(5,:));
                subplot(3,2,6)
                plot(TheDataConvertedValues(6,:));
                for i = 1:numel(TheDataConvertedValues)
                    if(TheDataConvertedValues(i)>5)
                        GoToBreak = 1;
                        break;
                    else
                        GoToBreak = 0;
                    end
                end
                if GoToBreak ==1
                    break;
                end
                if any (abs(TheDataConvertedValues)>5)
                    break
                end
%                 ylim([-0.05 0.05])
%                 xlim([0 WindowArea/4])
                grid on
                drawnow;
%                 fprintf("%s:%f\t\t%s:%f\t\t%s:%f\t\t%s:%f\t\t%s:%f\t\t\n",TagNumber1,mean(Tag_1_Value),TagNumber2,mean(Tag_2_Value),TagNumber3,mean(Tag_3_Value),TagNumber4,mean(Tag_4_Value),TagNumber5,mean(Tag_5_Value));
            end

        end
        ShowTheDataFlag = 0;
    end
    if(SaveTheDataFlag == 1)
        if(EnableSaving==1)
            FileName = sprintf("TestData/TestData%s", datestr(now, 'ddmmyyHHMMSS'));
            save(FileName,'TheSaveArrayRaw','TagNumber1','TagNumber2','TagNumber3','TagNumber4','TagNumber5');
            TheSaveArrayRaw = zeros(TheSaveUpperLimit,1);          %clear the raw data because it is saved
            RawDataIndexPrevious = 0;
            RawDataIndex = 0;
            SaveTheDataFlag = 0;
        else
            TheSaveArrayRaw = zeros(TheSaveUpperLimit,1);          %clear the raw data because it is saved
            RawDataIndexPrevious = 0;
            RawDataIndex = 0;
            SaveTheDataFlag = 0;
        end
    else
        pause(0.01);
    end
end

%% The callback function

function [] =  SerialReadCallbackFunction(TheSerialChannel,TheEvent)
global RawDataIndex RawDataIndexPrevious
global CallbackFunctionByteNumber
global SerialReadArray          %the read values are put here first
global TheSaveArrayRaw          %The callback function stores the data inside this large array, initialized inside the main function
global ShowTheDataFlag          %when this is set to 1, the main function takes data from TheSaveArrayRaw and show the last WindowArea amount of it to the user
global WindowArea               %This variable states amount of data to be shown to the user during the operation
global GoToGarbage              %During the saving of TheSaveArrayRaw, a little bit of data goes to garbage
global SaveTheDataFlag          %This is just a flag, for non user operations
global TheSaveUpperLimit        %This value is the number of bytes of data to be saved as raw data (TheSaveArrayRaw)


if(SaveTheDataFlag == 0)
    % fill in the raw data array
    SerialReadArray = fread(TheSerialChannel,TheSerialChannel.BytesAvailable);
    TheSaveArrayRaw((RawDataIndex+1):(RawDataIndex+CallbackFunctionByteNumber),1)=SerialReadArray;
    RawDataIndex = RawDataIndex+512;
else
    %it means we are saving right now, dont mess with the raw data array for a
    %little while, be a patient child.
    GoToGarbage = fread(TheSerialChannel,TheSerialChannel.BytesAvailable); %just read and pass, dont store , otherwise the callback does not work  
end

if(ShowTheDataFlag == 0)
    % if requested amount of data have arrived, show them to us during the
    % operation
    if((RawDataIndex-RawDataIndexPrevious)>WindowArea)
        RawDataIndexPrevious = RawDataIndex-WindowArea;
        ShowTheDataFlag = 1;
    end
    
end
if(RawDataIndex >= TheSaveUpperLimit)
    % Raw data has reached to its specified limit, just save it and wait
    % for new data when the saving operation has finished
    SaveTheDataFlag = 1;
end

end