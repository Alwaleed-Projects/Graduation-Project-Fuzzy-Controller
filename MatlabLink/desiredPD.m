function desiredDist = desiredPD(pvOutput, windOutput)

    if pvOutput==windOutput
        desiredDist = 0;

    elseif pvOutput>windOutput
        desiredDist = pvOutput;

    elseif pvOutput<windOutput
        desiredDist = -windOutput;

    end

end
