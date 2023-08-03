function bmi(theWeight, theHeight)
    -- Body Mass Index
    -- BMI = (Weight in Kilograms / (Height in Meters x Height in Meters))
    local theBMI = -1;
    local theResult = "";
    local theResultMsg = "";

    if (theWeight > 0 and theWeight < 700 and theHeight > 0 and theHeight < 4.0) then
        theBMI = theWeight / (theHeight * theHeight);
    end

    if (theBMI ~= -1) then
        if (theBMI <= 18.5) then
            theResultMsg = "underweight";
        elseif (theBMI > 18.5 and theBMI < 25) then
            theResultMsg = "normal weight";
        elseif (theBMI >= 25 and theBMI < 30) then
            theResultMsg = "overweight";
        elseif (theBMI >= 30 and theBMI < 35) then
            theResultMsg = "obese 1";
        elseif (theBMI >= 35 and theBMI < 40) then
            theResultMsg = "obese 2";
        elseif (theBMI >= 40) then
            theResultMsg = "extremely obese";
        end
    end

    return theResultMsg .. ": " .. tostring(theBMI);
end

print(bmi(60, 1.60));
-- 60, 1.60: normal weight: 23.4375
