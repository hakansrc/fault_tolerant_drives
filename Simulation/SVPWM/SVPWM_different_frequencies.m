clc
clear

Tend = 0.2;
Ts = 1e-6;

time = 0:Ts:Tend;

IdRef = 0;
IqRef = 1;
IdMeasured = 0;
IqMeasured = 1;
ShaftAngularSpeed = 50/60*2*pi;
ShaftAngle = 0;
Vdc = 40;


Ls = 3.5e-3; % Henries
Ld = Ls;
Lq = Ls;
% Ls_Machine = 3.5e-3;
Rs = 539e-3; % Ohms
PolePairs = 10;
FluxPM = 0.1808;

FswOptions = 1000:1000:10000;

Vds = zeros(numel(FswOptions),numel(time));
Vqs = zeros(numel(FswOptions),numel(time));

IdPrediction_1 = zeros(numel(FswOptions),numel(time));
IqPrediction_1 = zeros(numel(FswOptions),numel(time));
IdPrediction_2 = zeros(numel(FswOptions),numel(time));
IqPrediction_2 = zeros(numel(FswOptions),numel(time));

Vd_est_1 = zeros(numel(FswOptions),numel(time));
Vq_est_1 = zeros(numel(FswOptions),numel(time));

MagnitudePrediction_2 = zeros(numel(FswOptions),numel(time));

ValfaPrediction_2 = zeros(numel(FswOptions),numel(time));
VbetaPrediction_2 = zeros(numel(FswOptions),numel(time));

VoltageVectorAnglePrediction_2 = zeros(numel(FswOptions),numel(time));
VoltageVectorAnglePredictionMod_2 = zeros(numel(FswOptions),numel(time));

maPrediction_2 = zeros(numel(FswOptions),numel(time));

SvpwmT1Prediction_2 = zeros(numel(FswOptions),numel(time));
SvpwmT2Prediction_2 = zeros(numel(FswOptions),numel(time));
SvpwmT0Prediction_2 = zeros(numel(FswOptions),numel(time));

VoltageDuring_T1_2 = zeros(numel(FswOptions),numel(time));
VoltageDuring_T2_2 = zeros(numel(FswOptions),numel(time));
VoltageDuring_T0_2 = zeros(numel(FswOptions),numel(time));

IqDelta_Prediction_During_T1_2 = zeros(numel(FswOptions),numel(time));
IqDelta_Prediction_During_T2_2 = zeros(numel(FswOptions),numel(time));
IqDelta_Prediction_During_T0_2 = zeros(numel(FswOptions),numel(time));

IqRipplePredictionArray_2 = zeros(numel(FswOptions),numel(time));


IqRippleCoeff = 100000;
IqRefCoeff = 10000;
IdRefCoeff = 15;
FswCoeff = 1250;



