% parameter

PN = 3000;
UN = 380;
IN = 6.9;
nN = 1400;
fN = 50;
np = 2;

Rs = 1.85;
Rr = 2.685;
Ls = 0.294;
Lr = 0.2898;
Lm = 0.2838;
Lls= Ls - Lm;
Llr= Lr - Lm;
J  = 0.1284;

Tr = Lr/Rr;
sigma = 1 - Lm^2/(Ls*Lr);
TN = PN/(2*pi*nN/60); %额定负载


% 电流滞环控制

band = 0.01;  %电流滞环宽度





