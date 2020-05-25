function [va_1, vb_1,vc_1 ]  = fcn(Tref,wref,Inertia,id, iq, Ld, Lq...
    , Rs,vd, vq,polepairs,wmech,FluxPM,Vdc...
    ,ref_frame_position,switching_pulse,va_1_prev, vb_1_prev,vc_1_prev...
    ,clock,vectortableupdatetime)
VoltageVector = [0 0 0; 0 0 1; 0 1 0; 0 1 1; 1 0 0; 1 0 1; 1 1 0; 1 1 1];
Ts = 1/40000;
cost = zeros(1,8);
vectortobeapplied = zeros(1,3);
for i = 1:8
    
    %get the vectors
    if(clock>vectortableupdatetime)
        va = 1;
        vb = VoltageVector(i,2);
        vc = VoltageVector(i,3);        
    else
        va = VoltageVector(i,1);
        vb = VoltageVector(i,2);
        vc = VoltageVector(i,3);        
    end
        

    %calculate  vd vq v0
    vds = Vdc*2/3*(va*sin(ref_frame_position)...
        +vb*sin(ref_frame_position-2*pi/3)...
        +vc*sin(ref_frame_position+2*pi/3));
    vqs =  Vdc*2/3*(va*cos(ref_frame_position)...
        +vb*cos(ref_frame_position-2*pi/3)...
        +vc*cos(ref_frame_position+2*pi/3));
    v0 = Vdc*2/3*1/2*(va+vb+vc);
    %predict the future output
    id_1 = id + Ts*(vds/Ld-Rs/Ld*id...
        +Lq/Ld*polepairs*wmech*iq);
    iq_1 = iq + Ts*(vqs*Lq-Rs/Lq*iq...
        -Ld/Lq*polepairs*wmech*id-FluxPM*polepairs*wmech/Lq);
    Te_1 = 1.5*polepairs*(FluxPM*iq_1...
        +0*(Ld-Lq)*id_1*iq_1); 
    % reluctance torque component is multiplied by 0,
    % since it caused unreasonable torque values.
    
    if(abs(iq)>30)||(abs(Te_1)>50)
        protection = inf;
    else
        protection = 0;
    end
    
    cost(i) = 100000000*(Tref-Te_1)^2+(id_1)*1500+protection; % |\label{line:One_Module_cost}|

end

[mincostval, index] = min(cost);
% apply the one with minimum cost
vectortobeapplied(1) = VoltageVector(index,1);
vectortobeapplied(2) = VoltageVector(index,2);
vectortobeapplied(3) = VoltageVector(index,3);


if(switching_pulse==1)
    va_1 = vectortobeapplied(1);
    vb_1 = vectortobeapplied(2);
    vc_1 = vectortobeapplied(3);
else
    va_1 = va_1_prev;
    vb_1 = vb_1_prev;
    vc_1 = vc_1_prev;    
end