
%% Cargamos la comparativa archivo "Compare202.mat"

figure('DefaultAxesFontSize',12)
subplot(2,1,1,'FontSize',11); 
plot(out.tracke,'b','LineWidth',1.5); 
ylabel('$e$','interpreter', 'latex');  
xlabel('time[sec]','interpreter', 'latex'); 
grid on; 
r = legend('$e$');
set(r, 'Interpreter', 'latex');

load('Compare2023.mat')
subplot(2,1,2,'FontSize',11); 
plot(out.posErrComparison,'k','LineWidth',1.5); 
ylabel('$e_0$','interpreter', 'latex');  
xlabel('time[sec]','interpreter', 'latex'); 
grid on; 
r = legend('$e_0$');
set(r, 'Interpreter', 'latex');


%% Observer 1
figure('DefaultAxesFontSize',12)
subplot(2,2,1,'FontSize',11); 
plot(out.yhat_y,'b','LineWidth',1.5); 
ylabel('$\hat{y} - y$','interpreter', 'latex');  
xlabel('time[sec]','interpreter', 'latex'); 
grid on; 
r = legend('$\hat{y} - y$');
set(r, 'Interpreter', 'latex');
% zoom:
subplot(2,2,2,'FontSize',11); 
plot(out.yhat_y,'b','LineWidth',1.5); 
ylabel('$\hat{y} - y$ [zoom]','interpreter', 'latex');  
xlabel('time[sec]','interpreter', 'latex');
xlim([0 0.01]);     ylim([-3 0.5]); 
grid on; 
r = legend('$\hat{y} - y$');
set(r, 'Interpreter', 'latex');

subplot(2,2,3,'FontSize',11); 
plot(out.DeltaHat,'b','LineWidth',1.5); 
hold on;
plot(out.Delta,'r:','LineWidth',1.5); 
ylabel('$\hat{\Delta}, \Delta$','interpreter', 'latex');  
xlabel('time[sec]','interpreter', 'latex'); 
grid on; 
r = legend('$\hat{\Delta}$', '$\Delta$');
set(r, 'Interpreter', 'latex');
% zoom:
subplot(2,2,4,'FontSize',11); 
plot(out.DeltaHat,'b','LineWidth',1.5); 
hold on;
plot(out.Delta,'r:','LineWidth',1.5); 
ylabel('$\hat{\Delta}, \Delta$ [zoom]','interpreter', 'latex');  
xlabel('time[sec]','interpreter', 'latex');
xlim([0 0.01]);     ylim([0 2100]); 
grid on; 
r = legend('$\hat{\Delta}$', '$\Delta$');
set(r, 'Interpreter', 'latex');

%% Observer 2
figure('DefaultAxesFontSize',12)
subplot(2,2,1,'FontSize',11); 
plot(out.eps1,'b','LineWidth',1.5); hold on;
plot(out.eps2,'r:','LineWidth',1.5); hold on;
ylabel('$\epsilon_1, \epsilon_2$','interpreter', 'latex');  
xlabel('time[sec]','interpreter', 'latex'); 
ylim([-4 3]);
grid on; 
r = legend('$\epsilon_1$', '$\epsilon_2$');
set(r, 'Interpreter', 'latex');
% zoom
subplot(2,2,2,'FontSize',11); 
plot(out.eps1,'b','LineWidth',1.5); hold on;
plot(out.eps2,'r:','LineWidth',1.5); hold on;
ylabel('$\epsilon_1, \epsilon_2$ [zoom]','interpreter', 'latex');  
xlabel('time[sec]','interpreter', 'latex'); 
xlim([0 0.3]);      ylim([-4 3]); 
grid on; 
r = legend('$\epsilon_1$', '$\epsilon_2$');
set(r, 'Interpreter', 'latex');

