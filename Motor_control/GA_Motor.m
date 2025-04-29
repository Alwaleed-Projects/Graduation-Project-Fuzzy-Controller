clc;

nvars = 27;  
lb = ones(1, nvars)*-10 ;  %  lower bounds
ub = ones(1, nvars) * 10;   %  upper bounds

 
% ga options
options = optimoptions('ga', 'PopulationSize', 15, 'MaxGenerations', 100, 'Display', 'iter','FitnessLimit', 0);

% Run GA
optimized_params = ga(@objectiveFunction, nvars, [], [], [], [], lb, ub, [], options);




% Print optimized parameters
disp('Optimized FLC Parameters:');
disp(optimized_params);
