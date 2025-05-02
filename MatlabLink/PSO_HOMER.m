clc;
clear;
warning('off', 'all');

nvars = 51;  

lb1 = zeros(1, 18) ;  % PV and Wind
ub1 = ones(1, 18) ;   % 

lb2 = ones(1, 6)*-1 ;  %  PD
ub2 = ones(1, 6) * 1;   %  

lb3 = zeros(1, 9) ;  %  SOC
ub3 = ones(1, 9) * 100;   %  

lb4 = zeros(1, 9) ;  %  LD
ub4 = ones(1, 9) * 4.19; %

lb5 = ones(1, 9)*-1 ;  %  Battery
ub5 = ones(1, 9) * 1;   %  

lb=[lb1,lb2,lb3,lb4,lb5];
ub=[ub1,ub2,ub3,ub4,ub5];
 
% PSO options
options = optimoptions('particleswarm', 'Display', 'iter',"SwarmSize",700,...
    'InertiaRange', [0.6,1.6],'SelfAdjustmentWeight', 2,'SocialAdjustmentWeight', 2, 'MaxIterations', 20);


% Run PSO
[optimizedParameters, ~] = particleswarm(@objectiveFunction, nvars, lb, ub, options);


fis = readfis('CLF03.fis');

% Update the FLC with the optimized parameters
fis = updateFLC(fis, optimizedParameters);
 
% Save the optimized FLC to a file
writeFIS(fis, 'CLF03.fis');

% Print optimized parameters
disp('Optimized FLC Parameters:');
disp(optimizedParameters);


