clc
clear

I=quad(@ecua,2,8);
disp(I)
function t=ecua(t)
t=45.*exp(-0.5.*t)+18.*exp(0.15.*t)+20.*((cos(0.4.*t)).^2).*exp(-0.5.*t)+(8.*((cos(0.4.*t)).^2).*exp(0.15.*t));
end


