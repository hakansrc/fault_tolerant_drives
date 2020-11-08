clear
clc
load('SimulationResults/Cost_Optimal.mat');
load('SimulationResults/Equal_Share.mat');
load('SimulationResults/Proportional_Optimal.mat');


%% Speed Performance Comparison
FontSize = 16;
SpeedPlot_xlim = [0 3];
% SpeedPlot_ylim = [];
figure
plot(Results_Cost_Optimal.Simout_TorqueSpeedMeas.M1_wmech*60/(2*pi),'LineWidth',2);
hold on
plot(Results_Proportional_Optimal.Simout_TorqueSpeedMeas.M1_wmech*60/(2*pi),'LineWidth',2);
hold on
plot(Results_Equal_Share.Simout_TorqueSpeedMeas.M1_wmech*60/(2*pi),'LineWidth',2);
hold on
plot(Results_Equal_Share.Simout_TorqueSpeedRef.wref*60/(2*pi),'LineWidth',2);
hold off
grid on
title('Speed Performance of Different Methods')
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Shaft Speed (RPM)','FontSize',FontSize,'FontWeight','bold');
legend('Cost Optimal','Proportional Optimal','Equal Share','Speed Ref','Location','southeast')
set(gca,'FontSize',FontSize,'FontWeight','bold')
xlim(SpeedPlot_xlim);
%% Idq comparison 
FontSize = 16;
figure
IdqPlot_xlim = [2.5 2.6];

subplot(2,2,1) % M1 Id's are here

plot(Results_Cost_Optimal.Simout_PhaseCurrents_dq.M1_ids,'LineWidth',2);
hold on
plot(Results_Proportional_Optimal.Simout_PhaseCurrents_dq.M1_ids,'LineWidth',2);
hold on
plot(Results_Equal_Share.Simout_PhaseCurrents_dq.M1_ids,'LineWidth',2);
grid on
title('M1 Id Waveforms for Different Methods')
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Current (A)','FontSize',FontSize,'FontWeight','bold');
legend('Cost Optimal','Proportional Optimal','Equal Share')
set(gca,'FontSize',FontSize,'FontWeight','bold')
xlim(IdqPlot_xlim);

subplot(2,2,2) % M2 Id's are here

plot(Results_Cost_Optimal.Simout_PhaseCurrents_dq.M2_ids,'LineWidth',2);
hold on
plot(Results_Proportional_Optimal.Simout_PhaseCurrents_dq.M2_ids,'LineWidth',2);
hold on
plot(Results_Equal_Share.Simout_PhaseCurrents_dq.M2_ids,'LineWidth',2);

grid on
title('M2 Id Waveforms for Different Methods')
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Current (A)','FontSize',FontSize,'FontWeight','bold');
legend('Cost Optimal','Proportional Optimal','Equal Share')
set(gca,'FontSize',FontSize,'FontWeight','bold')
xlim(IdqPlot_xlim);

subplot(2,2,3) % M1 Iq's are here
plot(Results_Cost_Optimal.Simout_PhaseCurrents_dq.M1_iqs,'LineWidth',2);
hold on
plot(Results_Proportional_Optimal.Simout_PhaseCurrents_dq.M1_iqs,'LineWidth',2);
hold on
plot(Results_Equal_Share.Simout_PhaseCurrents_dq.M1_iqs,'LineWidth',2);
grid on
title('M1 Iq Waveforms for Different Methods')
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Current (A)','FontSize',FontSize,'FontWeight','bold');
legend('Cost Optimal','Proportional Optimal','Equal Share')
set(gca,'FontSize',FontSize,'FontWeight','bold')
xlim(IdqPlot_xlim);

subplot(2,2,4) % M2 Iq's are here
plot(Results_Cost_Optimal.Simout_PhaseCurrents_dq.M2_iqs,'LineWidth',2);
hold on
plot(Results_Proportional_Optimal.Simout_PhaseCurrents_dq.M2_iqs,'LineWidth',2);
hold on
plot(Results_Equal_Share.Simout_PhaseCurrents_dq.M2_iqs,'LineWidth',2);
grid on
title('M2 Iq Waveforms for Different Methods')
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Current (A)','FontSize',FontSize,'FontWeight','bold');
legend('Cost Optimal','Proportional Optimal','Equal Share')
set(gca,'FontSize',FontSize,'FontWeight','bold')
xlim(IdqPlot_xlim);

%% Torques comparison
FontSize = 16;
figure
TorquePlot_xlim = [0 3];%[1.99 2.1];
TorquePlot_ylim = [-2 82];
TorquePlot_ylim_sum = [35 100];


subplot(3,1,1) 
plot(Results_Cost_Optimal.Simout_TorqueSpeedMeas.M1_Te,'LineWidth',2);
hold on
plot(Results_Proportional_Optimal.Simout_TorqueSpeedMeas.M1_Te,'LineWidth',2);
hold on
plot(Results_Equal_Share.Simout_TorqueSpeedMeas.M1_Te,'LineWidth',2);
grid on
xlim(TorquePlot_xlim)
ylim(TorquePlot_ylim)
title('M1 (Faulty) Torque Waveforms for Different Methods')
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Torque (Nm)','FontSize',FontSize,'FontWeight','bold');
legend('Cost Optimal','Proportional Optimal','Equal Share')
set(gca,'FontSize',FontSize,'FontWeight','bold')


