clc,clear


Gs = tf(10,[1,1,0]);

w = 10e-2:0.01:100;
[x1,y1] = bd_asymp(Gs,w);
semilogx(x1,y1);
xlabel('\omega');
ylabel('L(\omega) dB');
grid;





