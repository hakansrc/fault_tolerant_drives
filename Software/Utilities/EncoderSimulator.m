clc
clear
close all
pkg load signal
SpeedRpm = 60;


Tend = 5;
TimeResolution = 0.00001;
TimeArray = 0:TimeResolution:Tend;


SpeedRadSec = SpeedRpm*2*pi/60;

EncoderCountPerRotation = 14400;

EncoderCountPerSecond = SpeedRpm/60*EncoderCountPerRotation;

##Rotation = mod(EncoderCountPerSecond*TimeArray,EncoderCountPerRotation);
QPOSCNT = 0;
QPOSCNT_save = zeros(1,numel(TimeArray));
QPOSLAT_difference = 0;
QPOSLAT_difference_save = zeros(1,numel(TimeArray));
QPOSMAX = 28800-1;
SpeedRpmCalculated = 0;
SpeedRpmCalculated_save = zeros(1,numel(TimeArray));
SpeedActual_save = zeros(1,numel(TimeArray));

QPOSLATPrev = 0;
QPOSLAT = 0;

DirectionMultiplier = 0;
##plot(TimeArray,Rotation)

for i=1:numel(TimeArray)
  SpeedRpm = -60;
  SpeedActual_save(i) = SpeedRpm;
  EncoderCountPerSecond = SpeedRpm/60*EncoderCountPerRotation;
  QPOSCNT = QPOSCNT+(EncoderCountPerSecond*TimeResolution);
  QPOSCNT_save(i) = QPOSCNT;
  if(QPOSCNT<0)
    QPOSCNT = QPOSCNT+QPOSMAX;
  else 
      QPOSCNT = mod(QPOSCNT,QPOSMAX+1);
    
  end
  
  if(mod(TimeArray(i),0.01)==0) % uto flag simulator
    QPOSLATPrev = mod(QPOSLAT,EncoderCountPerRotation);
    QPOSLAT = QPOSCNT;
    
    QPOSLAT_difference = abs(QPOSLAT-QPOSLATPrev);
    if(QPOSLAT_difference>EncoderCountPerRotation)
      QPOSLAT_difference = (QPOSMAX)-QPOSLAT_difference
    end
    AngleDifference = QPOSLAT_difference/(EncoderCountPerRotation-1)*2*pi;
    QPOSCNT = mod(QPOSCNT,EncoderCountPerRotation);
    
    if((QPOSLAT-QPOSLATPrev)<0)
      if(abs(QPOSLAT-QPOSLATPrev)<EncoderCountPerRotation)
        DirectionMultiplier = -1;
      end
    else
      if(abs(QPOSLAT-QPOSLATPrev)<EncoderCountPerRotation)
        DirectionMultiplier = 1;
      end
    end
    SpeedRadCalculated = DirectionMultiplier * AngleDifference * 100;
    SpeedRpmCalculated = SpeedRadCalculated*60/(2*pi);
  end
  QPOSLAT_difference_save(i) = QPOSLAT_difference;
  SpeedRpmCalculated_save(i) = SpeedRpmCalculated;
  
endfor











figure
plot(TimeArray,SpeedRpmCalculated_save)
##hold on
figure
plot(TimeArray,SpeedActual_save)






figure
plot(TimeArray,QPOSLAT_difference_save)
figure
plot(TimeArray,QPOSCNT_save)


max(QPOSCNT_save)