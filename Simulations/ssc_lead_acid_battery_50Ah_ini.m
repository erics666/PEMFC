
NominalCap = 50;

SOC_init = 0.8;
theta_init = 25;

%% 蓄电池组热参数
Ctheta = 400; %(J/k) 热电容
Area = 0.01; 
Rtheta = 20;  %(W/m^2/K)对流热传递系数


Kc = 1.2; 
Costar = 1.8e+005; 
Kt_Temps = [25 40 60 75];
Kt = [0.80,1.10,1.20,1.12;]; 
delta = 0.73; 
Istar = 15; 
theta_f = -40; 

Ep = 1.95; 
Gpo = 2.0e-011; 
Vpo = 0.12;
Ap = 2.0; 
Taup = 3; 


Emo = 2.18; 
Ke = 0.0006; 
Ao = -0.6; 
Roo = 0.0042; 
R10 = 0.0010; 
A21 = -10.0; 
A22 = -8.75; 
R20 = 0.11; 
Tau1 = 100; 


ns = 6; 


Qe_init = (1-SOC_init)*Kc*Costar*interp1([theta_f Kt_Temps],[0 Kt],theta_init,'spline');

