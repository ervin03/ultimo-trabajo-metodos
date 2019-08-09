clc
clear
X=[0.1 0.2 0.4 0.6 0.9 1.3 1.5 1.7 1.8];
Y=[0.75 1.25 1.45 1.25 0.85 0.55 0.35 0.28 0.18];
Y2=log(Y./X);
A=sum(X.*Y2);
B=sum(X.^2);
C=sum(X);
D=sum(Y2);
n=length(X);
b=(A*C-B*D)/(C^2-n*B);
m=(-D*C+A*n)/(B*n-C^2);
Yt=m*X+b;
E=sum((Y-Yt).^2);
plot(X,Y2,X,Yt,'p-')
legend('medidas','ajuste')
title('ajuste por minimos cuadrados')
xlabel('datos X')
ylabel('datos Y')
disp('beta')
disp(m)
disp('alfa')
disp(exp(b))