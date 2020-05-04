close all
figure
subplot(4,2,1)
plot(SimulationResults.id1.id)
hold on
plot(SimulationResults.id1.signal2)
set(gca,'FontSize',12,'FontWeight','bold')
title('id m1')
grid on
% xlim([2.9 3.6])
ylim([-3 3])
legend('id measured','idref')
%%
% figure
subplot(4,2,2)
plot(SimulationResults.id2.id)
hold on
plot(SimulationResults.id2.signal2)
set(gca,'FontSize',12,'FontWeight','bold')
title('id m2')
grid on
% xlim([2.9 3.6])
ylim([-3 3])
legend('id measured','idref')
%%
% figure
subplot(4,2,3)
plot(SimulationResults.iq1.signal1)
hold on
plot(SimulationResults.iq1.signal2)
set(gca,'FontSize',12,'FontWeight','bold')
title('iq m2')
grid on
% xlim([2.9 3.6])
ylim([-3 3])
legend('iq measured','iqref')
%%
% figure
subplot(4,2,4)
plot(SimulationResults.iq2.signal1)
hold on
plot(SimulationResults.iq2.signal2)
set(gca,'FontSize',12,'FontWeight','bold')
title('iq m2')
grid on
% xlim([2.9 3.6])
ylim([-3 3])
legend('iq measured','iqref')
%%
% figure
subplot(4,2,5)
plot(SimulationResults.iq2.signal2.Time,SimulationResults.iabc1.Data)
% hold on
% plot(SimulationResults.iq1.signal2)
set(gca,'FontSize',12,'FontWeight','bold')
title('iabc1')
grid on
% xlim([2.9 3.6])
ylim([-3 3])
%%
% figure
subplot(4,2,6)
plot(SimulationResults.iq2.signal2.Time,SimulationResults.iabc2.Data)
% hold on
% plot(SimulationResults.iq1.signal2)
set(gca,'FontSize',12,'FontWeight','bold')
title('iabc2')
grid on
% xlim([2.9 3.6])
ylim([-3 3])
%%
% figure
subplot(4,2,7)
plot(SimulationResults.Torque.Te1)
hold on
plot(SimulationResults.Torque.Te)
hold on
plot(SimulationResults.Torque.signal3)
set(gca,'FontSize',12,'FontWeight','bold')
title('torque sharing of modules')
grid on
% xlim([2.9 3.6])
ylim([-1 8])
legend('T1','T2','Tload')
%%
% figure
subplot(4,2,8)
plot(SimulationResults.rotor_speed.wm)
hold on
plot(SimulationResults.rotor_speed.wref)
set(gca,'FontSize',12,'FontWeight','bold')
title('rotor speed')
grid on
% xlim([2.9 3.6])
legend('wm','wmref')