function [simulation_state, custom_variables] = MatlabDispatch(simulation_parameters, simulation_state, custom_variables)
    pv_output = simulation_state.pvs(1).power_available; 
    wind_output =simulation_state.wind_turbines(1).power_available;
    battery_soc = simulation_state.batteries(1).state_of_charge_percent;  
    load_demand = simulation_state.primary_loads(1).load_requested; 
    
    

    scaled_pv_output=mat2gray(pv_output, [0, simulation_parameters.pvs(1).rated_capacity]);
    scaled_wind_output = mat2gray(wind_output, [0, simulation_parameters.wind_turbines(1).rated_power]);

    if battery_soc > 100
            battery_soc = 100;
    elseif battery_soc < 0
            battery_soc = 0;
    end
    

     
    % Evaluate the FLC
    [PD, battery_setpoint] = evaluateFLC(scaled_pv_output, battery_soc, load_demand, scaled_wind_output);

    if PD > 0
    % More preference to PV
    pv_fraction = min(1, PD);  
    wind_fraction = 1 - pv_fraction;
    elseif PD < 0
    % More preference to wind
    wind_fraction = min(1, -PD);
    pv_fraction = 1 - wind_fraction;
    else
        wind_fraction=0.5;
        pv_fraction=0.5;
    end 
        
    


    pv_power_to_use = pv_fraction * pv_output;
    wind_power_to_use = wind_fraction * wind_output;
    Total_Renewable=pv_power_to_use+wind_power_to_use;
    
    power_shortage=load_demand-Total_Renewable;
    power_sale=Total_Renewable-load_demand;

    simulation_state.pvs(1).power_setpoint = pv_power_to_use;
    simulation_state.wind_turbines(1).power_setpoint=wind_power_to_use;
    simulation_state.batteries(1).power_setpoint=battery_setpoint*simulation_parameters.batteries(1).battery_bank_maximum_absolute_soc;
    
    if  battery_setpoint< 0 
    simulation_state.converters(1).inverter_power_input = pv_output +abs(battery_setpoint) ;
    simulation_state.converters(1).inverter_power_output = (pv_output +abs(battery_setpoint)) *0.96;
    else
        simulation_state.converters(1).inverter_power_input=pv_output;
        simulation_state.converters(1).inverter_power_output = pv_output*0.96;
    end

    simulation_state.ac_bus.load_served = load_demand;
    simulation_state.primary_loads(1).load_served = simulation_state.ac_bus.load_served;

     if power_shortage>0
         if battery_setpoint <0
     simulation_state.grids(1).grid_purchases = power_shortage-battery_setpoint;  % This will draw the shortage from the grid
         else 
             simulation_state.grids(1).grid_purchases = power_shortage;
         end
     end
    
     if power_sale >0
     simulation_state.grids(1).grid_sales=power_sale;
     end
   
     
end

function [PD, battery_setpoint] = evaluateFLC(scaled_pv_output, battery_soc, load_demand, scaled_wind_output)
    fis = readfis('CLF03');

    flc_output = evalfis(fis,[scaled_pv_output, battery_soc , load_demand, scaled_wind_output]); 

    PD = flc_output(1);  
    battery_setpoint = flc_output(2);  
end
