clc
clear
X=[0 8 16 24 32 40];
Y=[14.621 11.843 9.870 8.418 7.305 6.413];
xm=27;
yp=[0 40];
i=1;
while X(i)<xm;
   
    i=i+1;
end
ym=Y(i)-(Y(i)-Y(i-1))/(X(i)-X(i-1))*(X(i)-xm)
plot(X,Y,xm,ym,'p-')
