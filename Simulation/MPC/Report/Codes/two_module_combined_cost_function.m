function [M1_va_1, M1_vb_1, M1_vc_1, M2_va_1, M2_vb_1, M2_vc_1,M1_Te_1,M2_Te_1 ]  = fcn(Tref,wref,Inertia,M1_id, M1_iq,M2_id, M2_iq, Ld, Lq, Rs,vd, vq,polepairs,wmech,FluxPM,Vdc,ref_frame_position,switching_pulse,M1_va_1_prev, M1_vb_1_prev,M1_vc_1_prev,M2_va_1_prev, M2_vb_1_prev,M2_vc_1_prev,clock,vectortableupdatetime)
M1_VoltageVector = [0 0 0; 0 0 1; 0 1 0; 0 1 1; 1 0 0; 1 0 1; 1 1 0; 1 1 1];
M2_VoltageVector = [0 0 0; 0 0 1; 0 1 0; 0 1 1; 1 0 0; 1 0 1; 1 1 0; 1 1 1];

Ts = 1/40000;
M1_cost = zeros(1,8);
M2_cost = zeros(1,8);
Total_Cost = zeros(1,8);
M1_vectortobeapplied = zeros(1,3);
M2_vectortobeapplied = zeros(1,3);

for i = 1:8
    %get the vectors
    if(clock>vectortableupdatetime)
        M1_va = 1;
        M1_vb = M1_VoltageVector(i,2);
        M1_vc = M1_VoltageVector(i,3);        
    else
        M1_va = M1_VoltageVector(i,1);
        M1_vb = M1_VoltageVector(i,2);
        M1_vc = M1_VoltageVector(i,3);        
    end
    M2_va = M2_VoltageVector(i,1);
    M2_vb = M2_VoltageVector(i,2);
    M2_vc = M2_VoltageVector(i,3);     
        

    %calculate  vd vq v0 for module 1
    M1_vds = Vdc*2/3*(M1_va*sin(ref_frame_position)+M1_vb*sin(ref_frame_position-2*pi/3)+M1_vc*sin(ref_frame_position+2*pi/3));
    M1_vqs =  Vdc*2/3*(M1_va*cos(ref_frame_position)+M1_vb*cos(ref_frame_position-2*pi/3)+M1_vc*cos(ref_frame_position+2*pi/3));
    M1_v0 = Vdc*2/3*1/2*(M1_va+M1_vb+M1_vc);
    %predict the future output for module 1
    M1_id_1 = M1_id + Ts*(M1_vds/Ld-Rs/Ld*M1_id+Lq/Ld*polepairs*wmech*M1_iq);
    M1_iq_1 = M1_iq + Ts*(M1_vqs*Lq-Rs/Lq*M1_iq-Ld/Lq*polepairs*wmech*M1_id-FluxPM*polepairs*wmech/Lq);
    M1_Te_1 = 1.5*polepairs*(FluxPM*M1_iq_1+0*(Ld-Lq)*M1_id_1*M1_iq_1); % reluctance torque component is multiplied by 0, since it caused unreasonable torque values.
    
    %calculate  vd vq v0 for module 2
    M2_vds = Vdc*2/3*(M2_va*sin(ref_frame_position)+M2_vb*sin(ref_frame_position-2*pi/3)+M2_vc*sin(ref_frame_position+2*pi/3));
    M2_vqs =  Vdc*2/3*(M2_va*cos(ref_frame_position)+M2_vb*cos(ref_frame_position-2*pi/3)+M2_vc*cos(ref_frame_position+2*pi/3));
    M2_v0 = Vdc*2/3*1/2*(M2_va+M2_vb+M2_vc);
    %predict the future output for module 2
    M2_id_1 = M2_id + Ts*(M2_vds/Ld-Rs/Ld*M2_id+Lq/Ld*polepairs*wmech*M2_iq);
    M2_iq_1 = M2_iq + Ts*(M2_vqs*Lq-Rs/Lq*M2_iq-Ld/Lq*polepairs*wmech*M2_id-FluxPM*polepairs*wmech/Lq);
    M2_Te_1 = 1.5*polepairs*(FluxPM*M2_iq_1+0*(Ld-Lq)*M2_id_1*M2_iq_1); % reluctance torque component is multiplied by 0, since it caused unreasonable torque values.    
    
    wmech_1 = wmech + Ts*(M1_Te_1-Tref)*Inertia;
    
    %calculate the cost
    if(abs(M1_iq)>30)||(abs(M1_Te_1)>80)
        M1_protection = inf;
    else
        M1_protection = 0;
    end
    if(abs(M2_iq)>30)||(abs(M2_Te_1)>80)
        M2_protection = inf;
    else
        M2_protection = 0;
    end    

        Total_Cost(i) = 100000000*(Tref-M2_Te_1-M1_Te_1)^2+((M1_id_1)^2)*1500*15+((M2_id_1)^2)*1500*15; % |\label{line:Two_Module_cost_combined}|
    
end



[mincostval, M1_index] = min(Total_Cost);
[mincostval, M2_index] = min(Total_Cost);

% apply the one with minimum cost
M1_vectortobeapplied(1) = M1_VoltageVector(M1_index,1);
M1_vectortobeapplied(2) = M1_VoltageVector(M1_index,2);
M1_vectortobeapplied(3) = M1_VoltageVector(M1_index,3);
M2_vectortobeapplied(1) = M2_VoltageVector(M2_index,1);
M2_vectortobeapplied(2) = M2_VoltageVector(M2_index,2);
M2_vectortobeapplied(3) = M2_VoltageVector(M2_index,3);


if(switching_pulse==1)
    M1_va_1 = M1_vectortobeapplied(1);
    M1_vb_1 = M1_vectortobeapplied(2);
    M1_vc_1 = M1_vectortobeapplied(3);
    M2_va_1 = M2_vectortobeapplied(1);
    M2_vb_1 = M2_vectortobeapplied(2);
    M2_vc_1 = M2_vectortobeapplied(3);    
else
    M1_va_1 = M1_va_1_prev;
    M1_vb_1 = M1_vb_1_prev;
    M1_vc_1 = M1_vc_1_prev;    
    M2_va_1 = M2_va_1_prev;
    M2_vb_1 = M2_vb_1_prev;
    M2_vc_1 = M2_vc_1_prev;        
end