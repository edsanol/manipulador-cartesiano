clear
clc
syms T3 T4 T5 T6 L3 L4 L5 L6 D1 D2 
pi=sym('pi');

% V1=[   180,  D1,   0, -90];
% V2=[    90,  D2,   0,  90];
% V3=[T3+180,  L3,   0,  90];
% V4=[ T4-90,   0, -L4,   0];
% V5=[    T5,   0, -L5,   0];
% V6=[    T6,   0, -L6,   0];

d1 =20;
d2 =20;
q3 = 80;
q4 = -30;
q5 = 80;
q6 =-70;

V1=[    180,   d1,     0, -90];
V2=[     90,   d2,     0,  90];
V3=[ q3+180,    0,     0,  90];
V4=[  q4-90,    0, -15.5,   0];
V5=[     q5,    0, -15.5,   0];
V6=[     q6,    0,  -5.7,   0];

A1=[cosd(V1(1)), -cosd(V1(4))*sind(V1(1)),  sind(V1(4))*sind(V1(1)), V1(3)*cosd(V1(1));
    sind(V1(1)),  cosd(V1(4))*cosd(V1(1)), -sind(V1(4))*cosd(V1(1)), V1(3)*sind(V1(1));
              0,              sind(V1(4)),              cosd(V1(4)),             V1(2);
              0,                        0,                        0,                1];

A2=[cosd(V2(1)), -cosd(V2(4))*sind(V2(1)),  sind(V2(4))*sind(V2(1)), V2(3)*cosd(V2(1));
    sind(V2(1)),  cosd(V2(4))*cosd(V2(1)), -sind(V2(4))*cosd(V2(1)), V2(3)*sind(V2(1));
              0,              sind(V2(4)),              cosd(V2(4)),             V2(2);
              0,                        0,                        0,                1];

A3=[cosd(V3(1)), -cosd(V3(4))*sind(V3(1)),  sind(V3(4))*sind(V3(1)), V3(3)*cosd(V3(1));
    sind(V3(1)),  cosd(V3(4))*cosd(V3(1)), -sind(V3(4))*cosd(V3(1)), V3(3)*sind(V3(1));
              0,              sind(V3(4)),              cosd(V3(4)),             V3(2);
              0,                        0,                        0,                1];

A4=[cosd(V4(1)), -cosd(V4(4))*sind(V4(1)),  sind(V4(4))*sind(V4(1)), V4(3)*cosd(V4(1));
    sind(V4(1)),  cosd(V4(4))*cosd(V4(1)), -sind(V4(4))*cosd(V4(1)), V4(3)*sind(V4(1));
              0,              sind(V4(4)),              cosd(V4(4)),             V4(2);
              0,                        0,                        0,                1];

A5=[cosd(V5(1)), -cosd(V5(4))*sind(V5(1)),  sind(V5(4))*sind(V5(1)), V5(3)*cosd(V5(1));
    sind(V5(1)),  cosd(V5(4))*cosd(V5(1)), -sind(V5(4))*cosd(V5(1)), V5(3)*sind(V5(1));
              0,              sind(V5(4)),              cosd(V5(4)),             V5(2);
              0,                        0,                        0,                1];

A6=[cosd(V6(1)), -cosd(V6(4))*sind(V6(1)),  sind(V6(4))*sind(V6(1)), V6(3)*cosd(V6(1));
    sind(V6(1)),  cosd(V6(4))*cosd(V6(1)), -sind(V6(4))*cosd(V6(1)), V6(3)*sind(V6(1));
              0,              sind(V6(4)),              cosd(V6(4)),             V6(2);
              0,                        0,                        0,                1];

Z=A1*A2*A3*A4*A5*A6

a11=Z(1,1);
a12=Z(1,2);
a21=Z(2,1);
a22=Z(2,2);
a23=Z(2,3);
a31=Z(3,1);
a32=Z(3,2);
a33=Z(3,3);
Py=Z(2,4)
Pz=Z(3,4)
Px=Z(1,4)
L7=0;
L4=0;
L3=0;
L6=14.2;
L8=9.5;
L5=15.2;
ST3 = sind(q3);
CT3 = cosd(q3);
CT4 = cosd(q4);
CT45 = cosd(q4+q5);
CT456 = cosd(q4+q5+q6);
ST4 = sind(q4);
ST45 = sind(q4+q5);
ST456 = sind(q4+q5+q6);

A = Px+L3;
B = Py + L7*CT3 + L4*ST3
C = Pz + L4*CT3 - L7*ST3
D = (B+d2)/ST3;
D2 = (C-d1)/CT3;
Q2 = (a33/-a23)*(C-d1)-B
E = D + L8*ST456;
F = -Px - L8*CT456 - L3;
G = L6^2 - L5^2 - E^2 - F^2;
H = G/(2*L5);
R = sqrt(E^2+F^2);

M = L7/ST3;
K = CT3*Py;
L = ST3*Pz;
N = K/ST3;
O = CT3/ST3;
P = L/ST3;
T = M/CT3;
U = N/CT3;
V = Pz/CT3;
W = O/CT3;
X = C/CT3 + T + U - V;
Y = B/ST3;

AA = X + W*d2;
AB = Y + d2/ST3;
AC = W - 1/ST3;
AD = Y-X;
AE = d2*(W - 1/ST3);

RQ2 = (Y - X)/AC;

Q1 = -M-N-O*d2 + Pz

RT3 = atand(a33/-a23)

alfa = atand(F/E);
RT4 = -asind(H/R) + alfa
RT41 = asind(H/R) - alfa
RT42 = -asind(H/R) - alfa
RT43 = asind(H/R) + alfa
RT44 = -asind(H/R) + alfa - 180
RT45 = -asind(H/R) - alfa + 180
RT46 = -asind(H/R) - alfa - 180
RT47 = asind(H/R) + alfa - 180
RT48 = asind(H/R) + alfa + 180
RT49 = asind(H/R) - alfa + 180

T45 = q4+q5;
RT5 = T45-q4

T456 = q4+q5+q6;
RT6 = T456-q5-q4