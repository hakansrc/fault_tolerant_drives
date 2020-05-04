% clc
% clear
%% line currents abc
figure
subplot(3,1,1) 
plot(out.LineCurrents.ia)
set(gca,'FontSize',12,'FontWeight','bold')
grid on
xlim([0.95 1.05])
ylim([-420 420])
subplot(3,1,2)
plot(out.LineCurrents.ib,'color','red')
set(gca,'FontSize',12,'FontWeight','bold')
grid on
xlim([0.95 1.05])
ylim([-420 420])
subplot(3,1,3)
plot(out.LineCurrents.ic,'color','magenta')
set(gca,'FontSize',12,'FontWeight','bold')
grid on
xlim([0.95 1.05])
ylim([-420 420])
%% line voltages abc
figure
subplot(3,1,1)
plot(out.LoadVoltages.val)
set(gca,'FontSize',12,'FontWeight','bold')
grid on
xlim([0.95 1.05])
ylim([-420 420])
subplot(3,1,2)
plot(out.LoadVoltages.vbl,'color','red')
set(gca,'FontSize',12,'FontWeight','bold')
grid on
xlim([0.95 1.05])
ylim([-420 420])
subplot(3,1,3)
plot(out.LoadVoltages.vcl,'color','magenta')
set(gca,'FontSize',12,'FontWeight','bold')
grid on
xlim([0.95 1.05])
ylim([-420 420])
%% line currents dq0 
figure
subplot(3,1,1)
plot(out.SourceCurrentsqd0.iq)
set(gca,'FontSize',12,'FontWeight','bold')
grid on
xlim([0.95 1.05])
ylim([-420 420])
subplot(3,1,2)
plot(out.SourceCurrentsqd0.id,'color','red')
set(gca,'FontSize',12,'FontWeight','bold')
grid on
xlim([0.95 1.05])
ylim([-420 420])
subplot(3,1,3)
plot(out.SourceCurrentsqd0.i0,'color','magenta')
set(gca,'FontSize',12,'FontWeight','bold')
grid on
xlim([0.95 1.05])
ylim([-420 420])
%% line voltages dq0 
figure
subplot(3,1,1)
plot(out.LoadVoltagesqd0.vq)
set(gca,'FontSize',12,'FontWeight','bold')
grid on
xlim([0.95 1.05])
ylim([-420 420])
subplot(3,1,2)
plot(out.LoadVoltagesqd0.vd,'color','red')
set(gca,'FontSize',12,'FontWeight','bold')
grid on
xlim([0.95 1.05])
ylim([-420 420])
subplot(3,1,3)
plot(out.LoadVoltagesqd0.v0,'color','magenta')
set(gca,'FontSize',12,'FontWeight','bold')
grid on
xlim([0.95 1.05])
ylim([-420 420])