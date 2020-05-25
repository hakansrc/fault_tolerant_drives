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
subplot(2,1,1)
hold all
plot(out.Simout_PhaseCurrents_dq.M1_ids,'LineWidth',2);
plot(out.Simout_PhaseCurrents_dq.M1_iqs,'LineWidth',2);
hold off
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Current (A)','FontSize',FontSize,'FontWeight','bold');
% title('M1 Idq')
legend('M1 Id','M1 Iq')
set(gca,'FontSize',FontSize,'FontWeight','bold')
ylim([-10 25])
grid on

% figure
subplot(2,1,2)
hold all
plot(out.Simout_PhaseCurrents_dq.M2_ids,'LineWidth',2);
plot(out.Simout_PhaseCurrents_dq.M2_iqs,'LineWidth',2);
hold off
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Current (A)','FontSize',FontSize,'FontWeight','bold');
% title('M2 Idq')
legend('M2 Id','M2 Iq')
set(gca,'FontSize',FontSize,'FontWeight','bold')
ylim([-10 25])
grid on
%%
xlimval_upper = 0.58;
xlimval_lower = 0.48;

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
xlim([xlimval_lower xlimval_upper])
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
xlim([xlimval_lower xlimval_upper])
%% 123
figure
% title('')
% hold all
subplot(2,1,1)
plot(out.Simout_TorqueSpeedMeas.M1_Te,'LineWidth',2);
hold on
plot(out.Simout_TorqueSpeedMeas.M2_Te,'LineWidth',2);
grid on
ylim([-5 60])
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
ylim([-5 60])
grid on

%%
% subplot(3,1,3)
figure
plot(out.Simout_TorqueSpeedMeas.M1_wmech  ,'LineWidth',2);
hold on
plot(out.Simout_TorqueSpeedMeas.M2_wmech  ,'LineWidth',2);
hold on
plot(out.Simout_TorqueSpeedRef.wref  ,'LineWidth',2);
% hold off
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Shaft Speed (rad/sec)','FontSize',FontSize,'FontWeight','bold');
% title('Idq')
legend('M1 wmech','M2 wmech','wref')
set(gca,'FontSize',FontSize,'FontWeight','bold')
% ylim([-150 150])
grid on
