% Parameters and input variables to model battery thermal runaway

% Copyright 2020 The MathWorks, Inc.
% 
%% General
Ambient=300; % Ambient temperature in K

%% Calorimeter Data
% dT/dt versus T
Tvec=[323,373,423,438,463,483,513,543,545,547,549,551,553,573,623,773,923,943,1003,1063,1113,1123,1133,1153,1173];
dTdt=[0.0001,0.001,0.025,0.2,0.4,0.6,1.1,1.3,1.9,3,5,11.6,183.3,191.6,200,208.3,200,175,8.33,1.33,0.33,0.2,0.13,0.0017,0.00017];
%
Hreaction=600; % Heat of abuse reaction, J/kg
reactionMassFrac=0.5; % Active mass for abuse reaction, as a fraction of total cell mass

%% Module Cell Stack
Ncell=2; % Number of cells in stack
cell_H=0.65; % Cell height, m
cell_W=0.2; % Cell width, m
cell_T=0.02; % Cell thickness, m
cell_density=900; % Cell density, kg/cu.m.
cell_spHeat=900;             % Cell specific heat, J/kg-K
htc=6;                      % Heat transfer coefficient to ambient, W/m^2-K
solidK=0.5;                  % Cell through-plane thermal conductivity, W/m-K
cell_Tini=300*ones(1,Ncell); % Cell initial temperature, K

%% Cell to Cell Gap
cellToCellGapLen=zeros(1,Ncell-1); % Length of gap between two adjacent cells, m
cellToCellGapThermalMass=zeros(1,Ncell-1); % Thermal mass of material between two adjacent cells, J/K 
cellToCellGapThermalK=zeros(1,Ncell-1); % Thermal conductivity of material between two cells, W/m-K
% %     % Uncomment the code below to set thermal barrier between cells 4 & 5
%     cellToCellGapLen(1,4)=0.005;
%     cellToCellGapThermalMass(1,4)=50;
%     cellToCellGapThermalK(1,4)=0.05;

%% Controls
HeaterPowerToCell=zeros(1,Ncell); % Heater power to cell, W
    HeaterPowerToCell(1,1)=100;
    stopHeaterWhenTempAbove=443; % Temperature, K
fracCellThermalK=ones(1,Ncell); % Fractional change in thermal conductivity of a cell upon reaction and phase change, (-)
fracCellThermalMass=ones(1,Ncell); % Fractional change in thermal mass of a cell upon reaction and phase change, (-)

