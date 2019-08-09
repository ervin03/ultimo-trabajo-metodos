clc
clear
Xo=0;
Yo=2;
Zo=4;
Dt=0.1;
Xf=2;
%--------------------------
X(1)=Xo;
Y(1)=Yo;
Z(1)=Zo;
X1(1)=Xo;
Y1(1)=Yo;
Z1(1)=Zo;
i=1;
while X(i)<=Xf
    X(i+1)=X(i)+Dt;
    Y1(i+1)=Y1(i)+Dt*F1(X(i),Y1(i),Z1(i));
    Z1(i+1)=Z1(i)+Dt*F2(X(i),Y1(i),Z1(i));
    K1=Dt*F1(X(i),Y(i),Z(i));
    L1=Dt*F2(X(i),Y(i),Z(i));
    K2=Dt*F1(X(i)+0.5*Dt,Y(i)+0.5*K1,Z(i)+0.5*L1);
    L2=Dt*F2(X(i)+0.5*Dt,Y(i)+0.5*K1,Z(i)+0.5*L1);
    K3=Dt*F1(X(i)+0.5*Dt,Y(i)+0.5*K2,Z(i)+0.5*L1);
    L3=Dt*F2(X(i)+0.5*Dt,Y(i)+0.5*K2,Z(i)+0.5*L1);
    K4=Dt*F1(X(i)+Dt,Y(i)+K3,Z(i)+13);
    L4=Dt*F2(X(i)+Dt,Y(i)+K3,Z(i)+13);
    Y(i+1)=Y(i)+(1/6)*(K1+2*K2+2*K3+K4);
    Z(i+1)=Z(i)+(1/6)*(L1+2*L2+2*L3+L4);
    i=i+1
end
plot(X,Y,X,Z,X,Y1,X,Z1)
legend('Y(x)','Z(x)','Y1euler','Z1euler')

%------------------------------------------------
function T=F1(X,Y,Z)
T=-2*Y+4*exp(-X);
end
function T=F2(X,Y,Z)
T=-(Y*Z^2)/3;
end