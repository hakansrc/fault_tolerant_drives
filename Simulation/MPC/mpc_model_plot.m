close all
%%
FontSize = 16;
figure
hold all
plot(out.Simout_PhaseCurrents_abc.Ia,'LineWidth',2);
plot(out.Simout_PhaseCurrents_abc.Ib,'LineWidth',2);
plot(out.Simout_PhaseCurrents_abc.Ic,'LineWidth',2);
hold off
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Current (A)','FontSize',FontSize,'FontWeight','bold');
title('Iabc')
legend('Ia','Ib','Ic')
set(gca,'FontSize',FontSize,'FontWeight','bold')
% ylim([-30 30])

grid on
%%
figure
subplot(2,1,1)
hold all
plot(out.Simout_PhaseCurrents_dq.ids,'LineWidth',2);
plot(out.Simout_PhaseCurrents_dq.iqs,'LineWidth',2);
hold off

xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Current (A)','FontSize',FontSize,'FontWeight','bold');
title('Idq')
legend('Id','Iq')
set(gca,'FontSize',FontSize,'FontWeight','bold')
grid on
subplot(2,1,2)
plot(out.Simout_PhaseCurrents_dq.iqripple,'LineWidth',2);
xlabel('');
title('iqripple')
ylabel('Delta iq (A)','FontSize',FontSize,'FontWeight','bold');
set(gca,'FontSize',FontSize,'FontWeight','bold')
ylim([-5 5])
grid on
%%
figure
hold all
subplot(2,1,1)
plot(out.Simout_Fsw/1000,'LineWidth',2);
hold off
grid on
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Frequency (kHz)','FontSize',FontSize,'FontWeight','bold');
title('Switching frequency')
set(gca,'FontSize',FontSize,'FontWeight','bold')
subplot(2,1,2)
plot(out.Simout_TorqueSpeedMeas.wmech*60/(2*pi)  ,'LineWidth',2);
grid on
title('shaft speed')
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Speed (rpm)','FontSize',FontSize,'FontWeight','bold');
set(gca,'FontSize',FontSize,'FontWeight','bold')

%%
figure
% hold all
subplot(2,1,1)
plot(out.Simout_TorqueSpeedMeas.Te,'LineWidth',2);
hold on
plot(out.Simout_TorqueSpeedRef.Tload,'LineWidth',2);
set(gca,'FontSize',FontSize,'FontWeight','bold')
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Torque (Nm)','FontSize',FontSize,'FontWeight','bold');
legend('Te','Tload')
% ylim([-70 70])
grid on
subplot(2,1,2)
plot(out.Simout_TorqueSpeedMeas.wmech*60/(2*pi)  ,'LineWidth',2);
hold on
plot(out.Simout_TorqueSpeedRef.wref*60/(2*pi)  ,'LineWidth',2);
% hold off
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Speed (rpm)','FontSize',FontSize,'FontWeight','bold');
% title('Idq')
legend('shaft speed','ref')
set(gca,'FontSize',FontSize,'FontWeight','bold')
% ylim([-70 70])
grid on
%%
figure
subplot(3,1,1)
hold all
plot(out.Simout_PhaseCurrents_dq.ids,'LineWidth',2);
plot(out.Simout_PhaseCurrents_dq.iqs,'LineWidth',2);
hold off

ylabel('Current (A)','FontSize',FontSize,'FontWeight','bold');
title('Idq')
legend('Id','Iq')
set(gca,'FontSize',FontSize,'FontWeight','bold')
grid on
subplot(3,1,2)
plot(out.Simout_PhaseCurrents_dq.iqripple,'LineWidth',2);
xlabel('');
ylabel('Delta iq (A)','FontSize',FontSize,'FontWeight','bold');
title('iqripple')
set(gca,'FontSize',FontSize,'FontWeight','bold')
% ylim([-30 30])
grid on
subplot(3,1,3)
plot(out.Simout_Fsw/1000,'LineWidth',2);
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Frequency (kHz)','FontSize',FontSize,'FontWeight','bold');
title('switching frequency')
set(gca,'FontSize',FontSize,'FontWeight','bold')
% ylim([-30 30])
grid on