%渐进BODE图

clc,clear

% 开环传递函数实现，多项式
%|          M(s)          s + 2
%|  G(s) = ——— = ————————
%|          N(s)      s^2 + 2s + 3

Ms = [10 , 1];
Ns = [1, 1];

Gcs = tf(Ms, Ns);

bode(Gcs);
grid;

xlabel('\omega')
ylabel('L(\omega)')
ylabel('\phi(\omega)')



