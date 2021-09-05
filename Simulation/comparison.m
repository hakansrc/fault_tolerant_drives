clc
close all
figure(41)
plot(out.InverterLoss.M1Cond)
hold on
plot(SimulationResults.InverterLoss.M1Cond)


figure(42)
plot(out.InverterLoss.M1Fsw)
hold on
plot(SimulationResults.InverterLoss.M1Fsw)

figure(43)
plot(SimulationResults.rotor_speed.wref)
hold on
plot(SimulationResults.rotor_speed.wm*60/2/pi)
hold on
plot(out.Simout_TorqueSpeedMeas.M1_wmech*60/2/pi)

figure(44)
plot(SimulationResults.id1.ids)
hold on
plot(SimulationResults.id1.signal2)

figure(45)
subplot(2,1,1)
plot(SimulationResults.iq1.iqs)
hold on
plot(SimulationResults.iq1.signal2)
subplot(2,1,2)
plot(out.Simout_Reference_Idq.M1_iqref)
hold on
plot(out.Simout_PhaseCurrents_dq.M1_iqs)

figure(46)
subplot(2,1,1)
plot(SimulationResults.iq1.iqs)
hold on
plot(out.Simout_PhaseCurrents_dq.M1_iqs)
subplot(2,1,2)
plot(SimulationResults.iq1.signal2)
hold on
plot(out.Simout_Reference_Idq.M1_iqref)

figure(47)
subplot(2,1,1)
plot(SimulationResults.id1.ids)
hold on
plot(SimulationResults.id1.signal2)
subplot(2,1,2)
plot(out.Simout_Reference_Idq.M1_idref)
hold on
plot(out.Simout_PhaseCurrents_dq.M1_ids)

