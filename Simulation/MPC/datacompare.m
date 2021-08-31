clc
clear
close all

load('fsw_constant.mat')
load('fsw_variable.mat')

%%
close all

figure(42)
hold on
plot(fsw_vrb.Simout_TorqueSpeedMeas.wmech)
hold on
plot(fsw_cns.Simout_TorqueSpeedMeas.wmech)
legend('dynamic','normal')

figure(43)
hold on
plot(fsw_vrb.Simout_PhaseCurrents_dq.iqs)
hold on
plot(fsw_cns.Simout_PhaseCurrents_dq.iqs)
legend('dynamic','normal')

figure(44)
hold on
plot(fsw_vrb.Simout_TorqueSpeedMeas.Te)
hold on
plot(fsw_cns.Simout_TorqueSpeedMeas.Te)
legend('dynamic','normal')

%%
first = 'dynamic';
second = 'static';
figure(42)
title('wmech')
hold on
plot(out.Simout_TorqueSpeedMeas.wmech)
% hold on
% plot(fsw_cns.Simout_TorqueSpeedMeas.wmech)
% legend('dynamic','normal')
legend(first,second)

figure(43)
title('iq current')
hold on
plot(out.Simout_PhaseCurrents_dq.iqs)
% hold on
% plot(fsw_cns.Simout_PhaseCurrents_dq.iqs)
% legend('dynamic','normal')
legend(first,second)

figure(44)
title('Te ')
hold on
plot(out.Simout_TorqueSpeedMeas.Te)
% hold on
% plot(fsw_cns.Simout_TorqueSpeedMeas.Te)
% legend('dynamic','normal')
legend(first,second)

figure(45)
title('iq error')
hold on
plot(out.Simout_PhaseCurrents_dq.iqref - out.Simout_PhaseCurrents_dq.iqs)
legend(first,second)
grid on
