mpc_model_parameters_dual_module

for RefModeSelection = 1:3
    sim('mpc_model_dual_module.slx');
    if(RefModeSelection == 1)
        savename = strcat('SimulationResults/Cost_Optimal');
    end
    if(RefModeSelection == 2)
        savename = strcat('SimulationResults/Proportional_Optimal');
    end    
    if(RefModeSelection == 3)
        savename = strcat('SimulationResults/Equal_Share');
    end       
    save(savename,'ans');
end
%%
