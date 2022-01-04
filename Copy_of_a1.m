% 传递函数幅值可视化

clc,clear;


%  根轨迹增益 + 零极点
%|          M(s)             K'(s - 2)
%|  G(s) = ——— = ——————————————
%|          N(s)     ( s - 1 )( s - 3 )( s - 4 ) 


K = 6;
Z = [ 2 ];
P = [ 1 , 3 , 4 ];
% 
% Gs = zpk(Z,P,K);  
%这个函数名也很有意思，就是zpk，零极点增益，参数。







[x,y] = meshgrid(-6:0.1:6);

s = x + y*i;

Gs = (s - Z(1)) / ( (s - P(1)) * (s - P(2)) * (s - P(3)));

z = abs(Gs);

surf(x,y,z),xlabel('1'),ylabel('j'),zlabel('|G(s)|')