subplot(3,1,2) 
plot(Results_Cost_Optimal.Simout_TorqueSpeedMeas.M2_Te,'LineWidth',2);
hold on
plot(Results_Proportional_Optimal.Simout_TorqueSpeedMeas.M2_Te,'LineWidth',2);
hold on
plot(Results_Equal_Share.Simout_TorqueSpeedMeas.M2_Te,'LineWidth',2);
grid on
xlim(TorquePlot_xlim)
ylim(TorquePlot_ylim)
title('M2 (Healthy) Torque Waveforms for Different Methods')
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Torque (Nm)','FontSize',FontSize,'FontWeight','bold');
legend('Cost Optimal','Proportional Optimal','Equal Share')
set(gca,'FontSize',FontSize,'FontWeight','bold')

subplot(3,1,3) 

plot(Results_Cost_Optimal.Simout_TorqueSpeedMeas.M1_Te+Results_Cost_Optimal.Simout_TorqueSpeedMeas.M2_Te,'LineWidth',2);
hold on
plot(Results_Proportional_Optimal.Simout_TorqueSpeedMeas.M1_Te+Results_Proportional_Optimal.Simout_TorqueSpeedMeas.M2_Te,'LineWidth',2);
hold on
plot(Results_Equal_Share.Simout_TorqueSpeedMeas.M1_Te+Results_Equal_Share.Simout_TorqueSpeedMeas.M2_Te,'LineWidth',2);
grid on
xlim(TorquePlot_xlim)
ylim(TorquePlot_ylim_sum)
title('M1+M2 Torque Waveforms for Different Methods')
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Torque (Nm)','FontSize',FontSize,'FontWeight','bold');
legend('Cost Optimal','Proportional Optimal','Equal Share')
set(gca,'FontSize',FontSize,'FontWeight','bold')

%% Overall Losses
FontSize = 16;
figure
Total_Losses_xlim = [0 3];%[1.99 2.1];
Total_Losses_ylim = [0 600];
TorquePlot_ylim_sum = [35 100];
subplot(2,1,1)
plot(Results_Cost_Optimal.Simout_losses.Mean_loss,'LineWidth',2);
hold on
plot(Results_Proportional_Optimal.Simout_losses.Mean_loss,'LineWidth',2);
hold on
plot(Results_Equal_Share.Simout_losses.Mean_loss,'LineWidth',2);
hold off
grid on
title('Total losses (Moving Average)')
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Loss (W)','FontSize',FontSize,'FontWeight','bold');
legend('Cost Optimal','Proportional Optimal','Equal Share')
set(gca,'FontSize',FontSize,'FontWeight','bold')
xlim(Total_Losses_xlim)
ylim(Total_Losses_ylim)
subplot(2,1,2)
plot(Results_Cost_Optimal.Simout_losses.Total_loss,'LineWidth',2);
hold on
plot(Results_Proportional_Optimal.Simout_losses.Total_loss,'LineWidth',2);
hold on
plot(Results_Equal_Share.Simout_losses.Total_loss,'LineWidth',2);
hold off
grid on
title('Total losses')
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Loss (W)','FontSize',FontSize,'FontWeight','bold');
legend('Cost Optimal','Proportional Optimal','Equal Share')
set(gca,'FontSize',FontSize,'FontWeight','bold')
xlim(Total_Losses_xlim)
ylim(Total_Losses_ylim)
%% Conduction Losses
FontSize = 16;
figure
Core_Losses_xlim = [1.8 1.9];
Core_Losses_ylim = [100 200];
Cond_Losses_xlim = Core_Losses_xlim;%[1.99 2.1];
Cond_Losses_ylim = [0 130];
TorquePlot_ylim_sum = [35 100];
subplot(2,1,1)
plot(Results_Cost_Optimal.Simout_losses.Total_cond_loss,'LineWidth',2);
hold on
plot(Results_Proportional_Optimal.Simout_losses.Total_cond_loss,'LineWidth',2);
hold on
plot(Results_Equal_Share.Simout_losses.Total_cond_loss,'LineWidth',2);
hold off
grid on
title('Conduction losses')
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Conduction Loss (W)','FontSize',FontSize,'FontWeight','bold');
legend('Cost Optimal','Proportional Optimal','Equal Share')
set(gca,'FontSize',FontSize,'FontWeight','bold')
xlim(Cond_Losses_xlim)
ylim(Cond_Losses_ylim)
subplot(2,1,2)
plot(Results_Cost_Optimal.Simout_losses.Total_core_loss,'LineWidth',2);
hold on
plot(Results_Proportional_Optimal.Simout_losses.Total_core_loss,'LineWidth',2);
hold on
plot(Results_Equal_Share.Simout_losses.Total_core_loss,'LineWidth',2);
hold off
grid on
title('Core losses')
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Core Loss (W)','FontSize',FontSize,'FontWeight','bold');
legend('Cost Optimal','Proportional Optimal','Equal Share')
set(gca,'FontSize',FontSize,'FontWeight','bold')
xlim(Core_Losses_xlim)
ylim(Core_Losses_ylim)
%% Phase currents
FontSize = 16;
figure
PhaseCurrents_xlim = [1.8 1.9];
% PhaseCurrents_ylim = [100 200];
subplot(3,2,1)
plot(Results_Cost_Optimal.Simout_PhaseCurrents_abc.M1_Ia,'LineWidth',2);
hold on
plot(Results_Cost_Optimal.Simout_PhaseCurrents_abc.M1_Ib,'LineWidth',2);
hold on
plot(Results_Cost_Optimal.Simout_PhaseCurrents_abc.M1_Ic,'LineWidth',2);
hold off
grid on
xlim(PhaseCurrents_xlim)
% ylim(PhaseCurrents_ylim)
title('M1 Phase current Waveforms for Cost Optimal')
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Current (A)','FontSize',FontSize,'FontWeight','bold');
legend('Ia','Ib','Ic')
set(gca,'FontSize',FontSize,'FontWeight','bold')

