close all
%%
% figure
% hold all
% plot(out.Simout_PhaseCurrents_abc.M1_Ia,'LineWidth',2);
% plot(out.Simout_PhaseCurrents_abc.M1_Ib,'LineWidth',2);
% plot(out.Simout_PhaseCurrents_abc.M1_Ic,'LineWidth',2);
% hold off
% xlabel('Time (sec)','FontSize',12,'FontWeight','bold');
% ylabel('Current (A)','FontSize',12,'FontWeight','bold');
% title('Iabc M1')
% legend('Ia','Ib','Ic')
% set(gca,'FontSize',12,'FontWeight','bold')
% ylim([-60 60])
% 
% grid on
% 
% figure
% hold all
% plot(out.Simout_PhaseCurrents_abc.M2_Ia,'LineWidth',2);
% plot(out.Simout_PhaseCurrents_abc.M2_Ib,'LineWidth',2);
% plot(out.Simout_PhaseCurrents_abc.M2_Ic,'LineWidth',2);
% hold off
% xlabel('Time (sec)','FontSize',12,'FontWeight','bold');
% ylabel('Current (A)','FontSize',12,'FontWeight','bold');
% title('Iabc M2')
% legend('Ia','Ib','Ic')
% set(gca,'FontSize',12,'FontWeight','bold')
% % ylim([-60 60])
% 
% grid on
%%
figure
hold all
plot(out.Simout_PhaseCurrents_dq.M1_ids,'LineWidth',2);
plot(out.Simout_PhaseCurrents_dq.M1_iqs,'LineWidth',2);
hold off
xlabel('Time (sec)','FontSize',12,'FontWeight','bold');
ylabel('Current (A)','FontSize',12,'FontWeight','bold');
% title('M1 Idq')
% legend('Id','Iq')
set(gca,'FontSize',12,'FontWeight','bold')
ylim([-60 60])
grid on

% figure
hold all
plot(out.Simout_PhaseCurrents_dq.M2_ids,'LineWidth',2);
plot(out.Simout_PhaseCurrents_dq.M2_iqs,'LineWidth',2);
hold off
xlabel('Time (sec)','FontSize',12,'FontWeight','bold');
ylabel('Current (A)','FontSize',12,'FontWeight','bold');
% title('M2 Idq')
legend('M1 Id','M1 Iq','M2 Id','M2 Iq')
set(gca,'FontSize',12,'FontWeight','bold')
% ylim([-60 60])
grid on
%%
figure
% title('')
% hold all
subplot(2,1,1)
plot(out.Simout_TorqueSpeedMeas.M1_Te,'LineWidth',2);
hold on
plot(out.Simout_TorqueSpeedMeas.M2_Te,'LineWidth',2);
hold on
plot(out.Simout_TorqueSpeedRef.Combined_Tload,'LineWidth',2);
set(gca,'FontSize',12,'FontWeight','bold')
xlabel('Time (sec)','FontSize',12,'FontWeight','bold');
ylabel('Torque (Nm)','FontSize',12,'FontWeight','bold');
legend('M1 Te','M2 Te','Tload')
% ylim([-150 150])
grid on
subplot(2,1,2)
plot(out.Simout_TorqueSpeedMeas.M1_wmech  ,'LineWidth',2);
hold on
plot(out.Simout_TorqueSpeedMeas.M2_wmech  ,'LineWidth',2);
hold on
plot(out.Simout_TorqueSpeedRef.wref  ,'LineWidth',2);
% hold off
xlabel('Time (sec)','FontSize',12,'FontWeight','bold');
ylabel('Shaft Speed (rad/sec)','FontSize',12,'FontWeight','bold');
% title('Idq')
legend('M1 wmech','M2 wmech','wref')
set(gca,'FontSize',12,'FontWeight','bold')
% ylim([-150 150])
grid on
