%½Ì²ÄÍ¼6-38

clc,clear

K1 = 500; numg = [1]; deng = [1,15,50,0];
[num,den] = series(K1,1,numg,deng);
w = logspace(-1,2,200);
[mag,phase,w] = bode(num,den,w);
[Gm,Pm,Wcg,Wcp] = margin(mag,phase,w);
Phi = (60-Pm)*pi/180;
    a = (1+sin(Phi))/(1-sin(Phi));
M = -10*log10(a)*ones(length(w),1);
[mag,phase,w]=bode(num,den,w);
semilogx(w,20*log10(mag),w,M);grid



