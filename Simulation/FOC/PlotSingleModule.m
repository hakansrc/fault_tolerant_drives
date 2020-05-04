close all
%% fault moment
figure
subplot(5,1,1)
plot(id.id)
hold on
plot(id.idref)
set(gca,'FontSize',12,'FontWeight','bold')
title('id')
grid on
xlim([2.9 3.6])
legend('id measured','idref')

% figure
subplot(5,1,2)
plot(iq.iq)
hold on
plot(iq.iqref)
set(gca,'FontSize',12,'FontWeight','bold')
title('iq')
grid on
xlim([2.9 3.6])
legend('iq measured','iqref')

% figure
subplot(5,1,3)
plot(id.id.Time,isabc.Data)
set(gca,'FontSize',12,'FontWeight','bold')
title('iabc')
grid on
xlim([2.9 3.6])

% figure
subplot(5,1,4)
plot(torque.Te)
hold on
plot(torque.Tload)
set(gca,'FontSize',12,'FontWeight','bold')
title('torque')
grid on
xlim([2.9 3.6])
legend('Te','Tload')

% figure
subplot(5,1,5)
plot(wm.wm)
hold on
plot(wm.wref)
set(gca,'FontSize',12,'FontWeight','bold')
title('rotor speed')
grid on
xlim([2.9 3.6])
legend('wm','wref')

%% speedref update
figure
subplot(5,1,1)
plot(id.id)
hold on
plot(id.idref)
set(gca,'FontSize',12,'FontWeight','bold')
title('id')
grid on
xlim([5.9 6.6])
legend('id measured','idref')

% figure
subplot(5,1,2)
plot(iq.iq)
hold on
plot(iq.iqref)
set(gca,'FontSize',12,'FontWeight','bold')
title('iq')
grid on
xlim([5.9 6.6])
legend('iq measured','iqref')

% figure
subplot(5,1,3)
plot(id.id.Time,isabc.Data)
set(gca,'FontSize',12,'FontWeight','bold')
title('iabc')
grid on
xlim([2.9 3.6])

% figure
subplot(5,1,4)
plot(torque.Te)
hold on
plot(torque.Tload)
set(gca,'FontSize',12,'FontWeight','bold')
title('torque')
grid on
xlim([5.9 6.6])
legend('Te','Tload')

% figure
subplot(5,1,5)
plot(wm.wm)
hold on
plot(wm.wref)
set(gca,'FontSize',12,'FontWeight','bold')
title('rotor speed')
grid on
xlim([5.9 6.6])
legend('wm','wref')

%% overall
figure
subplot(5,1,1)
plot(id.id)
hold on
plot(id.idref)
set(gca,'FontSize',12,'FontWeight','bold')
title('id')
grid on
legend('id measured','idref')

% figure
subplot(5,1,2)
plot(iq.iq)
hold on
plot(iq.iqref)
set(gca,'FontSize',12,'FontWeight','bold')
title('iq')
grid on
legend('iq measured','iqref')

% figure
subplot(5,1,3)
plot(id.id.Time,isabc.Data)
set(gca,'FontSize',12,'FontWeight','bold')
title('iabc')
grid on

% figure
subplot(5,1,4)
plot(torque.Te)
hold on
plot(torque.Tload)
set(gca,'FontSize',12,'FontWeight','bold')
title('torque')
grid on
legend('Te','Tload')

% figure
subplot(5,1,5)
plot(wm.wm)
hold on
plot(wm.wref)
set(gca,'FontSize',12,'FontWeight','bold')
title('rotor speed')
grid on
xlim([5.9 6.6])
legend('wm','wref')