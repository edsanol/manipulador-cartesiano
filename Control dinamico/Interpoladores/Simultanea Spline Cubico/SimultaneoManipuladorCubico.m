clear
clc

N1 = 6;     %Numero de q para la primera trayectoria
n = 100;

D1 = 0;
DF1 = 10;
inc1 = (DF1-D1)/5;
t1 = [0,4,8,14,18,24];
TM1 = max(t1);

D2 = 7;
DF2 = 2;
inc2 = (DF2-D2)/5;
t2 = [0,2,5,11,14,20];
TM2 = max(t2);

Q3 = 10;
QF3 = 45;
inc3 = (QF3-Q3)/5;
t3 = [0,5,10,15,19,26];
TM3 = max(t3);

Q4 = 0;
QF4 = 0;
inc4 = (QF4-Q4)/5;
t4 = [0,5,10,14,18,23];
TM4 = max(t4);

Q5 = 0;
QF5 = 60;
inc5 = (QF5-Q5)/5;
t5 = [0,6,11,17,21,27];
TM5 = max(t5);

Q6 = 40;
QF6 = 20;
inc6 = (QF6-Q6)/5;
t6 = [0,4,8,12,17,22];
TM6 = max(t6);

TM = [TM1, TM2, TM3, TM4, TM5, TM6];
Tmax = max(TM);

x = 0:0.22:22;
figure(2);
pause(0.00001);
frame_h = get(handle(gcf),'JavaFrame');
set(frame_h,'Maximized',1);

A11 = InterpoladorCubicoSimultaneo(D1, D1+(inc1*1), D1+(inc1*2), D1+(inc1*3), D1+(inc1*4), DF1, N1); %Valores para q1 en la trayectoria 1
subplot(2,3,1),plot(x,A11),title('Grafica de Posición Q1');

A12 = InterpoladorCubicoSimultaneo(D2, D2+(inc2*1), D2+(inc2*2), D2+(inc2*3), D2+(inc2*4), DF2, N1);  %Valores para q2 en la trayectoria 1
subplot(2,3,2),plot(x,A12),title('Grafica de Posición Q2');

A13 = InterpoladorCubicoSimultaneo(Q3, Q3+(inc3*1), Q3+(inc3*2), Q3+(inc3*3), Q3+(inc3*4), QF3, N1);  %Valores para q3 en la trayectoria 1
subplot(2,3,3),plot(x,A13),title('Grafica de Posición Q3');

A14 = InterpoladorCubicoSimultaneo(Q4, Q4+(inc4*1), Q4+(inc4*2), Q4+(inc4*3), Q4+(inc4*4), QF4, N1);  %Valores para q4 en la trayectoria 1
subplot(2,3,4),plot(x,A14),title('Grafica de Posición Q4');

A15 = InterpoladorCubicoSimultaneo(Q5, Q5+(inc5*1), Q5+(inc5*2), Q5+(inc5*3), Q5+(inc5*4), QF5, N1);  %Valores para q4 en la trayectoria 1
subplot(2,3,5),plot(x,A15),title('Grafica de Posición Q5');

A16 = InterpoladorCubicoSimultaneo(Q6, Q6+(inc6*1), Q6+(inc6*2), Q6+(inc6*3), Q6+(inc6*4), QF6, N1);  %Valores para q4 en la trayectoria 1
subplot(2,3,6),plot(x,A16),title('Grafica de Posición Q6');
pause(0.5)

M1 = InterpoladorCubicoVector(D1, D1+(inc1*1), D1+(inc1*2), D1+(inc1*3), D1+(inc1*4), DF1, N1, t1, n, Tmax); 
pause(0.5)
M2 = InterpoladorCubicoVector(D2, D2+(inc2*1), D2+(inc2*2), D2+(inc2*3), D2+(inc2*4), DF2, N1, t2, n, Tmax);      
pause(0.5)
M3 = InterpoladorCubicoVector(Q3, Q3+(inc3*1), Q3+(inc3*2), Q3+(inc3*3), Q3+(inc3*4), QF3, N1, t3, n, Tmax);  
pause(0.5)
M4 = InterpoladorCubicoVector(Q4, Q4+(inc4*1), Q4+(inc4*2), Q4+(inc4*3), Q4+(inc4*4), QF4, N1, t4, n, Tmax);      
pause(0.5)
M5 = InterpoladorCubicoVector(Q5, Q5+(inc5*1), Q5+(inc5*2), Q5+(inc5*3), Q5+(inc5*4), QF5, N1, t5, n, Tmax);     
pause(0.5)
M6 = InterpoladorCubicoVector(Q6, Q6+(inc6*1), Q6+(inc6*2), Q6+(inc6*3), Q6+(inc6*4), QF6, N1, t6, n, Tmax);     
pause(0.5)

Y = ManipuladorCartesianoSimultaneaCubico(M1, M2, M3, M4, M5, M6, n);  %Grafico los vectores de posicion obtenidos
pause(2);
