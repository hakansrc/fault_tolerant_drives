clc
clear
% fclose(instrfind) % call this command for stopping callback function
%% IMPORTANT DEFINITIONS
global CallbackFunctionByteNumber
global TheSaveAmount
BaudRateValue = 460800*2;               %921600 is the maximum baudrate value for now
TimeoutValue = 6;                       %Allowed time in seconds to complete read and write operations, returned as a numeric value.
CallbackFunctionByteNumber=512;         %the callback function is called when this amount of bytes are read from the channel
TheSaveAmount = 100*1024;                %the callback function save array size in bytes
TagNumber1 = '0001';
TagNumber2 = '0002';
TagNumber3 = '0003';
TagNumber4 = '0004';
TagNumber5 = '0005';

EnableSaving = 0;                         %set 0 in order to disable saving of workspace
EnablePlotting = 1;                     %set 0 in order to disable plotting of taken variables

%% IMPORTANT VARIABLES
% global variables (used for getting variables from the callback function)
global SerialReadArray          %the read values are put here first, in bytes
global SerialReadOrdered        %the read values at SerialReadArray are aligned inside this array, in bytes
global SaveTheArrayFlag         %when this is set to 1, the main function takes data from the array and saves it, 1 or 0
global NumberOfReceivedBytes    %this is a variable that stores number of bytes read from the serial channel, required for array operations,
global TheSaveArrayRaw             %The callback function stores the data inside this large array, the values are converted from this array

%% Main function
NumberOfReceivedBytes = 0; %init the number of bytes
SaveTheArrayFlag = 0;       %init the flag
SerialChannel = serial('COM4','BaudRate',BaudRateValue,'Parity','none','Timeout',6);
SerialChannel.BytesAvailableFcnCount = CallbackFunctionByteNumber;
SerialChannel.BytesAvailableFcnMode = 'byte';
SerialChannel.BytesAvailableFcn = @SerialReadCallbackFunction;
fopen(SerialChannel);
TheSaveArrayRaw = zeros(TheSaveAmount,1);          %init the array
if (EnableSaving==1)
    mkdir TestData                                  %create directory for saving data
