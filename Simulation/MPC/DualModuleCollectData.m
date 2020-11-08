mpc_model_parameters_dual_module

for RefModeSelection = 1:3
    tic
    RefModeSelection
    sim('mpc_model_dual_module.slx');
    if(RefModeSelection == 1)
        savename = strcat('SimulationResults/Cost_Optimal');
        assignin('base','Results_Cost_Optimal',ans);     
        save(savename,'Results_Cost_Optimal');
        clear('Results_Cost_Optimal');
    end
    if(RefModeSelection == 2)
        savename = strcat('SimulationResults/Proportional_Optimal');
        assignin('base','Results_Proportional_Optimal',ans);
        save(savename,'Results_Proportional_Optimal');      
        clear('Results_Cost_Optimal');        
    end    
    if(RefModeSelection == 3)
        savename = strcat('SimulationResults/Equal_Share');
        assignin('base','Results_Equal_Share',ans);
        save(savename,'Results_Equal_Share');                
        clear('Results_Cost_Optimal');       
    end
    toc
end
%%
