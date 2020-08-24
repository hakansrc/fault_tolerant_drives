close all
FontSize = 18;
%%
figure
subplot(2,1,1)
hold all
plot(out.Simout_PhaseCurrents_abc.M1_Ia,'LineWidth',2);
plot(out.Simout_PhaseCurrents_abc.M1_Ib,'LineWidth',2);
plot(out.Simout_PhaseCurrents_abc.M1_Ic,'LineWidth',2);
hold off
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Current (A)','FontSize',FontSize,'FontWeight','bold');
title('Iabc M1')
legend('Ia1','Ib1','Ic1')
set(gca,'FontSize',FontSize,'FontWeight','bold')
ylim([-20 20])

grid on

% figure
subplot(2,1,2)
hold all
plot(out.Simout_PhaseCurrents_abc.M2_Ia,'LineWidth',2);
plot(out.Simout_PhaseCurrents_abc.M2_Ib,'LineWidth',2);
plot(out.Simout_PhaseCurrents_abc.M2_Ic,'LineWidth',2);
hold off
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Current (A)','FontSize',FontSize,'FontWeight','bold');
title('Iabc M2')
legend('Ia2','Ib2','Ic2')
set(gca,'FontSize',FontSize,'FontWeight','bold')
ylim([-20 20])

grid on
%%
figure
subplot(3,1,1)
hold all
plot(out.Simout_PhaseCurrents_dq.M1_ids,'LineWidth',2);
plot(out.Simout_PhaseCurrents_dq.M1_iqs,'LineWidth',2);
hold off
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Current (A)','FontSize',FontSize,'FontWeight','bold');
% title('M1 Idq')
legend('M1 Id','M1 Iq')
set(gca,'FontSize',FontSize,'FontWeight','bold')
% ylim([-10 15])
grid on

% figure
subplot(3,1,2)
hold all
plot(out.Simout_PhaseCurrents_dq.M2_ids,'LineWidth',2);
plot(out.Simout_PhaseCurrents_dq.M2_iqs,'LineWidth',2);
hold off
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Current (A)','FontSize',FontSize,'FontWeight','bold');
% title('M2 Idq')
legend('M2 Id','M2 Iq')
set(gca,'FontSize',FontSize,'FontWeight','bold')
% ylim([-10 15])
grid on

subplot(3,1,3)
plot(out.Simout_PhaseCurrents_dq.M1_iqripple,'LineWidth',2);
hold on
plot(out.Simout_PhaseCurrents_dq.M2_iqripple,'LineWidth',2);
set(gca,'FontSize',FontSize,'FontWeight','bold')
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Delta iq (A)','FontSize',FontSize,'FontWeight','bold');
legend('M1 iqripple','M2 iqripple')
% ylim([-150 150])
% ylim([-5 40])
grid on

%%

figure
% title('')
% hold all
subplot(2,1,1)
plot(out.Simout_TorqueSpeedMeas.M1_Te,'LineWidth',2);
hold on
plot(out.Simout_TorqueSpeedMeas.M2_Te,'LineWidth',2);
grid on
% hold on
% plot((out.Simout_TorqueSpeedMeas.M1_Te+out.Simout_TorqueSpeedMeas.M2_Te),'LineWidth',2);
% hold on
% plot(out.Simout_TorqueSpeedRef.Combined_Tload,'LineWidth',2);
set(gca,'FontSize',FontSize,'FontWeight','bold')
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Torque (Nm)','FontSize',FontSize,'FontWeight','bold');
legend('M1 Te','M2 Te')
% xlim([xlimval_lower xlimval_upper])
subplot(2,1,2)
grid on 
plot((out.Simout_TorqueSpeedMeas.M1_Te+out.Simout_TorqueSpeedMeas.M2_Te),'LineWidth',2);
hold on
plot(out.Simout_TorqueSpeedRef.Combined_Tload,'LineWidth',2);
set(gca,'FontSize',FontSize,'FontWeight','bold')
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Torque (Nm)','FontSize',FontSize,'FontWeight','bold');
legend('M1 Te + M2 Te','Tload')
% ylim([-150 150])
grid on
% xlim([xlimval_lower xlimval_upper])
%% 123
figure
% title('')
% hold all
subplot(2,1,1)
plot(out.Simout_TorqueSpeedMeas.M1_Te,'LineWidth',2);
hold on
plot(out.Simout_TorqueSpeedMeas.M2_Te,'LineWidth',2);
grid on
xlim([0.95 1.05])
% ylim([-5 35])
set(gca,'FontSize',FontSize,'FontWeight','bold')
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Torque (Nm)','FontSize',FontSize,'FontWeight','bold');
legend('M1 Te','M2 Te')
subplot(2,1,2)
grid on 
plot((out.Simout_TorqueSpeedMeas.M1_Te+out.Simout_TorqueSpeedMeas.M2_Te),'LineWidth',2);
hold on
plot(out.Simout_TorqueSpeedRef.Combined_Tload,'LineWidth',2);
set(gca,'FontSize',FontSize,'FontWeight','bold')
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Torque (Nm)','FontSize',FontSize,'FontWeight','bold');
legend('M1 Te + M2 Te','Tload')
% ylim([-150 150])
xlim([0.95 1.05])
grid on




