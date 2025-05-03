clc;

nvars = 27;  
lb = ones(1, nvars)*-10 ;  %  lower bounds
ub = ones(1, nvars) * 10;   %  upper bounds

% PSO options
options = optimoptions('particleswarm', 'Display', 'iter',"SwarmSize",15,'MaxStallIterations',56,...
    'InertiaRange', [0.6,1.6],'SelfAdjustmentWeight', 2,'SocialAdjustmentWeight', 2,'MaxIterations', 20);


% Run PSO
optimized_params = particleswarm(@objectiveFunction, nvars, lb, ub, options);

% Print optimized parameters    
disp('Optimized FLC Parameters:');
disp(optimized_params);
