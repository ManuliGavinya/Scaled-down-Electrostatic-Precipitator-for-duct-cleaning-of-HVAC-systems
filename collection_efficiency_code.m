% Constants and Parameters
Q = 7; % Volumetric Flow Rate of gas through the precipitator(m^3/s)
A = 2; % Collecting Plate Area (m^2)

u = 1.81e-5;% gas viscosity
q = 1e-10;% particle charge for typical dust or aerosol
d = 0.25;%seperation between the electrode and the plate

% define a range of possible voltages 
voltage = (0:1:1500);

%electric field strength
electric_field_strength=voltage/d; 

figure,
for d = 20e-6:20e-6:110e-6 

    % Calculate Particle migration velocity (w)
    w = (q*electric_field_strength)./(6.*pi.*u.*(d/2));

    % Calculate Particle Collection efficiency
    collection_efficiency = 1 - exp((-A.*w)./Q);

    plot(voltage,collection_efficiency);
    hold on;
    
end

legend('20 micrometer', '40 micrometer','60 micrometer', '80 micrometer', '100 micrometer')
title('collection efficiency vs voltage');
xlabel('voltage');
ylabel('collection efficiency')