subplot(2,2,3,'FontSize',11); 
plot(out.s11,'b','LineWidth',1.5); hold on;
plot(out.s12,'r:','LineWidth',1.5); hold on;
plot(out.s21,'g--','LineWidth',1.5); hold on;
plot(out.s22,'k:','LineWidth',1.5); hold on;
ylabel('$S$','interpreter', 'latex');  
xlabel('time[sec]','interpreter', 'latex'); 
grid on;
r = legend('$S(1,1)$','$S(1,2)$','$S(2,1)$','$S(2,2)$');
set(r, 'Interpreter', 'latex');
% zoom
subplot(2,2,4,'FontSize',11); 
plot(out.s11,'b','LineWidth',1.5); hold on;
plot(out.s12,'r:','LineWidth',1.5); hold on;
plot(out.s21,'g--','LineWidth',1.5); hold on;
plot(out.s22,'k:','LineWidth',1.5); hold on;
ylabel('$S$ [zoom]','interpreter', 'latex');  
xlabel('time[sec]','interpreter', 'latex'); 
xlim([0 0.005]);
grid on; 

%% Tracking error and OF control
figure('DefaultAxesFontSize',12)
subplot(1,2,1,'FontSize',11); 
plot(out.tracke,'b','LineWidth',1.5); 
ylabel('$e$','interpreter', 'latex');  
xlabel('time[sec]','interpreter', 'latex'); 
grid on; 
r = legend('$e$');
set(r, 'Interpreter', 'latex');

subplot(1,2,2,'FontSize',11); 
plot(out.u,'LineWidth',1.5); 
ylabel('$u$','interpreter', 'latex');  
xlabel('time[sec]','interpreter', 'latex'); 
grid on; 
r = legend('$u$');
set(r, 'Interpreter', 'latex');

%%
figure('DefaultAxesFontSize',12)
%subplot(1,2,1,'FontSize',11); 
plot(out.epsilon,'b','LineWidth',1.5);
ylabel('$\epsilon$','interpreter', 'latex');  
xlabel('time[sec]','interpreter', 'latex'); 
grid on;   
h = legend('$\epsilon_1 = \hat{x} - x$', '$\epsilon_2 = \hat{h} - h$');
set(h, 'Interpreter', 'latex');

%%
figure('DefaultAxesFontSize',12)
%subplot(1,2,2,'FontSize',11); 
plot(out.x_xd,'k','LineWidth',1.5); 
ylabel('$x, x_d$','interpreter', 'latex');  
xlabel('time[sec]','interpreter', 'latex'); 
grid on; 
r = legend('$x$', '$x_d$');
set(r, 'Interpreter', 'latex');

%% (y,yd OPEN LOOP)
figure('DefaultAxesFontSize',12)
%subplot(1,2,2,'FontSize',11); 
plot(out.xopen,'b','LineWidth',1.5);
ylabel('$x, x_d$','interpreter', 'latex');  
xlabel('time[sec]','interpreter', 'latex'); 
grid on; 
r = legend('$x$', '$x_d$');
set(r, 'Interpreter', 'latex');

%% udot vs u
figure('DefaultAxesFontSize',12)
subplot(2,1,1,'FontSize',11); 
plot(out.udot,'k','LineWidth',1.5); 
ylabel('$\dot{u}$','interpreter', 'latex');  
xlabel('time[sec]','interpreter', 'latex'); 
grid on; 
r = legend('$\dot{u}$');
set(r, 'Interpreter', 'latex');

subplot(2,1,2,'FontSize',11); 
plot(out.u,'k','LineWidth',1.5); 
ylabel('$u$','interpreter', 'latex');  
xlabel('time[sec]','interpreter', 'latex'); 
grid on; 
r = legend('$u$');
set(r, 'Interpreter', 'latex');
%% (y_d,y=Cx) OPEN LOOP Vs  (y_d,y) CLOSED LOOP
figure('DefaultAxesFontSize',12)
subplot(2,1,1,'FontSize',11); 
plot(out.xref_numeric.signals.values,out.x_numeric_open.signals.values, 'b','LineWidth',1.5);
ylabel('$y$','interpreter', 'latex');  
xlabel('$y_d$','interpreter', 'latex'); 
grid on;   
h = legend('Open loop response map $(y_d,y)$');
set(h, 'Interpreter', 'latex');

