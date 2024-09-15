% Simulation parameters
airTemperature = 298.15; % Temperature in Kelvin (25°C)
airPressure = 101.3; % Pressure in kPa (standard atmospheric pressure)
airDensity = 1.225; % Air density in kg/m^3 (at standard conditions)

% Geometry parameters (e.g., nozzle area and suction area)
nozzleArea = 0.005; % Nozzle area in m^2
suctionArea = 0.01; % Suction area in m^2

% Vacuum pressure (suction pressure)
vacuumPressure = 80; % Pressure inside the vacuum system in kPa
% Calculate the airflow rate using the ideal gas law
airflowRate = (nozzleArea / suctionArea) * sqrt((2 * vacuumPressure * 1000) / airDensity);
% Display the airflow rate
fprintf('Airflow Rate: %.2f m^3/s\n', airflowRate);