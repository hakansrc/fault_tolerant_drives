FontSize = 16;
figure
refs_xlim = [0 2];
refs_ylim = [-10 16];
subplot(2,2,1)
plot(out.Simout_Reference_Idq.M1_iqref,'LineWidth',2);
hold on
plot(out.Simout_PhaseCurrents_dq.M1_iqs,'LineWidth',2);
legend('M1 iqref','M1 iq')
title('M1 iq (faulty)')
xlim(refs_xlim)
ylim(refs_ylim)
grid on
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Current (A)','FontSize',FontSize,'FontWeight','bold');
set(gca,'FontSize',FontSize,'FontWeight','bold')
subplot(2,2,2)
plot(out.Simout_Reference_Idq.M1_idref,'LineWidth',2);
hold on
plot(out.Simout_PhaseCurrents_dq.M1_ids,'LineWidth',2);
legend('M1 idref','M1 id')
title('M1 id (faulty)')
xlim(refs_xlim)
ylim(refs_ylim)
grid on
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Current (A)','FontSize',FontSize,'FontWeight','bold');
set(gca,'FontSize',FontSize,'FontWeight','bold')
subplot(2,2,3)
plot(out.Simout_Reference_Idq.M2_iqref,'LineWidth',2);
hold on
plot(out.Simout_PhaseCurrents_dq.M2_iqs,'LineWidth',2);
legend('M2 iqref','M2 iq')
title('M2 iq (healthy)')
xlim(refs_xlim)
ylim(refs_ylim)
grid on
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Current (A)','FontSize',FontSize,'FontWeight','bold');
set(gca,'FontSize',FontSize,'FontWeight','bold')
subplot(2,2,4)
plot(out.Simout_Reference_Idq.M2_idref,'LineWidth',2);
hold on
plot(out.Simout_PhaseCurrents_dq.M2_ids,'LineWidth',2);
legend('M2 idref','M2 id')
title('M2 id (healthy)')
xlim(refs_xlim)
ylim(refs_ylim)
grid on
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Current (A)','FontSize',FontSize,'FontWeight','bold');
set(gca,'FontSize',FontSize,'FontWeight','bold')
%%
FontSize = 16;
figure
refs_xlim = [1.8 2];
refs_ylim = [-10 16];
subplot(2,2,1)
plot(out.Simout_Reference_Idq.M1_iqref,'LineWidth',2);
hold on
plot(out.Simout_PhaseCurrents_dq.M1_iqs,'LineWidth',2);
legend('M1 iqref','M1 iq')
title('M1 iq (faulty)')
xlim(refs_xlim)
ylim(refs_ylim)
grid on
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Current (A)','FontSize',FontSize,'FontWeight','bold');
set(gca,'FontSize',FontSize,'FontWeight','bold')
subplot(2,2,2)
plot(out.Simout_Reference_Idq.M1_idref,'LineWidth',2);
hold on
plot(out.Simout_PhaseCurrents_dq.M1_ids,'LineWidth',2);
legend('M1 idref','M1 id')
title('M1 id (faulty)')
xlim(refs_xlim)
ylim(refs_ylim)
grid on
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Current (A)','FontSize',FontSize,'FontWeight','bold');
set(gca,'FontSize',FontSize,'FontWeight','bold')
subplot(2,2,3)
plot(out.Simout_Reference_Idq.M2_iqref,'LineWidth',2);
hold on
plot(out.Simout_PhaseCurrents_dq.M2_iqs,'LineWidth',2);
legend('M2 iqref','M2 iq')
title('M2 iq (healthy)')
xlim(refs_xlim)
ylim(refs_ylim)
grid on
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Current (A)','FontSize',FontSize,'FontWeight','bold');
set(gca,'FontSize',FontSize,'FontWeight','bold')
subplot(2,2,4)
plot(out.Simout_Reference_Idq.M2_idref,'LineWidth',2);
hold on
plot(out.Simout_PhaseCurrents_dq.M2_ids,'LineWidth',2);
legend('M2 idref','M2 id')
title('M2 id (healthy)')
xlim(refs_xlim)
ylim(refs_ylim)
grid on
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Current (A)','FontSize',FontSize,'FontWeight','bold');
set(gca,'FontSize',FontSize,'FontWeight','bold')

%%
figure
subplot(2,1,1)
plot(out.Simout_TorqueSpeedMeas.M1_Te,'LineWidth',2);
hold on
plot(out.Simout_TorqueSpeedMeas.M2_Te,'LineWidth',2);
grid on
% ylim([0 15])
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
grid on
%%
figure
subplot(2,1,1)
plot(out.Simout_TorqueSpeedMeas.M1_Te,'LineWidth',2);
hold on
plot(out.Simout_TorqueSpeedMeas.M2_Te,'LineWidth',2);
grid on
xlim([1.8 2])
% ylim([0 15])
set(gca,'FontSize',FontSize,'FontWeight','bold')
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Torque (Nm)','FontSize',FontSize,'FontWeight','bold');
legend('M1 Te','M2 Te')
subplot(2,1,2)
grid on 
plot((out.Simout_TorqueSpeedMeas.M1_Te+out.Simout_TorqueSpeedMeas.M2_Te),'LineWidth',2);
hold on
plot(out.Simout_TorqueSpeedRef.Combined_Tload,'LineWidth',2);
xlim([1.8 2])
set(gca,'FontSize',FontSize,'FontWeight','bold')
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Torque (Nm)','FontSize',FontSize,'FontWeight','bold');
legend('M1 Te + M2 Te','Tload')
grid on
%%
% close all
FontSize = 16;
figure
loss_xlim = [1.8 2];
% hold all
subplot(2,2,1)
plot(out.Simout_losses.M1_loss,'LineWidth',2);
title('M1 loss')
xlim(loss_xlim)
ylim([0 180])
grid on
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Loss (W)','FontSize',FontSize,'FontWeight','bold');
set(gca,'FontSize',FontSize,'FontWeight','bold')
subplot(2,2,2)
plot(out.Simout_losses.M2_loss,'LineWidth',2);
title('M2 loss')
xlim(loss_xlim)
ylim([0 180])
grid on
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Loss (W)','FontSize',FontSize,'FontWeight','bold');
set(gca,'FontSize',FontSize,'FontWeight','bold')
subplot(2,2,3)
plot(out.Simout_losses.Total_loss,'LineWidth',2);
title('Total loss')
xlim(loss_xlim)
ylim([0 180])
grid on
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Loss (W)','FontSize',FontSize,'FontWeight','bold');
set(gca,'FontSize',FontSize,'FontWeight','bold')
subplot(2,2,4)
plot(out.Simout_losses.Mean_loss,'LineWidth',2);
title('Mean loss')
xlim(loss_xlim)
ylim([0 180])
grid on
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Loss (W)','FontSize',FontSize,'FontWeight','bold');
set(gca,'FontSize',FontSize,'FontWeight','bold')
% hold off
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Loss (W)','FontSize',FontSize,'FontWeight','bold');
% title('Iabc M1')
% legend('M1_loss','M2_loss','Total_loss','Mean_loss')
set(gca,'FontSize',FontSize,'FontWeight','bold')