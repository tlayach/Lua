function TempCelsius2Fahrenheit(tempC)
    tempF = 32 + (9 * tempC) / 5;
    return tempF;
end

function TempFahrenheit2Celsius(tempF)
    tempC = (tempF - 32) * 5 / 9;
    return tempC;
end

function TempKelvin2Celsius(tempK)
    tempC = tempK - 273.15;
    return tempC;
end

function TempCelsius2Kelvin(tempC)
    tempK = tempC + 273.15;
    return tempK;
end

print("Fahrenheit: " .. TempCelsius2Fahrenheit(37));
print("Celsius: " .. TempFahrenheit2Celsius(98.6));
print("Celsius: " .. TempKelvin2Celsius(20));
print("Kelvin: " .. TempCelsius2Kelvin(20));
-- Fahrenheit: 98.6
-- Celsius: 37
-- Celsius: -253.15
-- Kelvin: 293.15
