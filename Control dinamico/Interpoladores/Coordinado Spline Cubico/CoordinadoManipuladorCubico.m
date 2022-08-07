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

x = 0:0.22:22;
figure(2);
pause(0.00001);
frame_h = get(handle(gcf),'JavaFrame');
set(frame_h,'Maximized',1);

A11 = PrimerInterpoladorCoordinado(D1, D1+(inc1*1), D1+(inc1*2), D1+(inc1*3), D1+(inc1*4), DF1, N1); %Valores para q1 en la trayectoria 1
subplot(2,3,1),plot(x,A11),title('Grafica de Posición Q1');

A12 = PrimerInterpoladorCoordinado(D2, D2+(inc2*1), D2+(inc2*2), D2+(inc2*3), D2+(inc2*4), DF2, N1);     %Valores para q2 en la trayectoria 1
subplot(2,3,2),plot(x,A12),title('Grafica de Posición Q2');

A13 = PrimerInterpoladorCoordinado(Q3, Q3+(inc3*1), Q3+(inc3*2), Q3+(inc3*3), Q3+(inc3*4), QF3, N1);  %Valores para q3 en la trayectoria 1
subplot(2,3,3),plot(x,A13),title('Grafica de Posición Q3');

A14 = PrimerInterpoladorCoordinado(Q4, Q4+(inc4*1), Q4+(inc4*2), Q4+(inc4*3), Q4+(inc4*4), QF4, N1);     %Valores para q4 en la trayectoria 1
subplot(2,3,4),plot(x,A14),title('Grafica de Posición Q4');

A15 = PrimerInterpoladorCoordinado(Q5, Q5+(inc5*1), Q5+(inc5*2), Q5+(inc5*3), Q5+(inc5*4), QF5, N1);     %Valores para q4 en la trayectoria 1
subplot(2,3,5),plot(x,A15),title('Grafica de Posición Q5');

A16 = PrimerInterpoladorCoordinado(Q6, Q6+(inc6*1), Q6+(inc6*2), Q6+(inc6*3), Q6+(inc6*4), QF6, N1);     %Valores para q4 en la trayectoria 1
subplot(2,3,6),plot(x,A16),title('Grafica de Posición Q8');
pause(0.5)

Y = ManipuladorCartesianoCoordinada(A11, A12, A13, A14, A15, A16, n);  %Grafico los vectores de posicion obtenidos
pause(2);
