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
global SaveTheDataFlag                      %This is just a flag, for non user operations
%% IMPORTANT DEFINITIONS
BaudRateValue = 921600;                 %921600 is the maximum baudrate value for now
TimeoutValue = 6;                       %Allowed time in seconds to complete read and write operations, returned as a numeric value.
CallbackFunctionByteNumber=512;         %the callback function is called when this amount of bytes are read from the channel
TheSaveUpperLimit = 20*3*1024;       
WindowArea = 5*1024*3;
TagNumber1 = '0001';                    %Tag values, these values should match with the tags stated in the DSP code (tag values are stored along with the TheSaveArrayRaw)
TagNumber2 = '0002';
TagNumber3 = '0003';
TagNumber4 = '0004';
TagNumber5 = '0005';

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

SerialChannel = serial('COM7','BaudRate',BaudRateValue,'Parity','none','Timeout',6);    %open the serial channel
SerialChannel.BytesAvailableFcnCount = CallbackFunctionByteNumber;  %set the callback function byte number
SerialChannel.BytesAvailableFcnMode = 'byte';                       %set the callback function type
SerialChannel.BytesAvailableFcn = @SerialReadCallbackFunction;      %state the callback function to be called
fopen(SerialChannel);                                               %open the serial channel port
if (EnableSaving==1)
    mkdir TestData                              %create directory for saving data