%%
% subplot(3,1,3)
figure
plot(out.Simout_TorqueSpeedMeas.M2_wmech*60/(2*pi)  ,'LineWidth',2);
hold on
plot(out.Simout_TorqueSpeedRef.wref*60/(2*pi)  ,'LineWidth',2);
% hold off
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Shaft Speed (RPM)','FontSize',FontSize,'FontWeight','bold');
% title('Idq')
legend('shaftspeed','speedref')
set(gca,'FontSize',FontSize,'FontWeight','bold')
% ylim([-150 150])
grid on

%%
figure
subplot(3,1,1)
hold all
plot(out.Simout_TorqueSpeedMeas.M1_wmech*60/(2*pi)  ,'LineWidth',2);
hold off
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Shaft Speed (RPM)','FontSize',FontSize,'FontWeight','bold');
title('Shaft Speed')
legend('shaftspeed')
set(gca,'FontSize',FontSize,'FontWeight','bold')

grid on

% figure
subplot(3,1,2)
hold all
plot(out.Simout_Fsw.M1_fsw_out/1000, 'LineWidth',2);
plot(out.Simout_Fsw.M2_fsw_out/1000, 'LineWidth',2);
hold off
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Fsw (kHz)','FontSize',FontSize,'FontWeight','bold');
title('Switching frequencies')
legend('Module 1','Module 2')
set(gca,'FontSize',FontSize,'FontWeight','bold')

grid on

% figure
subplot(3,1,3)
hold all
plot(out.Simout_PhaseCurrents_dq.M1_iqripple,'LineWidth',2);
hold on
plot(out.Simout_PhaseCurrents_dq.M2_iqripple,'LineWidth',2);
hold off
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Delta iq (A)','FontSize',FontSize,'FontWeight','bold');
title('iq ripple')
legend('M1','M2')
set(gca,'FontSize',FontSize,'FontWeight','bold')

grid on
%%
figure
subplot(3,1,1)
hold all
plot(out.Simout_PhaseCurrents_dq.M1_ids,'LineWidth',2);
plot(out.Simout_PhaseCurrents_dq.M1_iqs,'LineWidth',2);
hold off
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Current (A)','FontSize',FontSize,'FontWeight','bold');
% title('M1 Idq')
legend('M1 Id','M1 Iq')
set(gca,'FontSize',FontSize,'FontWeight','bold')
xlim([2.5 2.55])
grid on

% figure
subplot(3,1,2)
hold all
plot(out.Simout_PhaseCurrents_dq.M2_ids,'LineWidth',2);
plot(out.Simout_PhaseCurrents_dq.M2_iqs,'LineWidth',2);
hold off
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Current (A)','FontSize',FontSize,'FontWeight','bold');
% title('M1 Idq')
legend('M2 Id','M2 Iq')
set(gca,'FontSize',FontSize,'FontWeight','bold')
xlim([2.5 2.55])
grid on

% figure
subplot(3,1,3)
hold all
plot(out.Simout_Fsw.M1_fsw_out/1000, 'LineWidth',2);
plot(out.Simout_Fsw.M2_fsw_out/1000, 'LineWidth',2);
hold off
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Fsw (kHz)','FontSize',FontSize,'FontWeight','bold');
title('Switching frequencies')
legend('Module 1','Module 2')
set(gca,'FontSize',FontSize,'FontWeight','bold')
xlim([2.5 2.55])
grid on