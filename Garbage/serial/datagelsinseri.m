%%
clc
clear
global Ab Ab_arrayed Ab_converted PlotFlag NumberOfReceivedBytes 
NumberOfReceivedBytes = 0;
PlotFlag = 0;

Ab_arrayed = zeros(3200,1);
Ab_converted = zeros(800,1);
global Serialreadcount
Serialreadcount = 0;
s = serial('COM6','BaudRate',460800,'Parity','none','Timeout',6);
s.BytesAvailableFcnCount = 512;
s.BytesAvailableFcnMode = 'byte';
s.BytesAvailableFcn = @SerialReadServant;
% plot(x,y,'ButtonDownFcn',@SerialReadServant)
fopen(s);
% plot(Ab,'ButtonDownFcn',{@SerialReadServant,'--','*'})

% A = fread(s);
% pause(1);
% fclose(s);

while(1)
    if(PlotFlag==1)
        for i=1:800
            Ab_converted(i) = typecast(uint32(hex2dec(strcat(dec2hex(Ab_arrayed(4+4*(i-1))),dec2hex(Ab_arrayed(3+4*(i-1))),dec2hex(Ab_arrayed(2+4*(i-1))),dec2hex(Ab_arrayed(1+4*(i-1)))))),'single');
%             fprintf("%f\n",Ab_converted(i));
        end
%         Ab_arrayed = zeros(160000,1);
        plot(Ab_converted);
        PlotFlag = 0;
    else
        pause(0.01);
    end    
%     plot(Ab_arrayed);
%     drawnow;
end
%%
function [] =  SerialReadServant(src,evt)
global Ab Ab_arrayed PlotFlag NumberOfReceivedBytes Serialreadcount
Serialreadcount = Serialreadcount+1;    
if(PlotFlag==0)
    Ab = fread(src,src.BytesAvailable);
    Ab_arrayed((NumberOfReceivedBytes+1):(NumberOfReceivedBytes+512),1)=Ab;
    NumberOfReceivedBytes = NumberOfReceivedBytes+512;
else
    somerandom = fread(src,src.BytesAvailable);
end

if(NumberOfReceivedBytes>=3200)

    NumberOfReceivedBytes = 0;
    PlotFlag = 1;
end
%     Ab_arrayed=typecast(uint32(hex2dec(strcat(dec2hex(Ab(4)),dec2hex(Ab(3)),dec2hex(Ab(2)),dec2hex(Ab(1))))),'single');
%     fprintf("%f\n",Ab_arrayed);
%     Ab_arrayed=typecast(uint32(hex2dec(strcat(dec2hex(Ab(5)),dec2hex(Ab(4)),dec2hex(Ab(3)),dec2hex(Ab(2))))),'single');
%     fprintf("%f\n",Ab_arrayed);
%     Ab_arrayed=typecast(uint32(hex2dec(strcat(dec2hex(Ab(6)),dec2hex(Ab(5)),dec2hex(Ab(4)),dec2hex(Ab(3))))),'single');
%     fprintf("%f\n",Ab_arrayed);
%     Ab_arrayed=typecast(uint32(hex2dec(strcat(dec2hex(Ab(7)),dec2hex(Ab(6)),dec2hex(Ab(5)),dec2hex(Ab(4))))),'single');
%     fprintf("%f\n",Ab_arrayed);
    
%     Ab_arrayed=typecast(uint32(hex2dec(strcat(dec2hex(Ab(8)),dec2hex(Ab(7)),dec2hex(Ab(6)),dec2hex(Ab(5))))),'single');
%     fprintf("%f\n",Ab_arrayed);

%     animatedline(Ab);
%     src.Color = 'red';
%     plot(Ab);
%     drawnow;

%     disp(evt)
%     disp(evt.Data)
end
% fclose(instrfind)