end
while(1)
    if(ShowTheDataFlag==1)
        IsMainSignalOffsetProper = 0;
        TheSaveArrayScreened = TheSaveArrayRaw(RawDataIndexPrevious:(RawDataIndexPrevious+WindowArea),1);
        %% Tag 1 conversion and elimination for live visualization
        Tag_1_Indices = strfind(TheSaveArrayScreened',TagNumber1);
        Tag_1_Value = zeros(1,numel(Tag_1_Indices));
        if(isempty(Tag_1_Indices)==0)
            if(IsMainSignalOffsetProper==0)
                MainSignalOffset = mod((Tag_1_Indices(1)-1),4);
                IsMainSignalOffsetProper = 1;
            end
            for i=1:numel(Tag_1_Indices)
                Tag_1_Indices(i) = Tag_1_Indices(i)-(i-1)*8;
                if (Tag_1_Indices(i)+8)<=numel(TheSaveArrayScreened)
                    Tag_1_Value(i) = typecast(uint32(hex2dec(strcat(dec2hex(TheSaveArrayScreened(7+Tag_1_Indices(i)),2),dec2hex(TheSaveArrayScreened(6+Tag_1_Indices(i)),2),dec2hex(TheSaveArrayScreened(5+Tag_1_Indices(i)),2),dec2hex(TheSaveArrayScreened(4+Tag_1_Indices(i)),2)))),'single');
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
        %% Tag 2 conversion and elimination for live visualization
        Tag_2_Indices = strfind(TheSaveArrayScreened',TagNumber2);
        Tag_2_Value = zeros(1,numel(Tag_2_Indices));      
        if(isempty(Tag_2_Indices)==0)
            if(IsMainSignalOffsetProper==0)
                MainSignalOffset = mod((Tag_2_Indices(1)-1),4);
                IsMainSignalOffsetProper = 1;
            end            
            for i=1:numel(Tag_2_Indices)
                Tag_2_Indices(i) = Tag_2_Indices(i)-(i-1)*8;
                if (Tag_2_Indices(i)+8)<=numel(TheSaveArrayScreened)
                    Tag_2_Value(i) = typecast(uint32(hex2dec(strcat(dec2hex(TheSaveArrayScreened(7+Tag_2_Indices(i)),2),dec2hex(TheSaveArrayScreened(6+Tag_2_Indices(i)),2),dec2hex(TheSaveArrayScreened(5+Tag_2_Indices(i)),2),dec2hex(TheSaveArrayScreened(4+Tag_2_Indices(i)),2)))),'single');
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
        %% Tag 3 conversion and elimination for live visualization
        Tag_3_Indices = strfind(TheSaveArrayScreened',TagNumber3);
        Tag_3_Value = zeros(1,numel(Tag_3_Indices));
        if(isempty(Tag_3_Indices)==0)
            if(IsMainSignalOffsetProper==0)
                MainSignalOffset = mod((Tag_3_Indices(1)-1),4);
                IsMainSignalOffsetProper = 1;
            end              
            for i=1:numel(Tag_3_Indices)
                Tag_3_Indices(i) = Tag_3_Indices(i)-(i-1)*8;
                if (Tag_3_Indices(i)+8)<=numel(TheSaveArrayScreened)
                    Tag_3_Value(i) = typecast(uint32(hex2dec(strcat(dec2hex(TheSaveArrayScreened(7+Tag_3_Indices(i)),2),dec2hex(TheSaveArrayScreened(6+Tag_3_Indices(i)),2),dec2hex(TheSaveArrayScreened(5+Tag_3_Indices(i)),2),dec2hex(TheSaveArrayScreened(4+Tag_3_Indices(i)),2)))),'single');
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
        %% Tag 4 conversion and elimination for live visualization
        Tag_4_Indices = strfind(TheSaveArrayScreened',TagNumber4);
        Tag_4_Value = zeros(1,numel(Tag_4_Indices));
        if(isempty(Tag_4_Indices)==0)
            if(IsMainSignalOffsetProper==0)
                MainSignalOffset = mod((Tag_4_Indices(1)-1),4);
                IsMainSignalOffsetProper = 1;
            end              
            for i=1:numel(Tag_4_Indices)
                Tag_4_Indices(i) = Tag_4_Indices(i)-(i-1)*8;
                if (Tag_4_Indices(i)+8)<=numel(TheSaveArrayScreened)
                    Tag_4_Value(i) = typecast(uint32(hex2dec(strcat(dec2hex(TheSaveArrayScreened(7+Tag_4_Indices(i)),2),dec2hex(TheSaveArrayScreened(6+Tag_4_Indices(i)),2),dec2hex(TheSaveArrayScreened(5+Tag_4_Indices(i)),2),dec2hex(TheSaveArrayScreened(4+Tag_4_Indices(i)),2)))),'single');
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
        %% Tag 5 conversion and elimination for live visualization
        Tag_5_Indices = strfind(TheSaveArrayScreened',TagNumber5);
        Tag_5_Value = zeros(1,numel(Tag_5_Indices));
        if(isempty(Tag_5_Indices)==0)
            if(IsMainSignalOffsetProper==0)
                MainSignalOffset = mod((Tag_5_Indices(1)-1),4);
                IsMainSignalOffsetProper = 1;
            end              
            for i=1:numel(Tag_5_Indices)
                Tag_5_Indices(i) = Tag_5_Indices(i)-(i-1)*8;
                if (Tag_5_Indices(i)+8)<=numel(TheSaveArrayScreened)
                    Tag_5_Value(i) = typecast(uint32(hex2dec(strcat(dec2hex(TheSaveArrayScreened(7+Tag_5_Indices(i)),2),dec2hex(TheSaveArrayScreened(6+Tag_5_Indices(i)),2),dec2hex(TheSaveArrayScreened(5+Tag_5_Indices(i)),2),dec2hex(TheSaveArrayScreened(4+Tag_5_Indices(i)),2)))),'single');
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
        %% Raw data conversion for live visualization
        MainSignalConverted = zeros(WindowArea/4-MainSignalOffset-8*numel(Tag_1_Indices)-8*numel(Tag_2_Indices)-8*numel(Tag_3_Indices)-8*numel(Tag_4_Indices)-8*numel(Tag_5_Indices),1); %init the array
        for i=1:1:(WindowArea/4-MainSignalOffset-8*numel(Tag_1_Indices)-8*numel(Tag_2_Indices)-8*numel(Tag_3_Indices)-8*numel(Tag_4_Indices)-8*numel(Tag_5_Indices))
            MainSignalConverted(i) = typecast(uint32(hex2dec(strcat(dec2hex(TheSaveArrayScreened(4+4*(i-1)+MainSignalOffset),2),dec2hex(TheSaveArrayScreened(3+4*(i-1)+MainSignalOffset),2),dec2hex(TheSaveArrayScreened(2+4*(i-1)+MainSignalOffset),2),dec2hex(TheSaveArrayScreened(1+4*(i-1)+MainSignalOffset),2)))),'single');
        end
        %%      
        if (EnablePlotting==1)  %for live visualization
            plot(MainSignalConverted);
            ylim([-0.05 0.05])
            xlim([0 WindowArea/4])
            grid on
            drawnow;
            fprintf("%s:%f\t\t%s:%f\t\t%s:%f\t\t%s:%f\t\t%s:%f\t\t\n",TagNumber1,mean(Tag_1_Value),TagNumber2,mean(Tag_2_Value),TagNumber3,mean(Tag_3_Value),TagNumber4,mean(Tag_4_Value),TagNumber5,mean(Tag_5_Value));
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
        ShowTheDataFlag = 0;
    else
        
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