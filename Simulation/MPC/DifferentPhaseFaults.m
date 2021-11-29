clc
clear
close all

angle = 0:0.01:360;

% ia = sind(angle-180-120);
ib = 0*cosd(angle-120);
% ic = -ia;%cosd(angle+120);

ic = sind(angle-120);
ia = -ic;


id = 2/3*(sind(angle).*ia + sind(angle-120).*ib + sind(angle+120).*ic);
iq = 2/3*(cosd(angle).*ia + cosd(angle-120).*ib + cosd(angle+120).*ic);
% id = sind(angle).*ia + sind(angle-120).*ib + sind(angle+120).*ic;


% hold on
figure(5)
subplot(2,1,1)
hold on
plot(angle,id)
title('ia = -ic; ib=0; ic=sind(angle-120)')
subplot(2,1,2)
hold on
plot(angle,iq)
% hold on
% plot(iq)
% figure(2)
% plot(ia)
% hold on
% plot(ib)
% hold on
% plot(ic)
%%

ia = 0;
ib = sind(angle);
ic = -ib;

id = 2/3*(sind(angle).*ia + sind(angle-120).*ib + sind(angle+120).*ic);
iq = 2/3*(cosd(angle).*ia + cosd(angle-120).*ib + cosd(angle+120).*ic);
% id = sind(angle).*ia + sind(angle-120).*ib + sind(angle+120).*ic;


figure(5)
subplot(2,1,1)
hold on
plot(angle,id)
title('ia = 0; ib=sind(angle); ic=-ib')
subplot(2,1,2)
hold on
plot(angle,iq)





%%
ia = sind(angle+120);
ib = -ia;
ic = 0;


id = 2/3*(sind(angle).*ia + sind(angle-120).*ib + sind(angle+120).*ic);
iq = 2/3*(cosd(angle).*ia + cosd(angle-120).*ib + cosd(angle+120).*ic);
% id = sind(angle).*ia + sind(angle-120).*ib + sind(angle+120).*ic;


figure(5)
subplot(2,1,1)
hold on
plot(angle,id)
legend('ib=0','ia=0','ic=0')
% title('ia = sind(angle+120); ib=-ib; ic=0')
subplot(2,1,2)
hold on
plot(angle,iq)
legend('ib=0','ia=0','ic=0')



%%
figure(6)
subplot(2,1,1)
plot(angle,-sind(2*angle-120)*0.5) % ib = 0;
hold on
plot(angle,-sind(2*angle)*0.5) % ia = 0;
hold on
plot(angle,-sind(2*angle+120)*0.5) % ib = 0;
legend('ib=0','ia=0','ic=0')
subplot(2,1,2)
plot(angle,(1-cosd(2*angle-120))*0.5)
hold on
plot(angle,(1-cosd(2*angle))*0.5)
hold on
plot(angle,(1-cosd(2*angle+120))*0.5)
legend('ib=0','ia=0','ic=0')

%%
figure(7)
ia = sind(angle+120);
ib = -ia;
ic = 0;

% % ib = sind(angle-60);
% ia = -ib;


id = 2/3*(sind(angle).*ia + sind(angle-120).*ib + sind(angle+120).*ic);
iq = 2/3*(cosd(angle).*ia + cosd(angle-120).*ib + cosd(angle+120).*ic);
% id = sind(angle).*ia + sind(angle-120).*ib + sind(angle+120).*ic;

subplot(2,2,1)
plot(angle,id)
legend('id')

subplot(2,2,2)
plot(angle,iq)
legend('iq')

subplot(2,2,3)
plot(angle,-sind(2*angle+240))
legend('id')

subplot(2,2,4)
plot(angle,1-cosd(2*angle+240))
legend('iq')


%%
figure(8)
ia = 0;
ib = sind(angle);
ic = -ib;

id = 2/3*(sind(angle).*ia + sind(angle-120).*ib + sind(angle+120).*ic);
iq = 2/3*(cosd(angle).*ia + cosd(angle-120).*ib + cosd(angle+120).*ic);
% id = sind(angle).*ia + sind(angle-120).*ib + sind(angle+120).*ic;

subplot(2,2,1)
plot(angle,id)
legend('id')

subplot(2,2,2)
plot(angle,iq)
legend('iq')

subplot(2,2,3)
plot(angle,-sind(2*angle))
legend('id')

subplot(2,2,4)
plot(angle,1-cosd(2*angle))
legend('iq')


%%
figure(9)
% ia = sind(angle-180-120);
ib = 0*cosd(angle-120);
% ic = -ia;%cosd(angle+120);

ic = sind(angle-120);
ia = -ic;

% ia = sind(angle+60);
% ic = -ia;



id = 2/3*(sind(angle).*ia + sind(angle-120).*ib + sind(angle+120).*ic);
iq = 2/3*(cosd(angle).*ia + cosd(angle-120).*ib + cosd(angle+120).*ic);
% id = sind(angle).*ia + sind(angle-120).*ib + sind(angle+120).*ic;

subplot(2,2,1)
plot(angle,id)
legend('id')

subplot(2,2,2)
plot(angle,iq)
legend('iq')

subplot(2,2,3)
plot(angle,-sind(2*angle-240))
legend('id')

subplot(2,2,4)
plot(angle,1-cosd(2*angle-240))
legend('iq')
%%
close all




ia = 0;
ib = sind(angle);
ic = -ib;
id = 2/3*(sind(angle).*ia + sind(angle-120).*ib + sind(angle+120).*ic);
iq = 2/3*(cosd(angle).*ia + cosd(angle-120).*ib + cosd(angle+120).*ic);

figure(99)
subplot(2,1,1)
hold on
plot(angle,id,'linewidth',2)
subplot(2,1,2)
hold on
plot(angle,iq,'linewidth',2)

ib = 0*cosd(angle-120);
ic = sind(angle-120);
ia = -ic;
id = 2/3*(sind(angle).*ia + sind(angle-120).*ib + sind(angle+120).*ic);
iq = 2/3*(cosd(angle).*ia + cosd(angle-120).*ib + cosd(angle+120).*ic);


figure(99)
subplot(2,1,1)
hold on
plot(angle,id,'linewidth',2)
subplot(2,1,2)
hold on
plot(angle,iq,'linewidth',2)


ia = sind(angle+120);
ib = -ia;
ic = 0;
id = 2/3*(sind(angle).*ia + sind(angle-120).*ib + sind(angle+120).*ic);
iq = 2/3*(cosd(angle).*ia + cosd(angle-120).*ib + cosd(angle+120).*ic);

figure(99)
subplot(2,1,1)
hold on
plot(angle,id,'linewidth',2)
title('(a)')
legend('I_a= 0','I_b= 0','I_c= 0')
set(gca,'XTick',(0:60:360))
set(gca,'YTick',(-1:0.2:1))
xlabel('Angle (deg)','FontSize',16)
ylabel('Current (A)','FontSize',16,'FontWeight','bold');
xlim([0 360])
ylim([-0.6 0.6])
grid on
set(gca,'FontSize',16,'FontWeight','bold')
subplot(2,1,2)
hold on
plot(angle,iq,'linewidth',2)
title('(b)')
legend('I_a= 0','I_b= 0','I_c= 0')
set(gca,'XTick',(0:60:360))
set(gca,'YTick',(0:0.2:1.2))
xlabel('Angle (deg)','FontSize',16)
ylabel('Current (A)','FontSize',16,'FontWeight','bold');
xlim([0 360])
ylim([0 1.2])
set(gca,'FontSize',16,'FontWeight','bold')
grid on

set(gcf, 'Position',  [100, 100, 1000, 800])


