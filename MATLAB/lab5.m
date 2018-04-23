function lab5
global Us a R i0
a = 1; R = 1; i0 = 1;   % seit ir jaieliek sava diode
%a,i0
t = 0:0.01:1; % laiks ari janomaina
Ust = lab3(t); % jaieliek savs signals no lab3, ja sanak 0 , jaieliek prieksa kads reizinatajs
URt = [];
for Us = Ust
    UR = newmet5;
    URt = [URt,UR]; 
end
plot(t,Ust,t,URt)



function x0 = newmet5(x0,epsilon)
if nargin == 0
    epsilon = 1e-3;
    x0 = 0;
end
delta = funx(x0)/fund(x0);
while abs(delta)>epsilon
    delta = funx(x0)/fund(x0);
    x0 = x0-delta;
end

function fx = funx(UR)
%i0=1; a=1; Us=1; R=1;
global Us a R i0
fx = i0*(exp(a*(Us-UR))-1)-UR/R;


function fx = fund(UR)
%R=1; a=1; i0=1; Us=1;
global Us a R i0
fx = - 1/R - a*i0*exp(-a*(UR - Us));