for i=2:(numel(time)-1)
    
    ShaftAngle = ShaftAngle + ShaftAngularSpeed*Ts;
    ElectricalAngle = ShaftAngle*PolePairs;
    
    if(i>numel(time)/2)
        IqRef = 5;
    end
    
    if(i>(numel(time)/2+1000))
        IqMeasured = 5;
    end    
    
    for j=1:numel(FswOptions)

        IdPrediction_1(j,i) = IdMeasured + (1/FswOptions(j))*(Vds(j,i-1)/Ls-Rs/Ls*IdMeasured+Ls/Ls*PolePairs*ShaftAngularSpeed*IqMeasured);
        IqPrediction_1(j,i) = IqMeasured + (1/FswOptions(j))*(Vqs(j,i-1)/Ls-Rs/Ls*IqMeasured+Ls/Ls*PolePairs*ShaftAngularSpeed*IdMeasured-FluxPM*PolePairs*ShaftAngularSpeed/Ls);
        
        Vd_Vq_Kp = Ls/(2)*FswOptions(j);
        Vd_Vq_Ki = Rs/Ls;
        
        Vd_est_1(j,i) = Vd_Vq_Kp * (IdRef-IdPrediction_1(j,i)) * ( 1 + Vd_Vq_Ki / FswOptions(j) ) + IdMeasured - PolePairs*ShaftAngularSpeed*Ls*IqPrediction_1(j,i);
        Vq_est_1(j,i) = Vd_Vq_Kp * (IqRef-IqPrediction_1(j,i)) * ( 1 + Vd_Vq_Ki / FswOptions(j) ) + IqMeasured + PolePairs*ShaftAngularSpeed*(Ls*IdPrediction_1(j,i) + FluxPM);        
        Vds(j,i) = Vd_est_1(j,i);
        Vqs(j,i) = Vq_est_1(j,i);        
        
        MagnitudePrediction_2(j,i) = sqrt(Vd_est_1(j,i)^2+Vq_est_1(j,i)^2);
        
        ValfaPrediction_2(j,i) = sin(ElectricalAngle)*Vd_est_1(j,i)+cos(ElectricalAngle)*Vq_est_1(j,i);
        VbetaPrediction_2(j,i) =-cos(ElectricalAngle)*Vd_est_1(j,i)+sin(ElectricalAngle)*Vq_est_1(j,i);         
        
        VoltageVectorAnglePrediction_2(j,i) = atan2(VbetaPrediction_2(j,i),ValfaPrediction_2(j,i))+4*pi;
        VoltageVectorAnglePredictionMod_2(j,i) = mod(VoltageVectorAnglePrediction_2(j,i),pi/3);
        
        maPrediction_2(j,i) = MagnitudePrediction_2(j,i)/(Vdc/sqrt(3)); 
        
        SvpwmT1Prediction_2(j,i)  = (1/FswOptions(j))*maPrediction_2(j,i) *sin(pi/3-VoltageVectorAnglePredictionMod_2(j,i) );
        SvpwmT2Prediction_2(j,i)  = (1/FswOptions(j))*maPrediction_2(j,i) *sin(VoltageVectorAnglePredictionMod_2(j,i) );
        SvpwmT0Prediction_2(j,i)  = (1/FswOptions(j))-SvpwmT1Prediction_2(j,i) -SvpwmT2Prediction_2(j,i) ;         
        
        VoltageDuring_T1_2(j,i) = 2/3*Vdc-MagnitudePrediction_2(j,i);
        VoltageDuring_T2_2(j,i) = 2/3*Vdc-MagnitudePrediction_2(j,i);
        VoltageDuring_T0_2(j,i) = -MagnitudePrediction_2(j,i);       
        
        IqDelta_Prediction_During_T1_2(j,i) = -VoltageDuring_T1_2(j,i)*SvpwmT1Prediction_2(j,i)/Ls;
        IqDelta_Prediction_During_T2_2(j,i) = -VoltageDuring_T2_2(j,i)*SvpwmT2Prediction_2(j,i)/Ls;
        IqDelta_Prediction_During_T0_2(j,i) = VoltageDuring_T0_2(j,i)*SvpwmT0Prediction_2(j,i)/Ls;       
        
        IqRipplePredictionArray_2(j,i) = IqDelta_Prediction_During_T1_2(j,i)+IqDelta_Prediction_During_T2_2(j,i)+IqDelta_Prediction_During_T0_2(j,i);        
        
        IdPrediction_2(j,i) = IdPrediction_1(j,i) + (1/FswOptions(j))*(Vd_est_1(j,i)/Ld-Rs/Ld*IdPrediction_1(j,i)+Lq/Ld*PolePairs*ShaftAngularSpeed*IqPrediction_1(j,i));
        IqPrediction_2(j,i) = IqPrediction_1(j,i) + (1/FswOptions(j))*(Vq_est_1(j,i)/Lq-Rs/Lq*IqPrediction_1(j,i)-Ld/Lq*PolePairs*ShaftAngularSpeed*IdPrediction_1(j,i)-FluxPM*PolePairs*ShaftAngularSpeed/Lq);                
                
        
%        IdPrediction_1 = IdMeasured + (1/FswOptions(i))*(Vds_Optimum_prev/Ld-Rs/Ld*IdMeasured+Lq/Ld*PolePairs*ShaftAngularSpeed*IqMeasured);
%        IqPrediction_1 = IqMeasured + (1/FswOptions(i))*(Vqs_Optimum_prev/Lq-Rs/Lq*IqMeasured-Ld/Lq*PolePairs*ShaftAngularSpeed*IdMeasured-FluxPM*PolePairs*ShaftAngularSpeed/Lq);

    end
    
end







% MagnitudePrediction_2 = sqrt(Vd_est_1^2+Vq_est_1^2);
% 
% ValfaPrediction_2 = sin(ElectricalAngle)*Vd_est_1+cos(ElectricalAngle)*Vq_est_1;
% VbetaPrediction_2 =-cos(ElectricalAngle)*Vd_est_1+sin(ElectricalAngle)*Vq_est_1;
% 
% VoltageVectorAnglePrediction_2 = atan2(VbetaPrediction_2,ValfaPrediction_2)+4*pi;
% VoltageVectorAnglePredictionMod_2 = mod(VoltageVectorAnglePrediction_2,pi/3);
% 
% maPrediction_2 = MagnitudePrediction_2/(Vdc/sqrt(3));
% 
% SvpwmT1Prediction_2 = (1/FswOptions)*maPrediction_2*sin(pi/3-VoltageVectorAnglePredictionMod_2);
% SvpwmT2Prediction_2 = (1/FswOptions)*maPrediction_2*sin(VoltageVectorAnglePredictionMod_2);
% SvpwmT0Prediction_2 = (1/FswOptions)-SvpwmT1Prediction_2-SvpwmT2Prediction_2;
% 
% VoltageDuring_T1_2 = 2/3*Vdc-MagnitudePrediction_2;
% VoltageDuring_T2_2 = 2/3*Vdc-MagnitudePrediction_2;
% VoltageDuring_T0_2 = -MagnitudePrediction_2;