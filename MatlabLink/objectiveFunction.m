function sse = objectiveFunction(fl_params)
    fis = readfis('CLF03.fis');
    score = 0;

    testInputs = [1, 0, 4.19, 1;  %  test inputs (PV, SOC, Load Demand, Wind)
                  0.8, 20, 3.2, 0.8;
                  0.6, 40, 2.4, 0.6;
                  0.4, 60, 1.6, 0.4;
                  0.2, 80, 0.8, 0.2;
                  0, 100, 0, 0;
                  1, 0, 0, 0;
                  0.8, 20, 0.8, 0.2;
                  0.6, 40, 1.6, 0.4;
                  0.4, 60, 2.4, 0.6;
                  0.2, 80, 3.2, 0.8;
                  0, 100, 4.19, 1];

    fis = updateFLC(fis, fl_params);

    for i = 1:size(testInputs, 1)
        pvOutput = testInputs(i, 1);
        soc = testInputs(i, 2);
        loadDemand = testInputs(i, 3);
        windOutput = testInputs(i, 4);

        desiredBatteryBehavior = generateBatteryDesiredOutput(pvOutput, soc, loadDemand, windOutput);
        desiredDist = desiredPD(pvOutput, windOutput);
        
        actualOutput = evalfis(fis, testInputs(i, :));

       if isempty(actualOutput)
            score = score + 30; 
            elseif actualOutput == 0
            score = score + 30;
        else
            score = score + (desiredBatteryBehavior - actualOutput(2))^2 + (desiredDist - actualOutput(1))^2;
        end
    end

    sse = score;
end
