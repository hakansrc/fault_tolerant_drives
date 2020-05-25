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
hold all
plot(out.Simout_PhaseCurrents_dq.ids,'LineWidth',2);
plot(out.Simout_PhaseCurrents_dq.iqs,'LineWidth',2);
hold off
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Current (A)','FontSize',FontSize,'FontWeight','bold');
title('Idq')
legend('Id','Iq')
set(gca,'FontSize',FontSize,'FontWeight','bold')
% ylim([-30 30])
grid on
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
plot(out.Simout_TorqueSpeedMeas.wmech  ,'LineWidth',2);
hold on
plot(out.Simout_TorqueSpeedRef.wref  ,'LineWidth',2);
% hold off
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Current (A)','FontSize',FontSize,'FontWeight','bold');
% title('Idq')
legend('wmech','wref')
set(gca,'FontSize',FontSize,'FontWeight','bold')
% ylim([-70 70])
grid on
