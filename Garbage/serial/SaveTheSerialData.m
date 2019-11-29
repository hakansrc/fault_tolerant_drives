clc
clear
fclose(instrfind) % call this command for stopping callback function
%% IMPORTANT DEFINITIONS
global CallbackFunctionByteNumber
global TheSaveAmount
BaudRateValue = 230400;                 %baudrate of the serial channel can be set from here
TimeoutValue = 6;                       %Allowed time in seconds to complete read and write operations, returned as a numeric value. 
CallbackFunctionByteNumber=512;         %the callback function is called when this amount of bytes are read from the channel
TheSaveAmount = 4*1024;               %the callback function save array size in bytes  

%% IMPORTANT VARIABLES
% global variables (used for getting variables from the callback function)
global SerialReadArray          %the read values are put here first
global SerialReadOrdered        %the read values at SerialReadArray are aligned inside this array
global SerialReadConverted      %the order values at SerialReadConverted converted properly and saved inside this array
global SaveTheArrayFlag         %when this is set to 1, the main function takes data from the array and saves it
global NumberOfReceivedBytes    %this is a variable that stores number of bytes read from the serial channel, required for array operations
global TheSaveArray             %The callback function stores the data inside this large array
 


%% Main function 
NumberOfReceivedBytes = 0;
SerialChannel = serial('COM4','BaudRate',BaudRateValue,'Parity','none','Timeout',6);
SerialChannel.BytesAvailableFcnCount = CallbackFunctionByteNumber;
SerialChannel.BytesAvailableFcnMode = 'byte';
SerialChannel.BytesAvailableFcn = @SerialReadCallbackFunction;
% plot(x,y,'ButtonDownFcn',@SerialReadServant)
fopen(SerialChannel);
TheSaveArray = zeros(TheSaveAmount,1);  
SerialReadConverted = zeros(TheSaveAmount/4,1);
while(1)
    if(SaveTheArrayFlag==1)
        for i=1:1:(TheSaveAmount/4)
            SerialReadConverted(i) = typecast(uint32(hex2dec(strcat(dec2hex(TheSaveArray(4+4*(i-1)),2),dec2hex(TheSaveArray(3+4*(i-1)),2),dec2hex(TheSaveArray(2+4*(i-1)),2),dec2hex(TheSaveArray(1+4*(i-1)),2)))),'single');
        end
        plot(SerialReadConverted);
        drawnow;
        SaveTheArrayFlag = 0;
    else
         pause(0.01);
    end
end
%% The callback function
function [] =  SerialReadCallbackFunction(TheSerialChannel,TheEvent)
    global NumberOfReceivedBytes
    global CallbackFunctionByteNumber
    global SerialReadArray          %the read values are put here first
    global TheSaveArray             %The callback function stores the data inside this large array, initialized inside the main function
    global SaveTheArrayFlag         %when this is set to 1, the main function takes data from the array and saves it
    global TheSaveAmount

    if(SaveTheArrayFlag==0)
        SerialReadArray = fread(TheSerialChannel,TheSerialChannel.BytesAvailable);
        TheSaveArray((NumberOfReceivedBytes+1):(NumberOfReceivedBytes+CallbackFunctionByteNumber),1)=SerialReadArray;
        NumberOfReceivedBytes = NumberOfReceivedBytes+512;
    else
        GoToGarbage = fread(TheSerialChannel,TheSerialChannel.BytesAvailable); %just read and pass, dont store , otherwise the callback does not work
    end
    
    if(NumberOfReceivedBytes>=TheSaveAmount)
        
        NumberOfReceivedBytes = 0;
        SaveTheArrayFlag = 1;
    end 

end