subplot(2,1,2,'FontSize',11); 
plot(out.x_d_numeric.signals.values, out.x_numeric.signals.values, 'b','LineWidth',1.5);
ylabel('$y$','interpreter', 'latex');  
xlabel('$y_d$','interpreter', 'latex'); 
grid on;   
h = legend('Closed-loop response map $(y_d,y)$');
set(h, 'Interpreter', 'latex');
%% (u,y=Cx) CLOSED LOOP
figure('DefaultAxesFontSize',12)
plot(out.u_numeric.signals.values, out.x_numeric.signals.values, 'b','LineWidth',1.5);
ylabel('$y$','interpreter', 'latex');  
xlabel('$u$','interpreter', 'latex'); 
grid on;   
h = legend('Closed-loop response map $(u,y)$');
set(h, 'Interpreter', 'latex');
%% (udot,y=Cx) CLOSED LOOP
figure('DefaultAxesFontSize',12)
plot(out.udot_numeric.signals.values, out.x_numeric.signals.values, 'b','LineWidth',1.5);
ylabel('$y$','interpreter', 'latex');  
xlabel('$\dot{u}$','interpreter', 'latex'); 
grid on;   
h = legend('Closed-loop response map $(\dot{u},y)$');
set(h, 'Interpreter', 'latex');


%% (y_d,upsilon) OPEN LOOP
figure('DefaultAxesFontSize',12)
plot(out.xref_numeric.signals.values,out.upsilon_open.signals.values, 'b','LineWidth',1.5);
ylabel('$\upsilon$','interpreter', 'latex');  
xlabel('$y_d$','interpreter', 'latex'); 
grid on;   
h = legend('Closed-loop response map $(y_d,\upsilon = k u-h)$');
set(h, 'Interpreter', 'latex');


%% DISTURBED CASE: (x,xd)closed loop  Vs (x,xd)open loop
figure('DefaultAxesFontSize',12)
subplot(2,1,1,'FontSize',11); 
plot(out.x_xd,'k','LineWidth',1.5); 
ylabel('$x, x_d$','interpreter', 'latex');  
xlabel('time[sec]','interpreter', 'latex'); 
grid on; 
r = legend('$x$', '$x_d$');
set(r, 'Interpreter', 'latex');

subplot(2,1,2,'FontSize',11); 
plot(out.xopen,'k','LineWidth',1.5); 
ylabel('$x, x_d$','interpreter', 'latex');  
xlabel('time[sec]','interpreter', 'latex'); 
grid on; 
r = legend('$x$', '$x_d$');
set(r, 'Interpreter', 'latex');

%% COMPARISON with MORE SYSTEM PARAMETERS CASES
figure('DefaultAxesFontSize',12)
subplot(2,2,1,'FontSize',11); 
plot(outoriginal.x_xd_3,'k','LineWidth',1.5); 
ylabel('$x, x_d$','interpreter', 'latex');  
xlabel('time[sec]','interpreter', 'latex'); 
grid on; 
r = legend('$x$', '$x_d$');
set(r, 'Interpreter', 'latex');

subplot(2,2,2,'FontSize',11); 
plot(out2.x_xd_3,'k','LineWidth',1.5); 
ylabel('$x, x_d$','interpreter', 'latex');  
xlabel('time[sec]','interpreter', 'latex'); 
grid on; 
r = legend('$x$', '$x_d$');
set(r, 'Interpreter', 'latex');

subplot(2,2,3,'FontSize',11); 
plot(out3.x_xd_3,'k','LineWidth',1.5); 
ylabel('$x, x_d$','interpreter', 'latex');  
xlabel('time[sec]','interpreter', 'latex'); 
grid on; 
r = legend('$x$', '$x_d$');
set(r, 'Interpreter', 'latex');

subplot(2,2,4,'FontSize',11); 
plot(out4.x_xd_3,'k','LineWidth',1.5); 
ylabel('$x, x_d$','interpreter', 'latex');  
xlabel('time[sec]','interpreter', 'latex'); 
grid on; 
r = legend('$x$', '$x_d$');
set(r, 'Interpreter', 'latex');
