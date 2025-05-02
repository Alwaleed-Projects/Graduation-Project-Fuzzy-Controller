function batteryDesiredOutput = generateBatteryDesiredOutput(pvOutput, soc, loadDemand, windOutput)
    SOC_THRESHOLD_HIGH = 80; % high SOC
    SOC_THRESHOLD_LOW = 20;  % low SOC
    RENEWABLE_HIGH = 1.8;    % renewable output is high
    RENEWABLE_LOW = 0.3;     % renewable output is low

    % Calculate total renewable power (PV + Wind)
    totalRenewableOutput = pvOutput + windOutput;
    if totalRenewableOutput<=RENEWABLE_LOW && soc>=SOC_THRESHOLD_HIGH
        batteryDesiredOutput=-1;
    elseif totalRenewableOutput>RENEWABLE_LOW && totalRenewableOutput<RENEWABLE_HIGH
        batteryDesiredOutput=0;
    elseif totalRenewableOutput >=RENEWABLE_HIGH && soc<=SOC_THRESHOLD_LOW
        batteryDesiredOutput=1;
    else 
        batteryDesiredOutput=0;
    end

end