subplot(3,2,2)
plot(Results_Cost_Optimal.Simout_PhaseCurrents_abc.M2_Ia,'LineWidth',2);
hold on
plot(Results_Cost_Optimal.Simout_PhaseCurrents_abc.M2_Ib,'LineWidth',2);
hold on
plot(Results_Cost_Optimal.Simout_PhaseCurrents_abc.M2_Ic,'LineWidth',2);
hold off
grid on
xlim(PhaseCurrents_xlim)
title('M1 Phase current Waveforms for Cost Optimal')
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Current (A)','FontSize',FontSize,'FontWeight','bold');
legend('Ia','Ib','Ic')
set(gca,'FontSize',FontSize,'FontWeight','bold')

subplot(3,2,3)
plot(Results_Proportional_Optimal.Simout_PhaseCurrents_abc.M1_Ia,'LineWidth',2);
hold on
plot(Results_Proportional_Optimal.Simout_PhaseCurrents_abc.M1_Ib,'LineWidth',2);
hold on
plot(Results_Proportional_Optimal.Simout_PhaseCurrents_abc.M1_Ic,'LineWidth',2);
hold off
grid on
xlim(PhaseCurrents_xlim)
title('M1 Phase current Waveforms for Proportional Optimal')
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Current (A)','FontSize',FontSize,'FontWeight','bold');
legend('Ia','Ib','Ic')
set(gca,'FontSize',FontSize,'FontWeight','bold')

subplot(3,2,4)
plot(Results_Proportional_Optimal.Simout_PhaseCurrents_abc.M2_Ia,'LineWidth',2);
hold on
plot(Results_Proportional_Optimal.Simout_PhaseCurrents_abc.M2_Ib,'LineWidth',2);
hold on
plot(Results_Proportional_Optimal.Simout_PhaseCurrents_abc.M2_Ic,'LineWidth',2);
hold off
grid on
xlim(PhaseCurrents_xlim)
title('M2 Phase current Waveforms for Proportional Optimal')
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Current (A)','FontSize',FontSize,'FontWeight','bold');
legend('Ia','Ib','Ic')
set(gca,'FontSize',FontSize,'FontWeight','bold')

subplot(3,2,5)
plot(Results_Equal_Share.Simout_PhaseCurrents_abc.M1_Ia,'LineWidth',2);
hold on
plot(Results_Equal_Share.Simout_PhaseCurrents_abc.M1_Ib,'LineWidth',2);
hold on
plot(Results_Equal_Share.Simout_PhaseCurrents_abc.M1_Ic,'LineWidth',2);
hold off
grid on
xlim(PhaseCurrents_xlim)
title('M1 Phase current Waveforms for Results Equal Share')
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Current (A)','FontSize',FontSize,'FontWeight','bold');
legend('Ia','Ib','Ic')
set(gca,'FontSize',FontSize,'FontWeight','bold')

subplot(3,2,6)
plot(Results_Equal_Share.Simout_PhaseCurrents_abc.M2_Ia,'LineWidth',2);
hold on
plot(Results_Equal_Share.Simout_PhaseCurrents_abc.M2_Ib,'LineWidth',2);
hold on
plot(Results_Equal_Share.Simout_PhaseCurrents_abc.M2_Ic,'LineWidth',2);
hold off
grid on
xlim(PhaseCurrents_xlim)
title('M2 Phase current Waveforms for Results Equal Share')
xlabel('Time (sec)','FontSize',FontSize,'FontWeight','bold');
ylabel('Current (A)','FontSize',FontSize,'FontWeight','bold');
legend('Ia','Ib','Ic')
set(gca,'FontSize',FontSize,'FontWeight','bold')