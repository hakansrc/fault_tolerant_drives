clear
clc
s = serial('COM4','BaudRate',115200,'Parity','none','Timeout',5);
fopen(s);
A = fread(s);
fclose(s);
fprintf("bittiabi\n");
%%
fopen(s);
out = fscanf(s);
fclose(s);
