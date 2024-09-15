% Simulation parameters
simTime = 60; % Simulation time in seconds
dustThreshold = 0.5; % Dust threshold for turning on the pump
initialDustLevel = 0.3; % Initial dust level
pumpPower = 0; % Initial pump power (0 means off)

% Simulation time step
dt = 1; % 1 second time step

% Simulation loop
for t = 0:dt:simTime
    % Simulate dust accumulation (random variation for demonstration)
    dustLevel = initialDustLevel + 0.1 * randn();
    
    % Check if dust level is above the threshold
    if dustLevel > dustThreshold
        % Turn on the pump
        pumpPower = 1;
    else
        % Turn off the pump
        pumpPower = 0;
    end
    
    % Display simulation status
    fprintf('Time: %d sec, Dust Level: %.2f, Pump Power: %d\n', t, dustLevel, pumpPower);
    
    % Pause for the time step
    pause(dt);
end