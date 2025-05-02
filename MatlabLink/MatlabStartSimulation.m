function [myErr, custom_variables] = MatlabStartSimulation(simulation_parameters)
    
    myErr.error_description = '';
    myErr.severity_code = ''; 
    custom_variables = struct();

    simulation_state.batteries(1).state_of_charge_percent = 100; 

end
