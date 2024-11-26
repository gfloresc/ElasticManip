%%%%%%%%%%%%%%%%%%% COMPLETO %%%%%%%%%%%%%%%%%%%
%Standard parameters [do not change in any situation]
tau = 0.001;
dp = 10;
a = 1/tau; %este es el parametro de la parte lineal del modelo de Micky [xdot = ax]
b = dp/tau; %5 
alpha = 40; %80 .... amplitud de la señal deseada 0.00008 = 80 micro meter;
freq = 2*pi/10; %= 0.1Hz

A = [0, -a;
     0,  0];

%System parameters [ORIGINAL] 1st set
A_h = 0.4297;    %0.4297 ------------ 9...50---- este controla la histeresis
B_h = 0.03438;   %0.4297 ------------0.08...1 ---6consideramos B>G
G_h = -0.002865; %0.08....1-----2
cp = 0.002;

%k = 1.0773; %=dp; si lo pongo (-) si funciona con cualquier valor PORQUR???

% %System parameters [2nd set of parameters]
% A_h = 0.9;    
% B_h = 0.008;   
% G_h = 0;
% % k = 1.6; 

% %System parameters [3rd set of parameters]
% A_h = 0.4297;    
% B_h = 0.03438;   
% G_h = -0.002865;
% % k = 10; 

% %System parameters [4th set of parameters]
% A_h = 0.2;    
% B_h = -0.002;   
% G_h = 0.04;
% % k = 0.2; 


%Control parameters 
kap1 = 1800; % 150,  60, 500  ganancia del control lineal

%Observer params
C = [1, 0];
theta = 2000;
kappa = 200;
Q = [6000 0;
     0 8000];

%% Disturbance observer
k1 = 700;
k2 = 500;
