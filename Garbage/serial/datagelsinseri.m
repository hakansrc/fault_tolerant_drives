%%
clc
clear
global Ab
s = serial('COM6','BaudRate',115200,'Parity','none','Timeout',6);
s.BytesAvailableFcnCount = 8    ;
s.BytesAvailableFcnMode = 'byte';
s.BytesAvailableFcn = @SerialReadServant;
% plot(x,y,'ButtonDownFcn',@SerialReadServant)
fopen(s);
% plot(Ab,'ButtonDownFcn',{@SerialReadServant,'--','*'})

% A = fread(s);
% pause(1);
% fclose(s);
%%
% % while(1)
% %     plot(Ab);
% %     drawnow;
% % end
%%
function [] =  SerialReadServant(src,evt)
    global Ab
    Ab = fread(src,src.BytesAvailable);
    Ab_converted=typecast(uint32(hex2dec(strcat(dec2hex(Ab(4)),dec2hex(Ab(3)),dec2hex(Ab(2)),dec2hex(Ab(1))))),'single');
    fprintf("%f\n",Ab_converted);
    Ab_converted=typecast(uint32(hex2dec(strcat(dec2hex(Ab(8)),dec2hex(Ab(7)),dec2hex(Ab(6)),dec2hex(Ab(5))))),'single');
    fprintf("%f\n",Ab_converted);

%     animatedline(Ab);
%     src.Color = 'red';
%     plot(Ab);
%     drawnow;

%     disp(evt)
%     disp(evt.Data)
end
% fclose(instrfind)
