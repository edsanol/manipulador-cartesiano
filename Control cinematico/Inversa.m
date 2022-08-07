%%INVERSA
%Constantes


%Valores de la noap
A11 = 0.9848;
A12 = -0.1736;
A21 = 0.0449
A22 = 0.2549;
A23 = -0.6428;
A33 = 0.7660;


%Angulo Teta 3
T3 = atan(-A33/A23)

%Angulo Teta 6
AT6 = A11 - A22/sind(T3)
BT6 = A21/sind(T3) + A12 
T6 = atan(AT6/BT6)
