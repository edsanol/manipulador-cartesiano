clear
clc

N1 = 6;     %Numero de q para la primera trayectoria
n = 100;

D1 = 0;
DF1 = 10;
inc1 = (DF1-D1)/5;

D2 = 7;
DF2 = 7;
inc2 = (DF2-D2)/5;

Q3 = 10;
QF3 = 45;
inc3 = (QF3-Q3)/5;

Q4 = 0;
QF4 = -20;
inc4 = (QF4-Q4)/5;

Q5 = 0;
QF5 = 60;
inc5 = (QF5-Q5)/5;

Q6 = 40;
QF6 = 20;
inc6 = (QF6-Q6)/5;

T1 = PrimerInterpoladorTiempoCubico(D1, D1+(inc1*1), D1+(inc1*2), D1+(inc1*3), D1+(inc1*4), DF1, N1);
T2 = PrimerInterpoladorTiempoCubico(D2, D2+(inc2*1), D2+(inc2*2), D2+(inc2*3), D2+(inc2*4), DF2, N1);
T3 = PrimerInterpoladorTiempoCubico(Q3, Q3+(inc3*1), Q3+(inc3*2), Q3+(inc3*3), Q3+(inc3*4), QF3, N1);
T4 = PrimerInterpoladorTiempoCubico(Q4, Q4+(inc4*1), Q4+(inc4*2), Q4+(inc4*3), Q4+(inc4*4), QF4, N1);
T5 = PrimerInterpoladorTiempoCubico(Q5, Q5+(inc5*1), Q5+(inc5*2), Q5+(inc5*3), Q5+(inc5*4), QF5, N1);
T6 = PrimerInterpoladorTiempoCubico(Q6, Q6+(inc6*1), Q6+(inc6*2), Q6+(inc6*3), Q6+(inc6*4), QF6, N1);

x1 = 0:T1/n:T1;
x2 = 0:T2/n:T2;
x3 = 0:T3/n:T3;
x4 = 0:T4/n:T4;
x5 = 0:T5/n:T5;
x6 = 0:T6/n:T6;
figure(2);
pause(0.00001);
frame_h = get(handle(gcf),'JavaFrame');
set(frame_h,'Maximized',1);

A11 = InterpoladorEjeCubico(D1, D1+(inc1*1), D1+(inc1*2), D1+(inc1*3), D1+(inc1*4), DF1, N1); %Valores para q1 en la trayectoria 1
subplot(2,3,1),plot(x1,A11),title('Grafica de Posición Q1');

A12 = InterpoladorEjeCubico(D2, D2+(inc2*1), D2+(inc2*2), D2+(inc2*3), D2+(inc2*4), DF2, N1);     %Valores para q2 en la trayectoria 1
subplot(2,3,2),plot(x2+T1,A12),title('Grafica de Posición Q2');

A13 = InterpoladorEjeCubico(Q3, Q3+(inc3*1), Q3+(inc3*2), Q3+(inc3*3), Q3+(inc3*4), QF3, N1);  %Valores para q3 en la trayectoria 1
subplot(2,3,3),plot(x3+T1+T2,A13),title('Grafica de Posición Q3');

A14 = InterpoladorEjeCubico(Q4, Q4+(inc4*1), Q4+(inc4*2), Q4+(inc4*3), Q4+(inc4*4), QF4, N1);     %Valores para q4 en la trayectoria 1
subplot(2,3,4),plot(x4+T1+T2+T3,A14),title('Grafica de Posición Q4');

A15 = InterpoladorEjeCubico(Q5, Q5+(inc5*1), Q5+(inc5*2), Q5+(inc5*3), Q5+(inc5*4), QF5, N1);     %Valores para q4 en la trayectoria 1
subplot(2,3,5),plot(x5+T1+T2+T3+T4,A15),title('Grafica de Posición Q5');

A16 = InterpoladorEjeCubico(Q6, Q6+(inc6*1), Q6+(inc6*2), Q6+(inc6*3), Q6+(inc6*4), QF6, N1);     %Valores para q4 en la trayectoria 1
subplot(2,3,6),plot(x6+T1+T2+T3+T4+T5,A16),title('Grafica de Posición Q6');
pause(0.5)

Y = ManipuladorCartesianoEjeCubico(A11, A12, A13, A14, A15, A16, D2, Q3, Q4, Q5, Q6, n);  %Grafico los vectores de posicion obtenidos
pause(2);