end
MainSignalOffset = 0;
IsMainSignalOffsetProper = 0;
while(1)
    
    if(SaveTheArrayFlag==1)
        IsMainSignalOffsetProper = 0;
        TheSaveArrayScreened = TheSaveArrayRaw;
        %% Tag 1 conversion and elimination
        Tag_1_Indices = strfind(TheSaveArrayScreened',TagNumber1);
        if(isempty(Tag_1_Indices)==0)
            if(IsMainSignalOffsetProper==0)
                MainSignalOffset = mod((Tag_1_Indices(1)-1),4);
                IsMainSignalOffsetProper = 1;
            end
            Tag_1_Value = zeros(1,numel(Tag_1_Indices));
            for i=1:numel(Tag_1_Indices)
                Tag_1_Indices(i) = Tag_1_Indices(i)-(i-1)*8;
                if (Tag_1_Indices(i)+8)<=numel(TheSaveArrayScreened)
                    Tag_1_Value(i) = typecast(uint32(hex2dec(strcat(dec2hex(TheSaveArrayScreened(7+Tag_1_Indices(i)),2),dec2hex(TheSaveArrayScreened(6+Tag_1_Indices(i)),2),dec2hex(TheSaveArrayScreened(5+Tag_1_Indices(i)),2),dec2hex(TheSaveArrayScreened(4+Tag_1_Indices(i)),2)))),'single')
                    for j = 1:8
                        TheSaveArrayScreened(Tag_1_Indices(i)) = [];
                    end
                else
                    for j = 1:(numel(TheSaveArrayScreened)-Tag_1_Indices(i))
                        TheSaveArrayScreened(Tag_1_Indices(i)) = [];
                    end
                end
            end
        end
        %% Tag 2 conversion and elimination
        Tag_2_Indices = strfind(TheSaveArrayScreened',TagNumber2);
        if(isempty(Tag_2_Indices)==0)
            if(IsMainSignalOffsetProper==0)
                MainSignalOffset = mod((Tag_2_Indices(1)-1),4);
                IsMainSignalOffsetProper = 1;
            end            
            Tag_2_Value = zeros(1,numel(Tag_2_Indices));
            for i=1:numel(Tag_2_Indices)
                Tag_2_Indices(i) = Tag_2_Indices(i)-(i-1)*8;
                if (Tag_2_Indices(i)+8)<=numel(TheSaveArrayScreened)
                    Tag_2_Value(i) = typecast(uint32(hex2dec(strcat(dec2hex(TheSaveArrayScreened(7+Tag_2_Indices(i)),2),dec2hex(TheSaveArrayScreened(6+Tag_2_Indices(i)),2),dec2hex(TheSaveArrayScreened(5+Tag_2_Indices(i)),2),dec2hex(TheSaveArrayScreened(4+Tag_2_Indices(i)),2)))),'single')
                    for j = 1:8
                        TheSaveArrayScreened(Tag_2_Indices(i)) = [];
                    end
                else
                    for j = 1:(numel(TheSaveArrayScreened)-Tag_2_Indices(i))
                        TheSaveArrayScreened(Tag_2_Indices(i)) = [];
                    end
                end
            end
        end
        %% Tag 3 conversion and elimination
        Tag_3_Indices = strfind(TheSaveArrayScreened',TagNumber3);
        if(isempty(Tag_3_Indices)==0)
            if(IsMainSignalOffsetProper==0)
                MainSignalOffset = mod((Tag_3_Indices(1)-1),4);
                IsMainSignalOffsetProper = 1;
            end              
            Tag_3_Value = zeros(1,numel(Tag_3_Indices));
            for i=1:numel(Tag_3_Indices)
                Tag_3_Indices(i) = Tag_3_Indices(i)-(i-1)*8;
                if (Tag_3_Indices(i)+8)<=numel(TheSaveArrayScreened)
                    Tag_3_Value(i) = typecast(uint32(hex2dec(strcat(dec2hex(TheSaveArrayScreened(7+Tag_3_Indices(i)),2),dec2hex(TheSaveArrayScreened(6+Tag_3_Indices(i)),2),dec2hex(TheSaveArrayScreened(5+Tag_3_Indices(i)),2),dec2hex(TheSaveArrayScreened(4+Tag_3_Indices(i)),2)))),'single')
                    for j = 1:8
                        TheSaveArrayScreened(Tag_3_Indices(i)) = [];
                    end
                else
                    for j = 1:(numel(TheSaveArrayScreened)-Tag_3_Indices(i))
                        TheSaveArrayScreened(Tag_3_Indices(i)) = [];
                    end
                end
            end
        end      
        %% Tag 4 conversion and elimination
        Tag_4_Indices = strfind(TheSaveArrayScreened',TagNumber4);
        if(isempty(Tag_4_Indices)==0)
            if(IsMainSignalOffsetProper==0)
                MainSignalOffset = mod((Tag_4_Indices(1)-1),4);
                IsMainSignalOffsetProper = 1;
            end              
            Tag_4_Value = zeros(1,numel(Tag_4_Indices));
            for i=1:numel(Tag_4_Indices)
                Tag_4_Indices(i) = Tag_4_Indices(i)-(i-1)*8;
                if (Tag_4_Indices(i)+8)<=numel(TheSaveArrayScreened)
                    Tag_4_Value(i) = typecast(uint32(hex2dec(strcat(dec2hex(TheSaveArrayScreened(7+Tag_4_Indices(i)),2),dec2hex(TheSaveArrayScreened(6+Tag_4_Indices(i)),2),dec2hex(TheSaveArrayScreened(5+Tag_4_Indices(i)),2),dec2hex(TheSaveArrayScreened(4+Tag_4_Indices(i)),2)))),'single')
                    for j = 1:8
                        TheSaveArrayScreened(Tag_4_Indices(i)) = [];
                    end
                else
                    for j = 1:(numel(TheSaveArrayScreened)-Tag_4_Indices(i))
                        TheSaveArrayScreened(Tag_4_Indices(i)) = [];
                    end
                end
            end
        end  
        %% Tag 5 conversion and elimination
        Tag_5_Indices = strfind(TheSaveArrayScreened',TagNumber5);
        if(isempty(Tag_5_Indices)==0)
            if(IsMainSignalOffsetProper==0)
                MainSignalOffset = mod((Tag_5_Indices(1)-1),4);
                IsMainSignalOffsetProper = 1;
            end              
            Tag_5_Value = zeros(1,numel(Tag_5_Indices));
            for i=1:numel(Tag_5_Indices)
                Tag_5_Indices(i) = Tag_5_Indices(i)-(i-1)*8;
                if (Tag_5_Indices(i)+8)<=numel(TheSaveArrayScreened)
                    Tag_5_Value(i) = typecast(uint32(hex2dec(strcat(dec2hex(TheSaveArrayScreened(7+Tag_5_Indices(i)),2),dec2hex(TheSaveArrayScreened(6+Tag_5_Indices(i)),2),dec2hex(TheSaveArrayScreened(5+Tag_5_Indices(i)),2),dec2hex(TheSaveArrayScreened(4+Tag_5_Indices(i)),2)))),'single')
                    for j = 1:8
                        TheSaveArrayScreened(Tag_5_Indices(i)) = [];
                    end
                else
                    for j = 1:(numel(TheSaveArrayScreened)-Tag_5_Indices(i))
                        TheSaveArrayScreened(Tag_5_Indices(i)) = [];
                    end
                end
            end
        end          
        %% Raw data conversion
        MainSignalConverted = zeros(TheSaveAmount/4-MainSignalOffset-8*numel(Tag_1_Indices)-8*numel(Tag_2_Indices)-8*numel(Tag_3_Indices)-8*numel(Tag_4_Indices)-8*numel(Tag_5_Indices),1); %init the array
        for i=1:1:(TheSaveAmount/4-MainSignalOffset-8*numel(Tag_1_Indices)-8*numel(Tag_2_Indices)-8*numel(Tag_3_Indices)-8*numel(Tag_4_Indices)-8*numel(Tag_5_Indices))
            MainSignalConverted(i) = typecast(uint32(hex2dec(strcat(dec2hex(TheSaveArrayScreened(4+4*(i-1)+MainSignalOffset),2),dec2hex(TheSaveArrayScreened(3+4*(i-1)+MainSignalOffset),2),dec2hex(TheSaveArrayScreened(2+4*(i-1)+MainSignalOffset),2),dec2hex(TheSaveArrayScreened(1+4*(i-1)+MainSignalOffset),2)))),'single');
        end
              
        if (EnablePlotting==1)
            plot(MainSignalConverted);
            ylim([0 1])
            drawnow;
        end
        if (EnableSaving==1)
            FileName = sprintf("TestData/TestData%s", datestr(now, 'ddmmyyHHMMSS'));
            save(FileName);
        end
        SaveTheArrayFlag = 0;
    else
        if(EnableSaving==1)
            pause(1);%wait for one second between operations
        else
            pause(0.01);    %if your computer's fan blows high, increase this value
        end
        
    end
end
%% The callback function
function [] =  SerialReadCallbackFunction(TheSerialChannel,TheEvent)
global NumberOfReceivedBytes
global CallbackFunctionByteNumber
global SerialReadArray          %the read values are put here first
global TheSaveArrayRaw             %The callback function stores the data inside this large array, initialized inside the main function
global SaveTheArrayFlag         %when this is set to 1, the main function takes data from the array and saves it
global TheSaveAmount

if(SaveTheArrayFlag==0)
    SerialReadArray = fread(TheSerialChannel,TheSerialChannel.BytesAvailable);
    TheSaveArrayRaw((NumberOfReceivedBytes+1):(NumberOfReceivedBytes+CallbackFunctionByteNumber),1)=SerialReadArray;
    NumberOfReceivedBytes = NumberOfReceivedBytes+512;
else
    GoToGarbage = fread(TheSerialChannel,TheSerialChannel.BytesAvailable); %just read and pass, dont store , otherwise the callback does not work
end

if(NumberOfReceivedBytes>=TheSaveAmount)
    
    NumberOfReceivedBytes = 0;
    SaveTheArrayFlag = 1;
end

end