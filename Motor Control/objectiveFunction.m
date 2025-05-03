function sse = objectiveFunction(fl_params)
    % Load the fuzzy inference system
    fis = readfis('CLF02');

  
     In_NG=sort(fl_params(1:3));
     In_EZ=sort(fl_params(4:6));
     In_PG=sort(fl_params(7:9));
     
     In2_NG=sort(fl_params(10:12));
     In2_EZ=sort(fl_params(13:15));
     In2_PG=sort(fl_params(16:18));

     Out_NG=sort(fl_params(19:21));
     Out_EZ=sort(fl_params(22:24));
     Out_PG=sort(fl_params(25:27));

    fis.Inputs(1).MembershipFunctions(1).Parameters= In_NG;
    fis.Inputs(1).MembershipFunctions(2).Parameters= In_EZ;
    fis.Inputs(1).MembershipFunctions(3).Parameters= In_PG;
    
    fis.Inputs(2).MembershipFunctions(1).Parameters= In2_NG;
    fis.Inputs(2).MembershipFunctions(2).Parameters= In2_EZ;
    fis.Inputs(2).MembershipFunctions(3).Parameters= In2_PG;
    
    fis.Outputs(1).MembershipFunctions(1).Parameters= Out_NG;
    fis.Outputs(1).MembershipFunctions(2).Parameters= Out_EZ;
    fis.Outputs(1).MembershipFunctions(3).Parameters= Out_PG;
   
    % Place the modified FIS object into the MATLAB workspace
    assignin('base', 'CLF02', fis);

    %warning('off', 'fuzzy:dialogs:warnEvalfis_NoRuleFired');
    warning off;

    
    % Simulate the Simulink model
    sim('sim_motor');
   
       
    error = desiredSpeed.Data(end) - actualSpeed.Data(end);
    sse = error.^2;  
    
end