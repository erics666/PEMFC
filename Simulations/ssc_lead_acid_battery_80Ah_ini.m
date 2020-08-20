
%%电池模型参数80 Ah
NominalCap = 80; %(Ah)

%%蓄电池组初始条件 初始电荷状态%(占全部电荷的百分比) %电池初始温度//充电状态
SOC_init = 0.8;
theta_init = 25;

%% 电池块热参数
Ctheta = 400; %(J/K) 热容
Area = 0.01; % (m^2) 空气中电池的面积，每平方米占百分之0.01
Rtheta = 20;  %(W/m^2/K) 对流换热系数

%% %%蓄电池组容量参数，在电流/温度范围内的充放电循环百分比
Kc = 1.2;
Costar = 1.8e+005*80/50; 
Kt_Temps = [25 40 60 75]; 
Kt = [0.80,1.10,1.20,1.12;]; 
delta = 0.73; 
Istar = 15; 
theta_f = -40; 

%% %蓄电池组寄生支路参数%%
%在电流/温度范围内充电周期结束百分比Ep = 1.95; %(V) Parasitic emf

Ep = 1.95; 
Gpo = 2.0e-011; 
Vpo = 0.12;
Ap = 2.0; 
Taup = 3; 

%% 主要支路参数
Emo = 2.18; 
Ke = 0.0006; 
Ao = -0.6; 
Roo = 0.0030; 
R10 = 0.0010; 
A21 = -10.0; 
A22 = -8.75; 
R20 = 0.08; 
Tau1 = 100; 
ns = 6; %每个并行分支中串联的单元数

%% 计算初始提取电荷
Qe_init = (1-SOC_init)*Kc*Costar*interp1([theta_f Kt_Temps],[0 Kt],theta_init,'spline');

