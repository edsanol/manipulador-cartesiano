clear, clc;

%Valores articulares iniciales
D1 = 0;
D2 = 0;
Q3 = 0;
Q4 = 0;
Q5 = 0;
Q6 = 0;
%Valores articulares finales
qf1 = 10;
qf2 = 8;
qf3 = 45;
qf4 = 40;
qf5 = -75;
qf6 = 20;
%Numero de puntos
ti = 2;
N = 100;
V = 3;
a = 2;

T1 = TrapezoidalTiempoCoordinado(D1, qf1, 2, 3, N, ti);
T2 = TrapezoidalTiempoCoordinado(D2, qf2, 2, 3, N, ti);
T3 = TrapezoidalTiempoCoordinado(Q3, qf3, 2, 3, N, ti);
T4 = TrapezoidalTiempoCoordinado(Q4, qf4, 2, 3, N, ti);
T5 = TrapezoidalTiempoCoordinado(Q5, qf5, 2, 3, N, ti);
T6 = TrapezoidalTiempoCoordinado(Q6, qf6, 2, 3, N, ti);
pause(1);

T = [T1, T2, T3, T4, T5, T6];
TM = max(T)+ti;

figure(2);
pause(0.00001);
frame_h = get(handle(gcf),'JavaFrame');
set(frame_h,'Maximized',1);

S1 = InterpoladorTCoordinado(D1, qf1, a, V, N, ti, TM,1,2,3);

S2 = InterpoladorTCoordinado(D2, qf2, a, V, N, ti, TM,4,5,6);

S3 = InterpoladorTCoordinado(Q3, qf3, a, V, N, ti, TM,7,8,9);

S4 = InterpoladorTCoordinado(Q4, qf4, a, V, N, ti, TM,10,11,12);

S5 = InterpoladorTCoordinado(Q5, qf5, a, V, N, ti, TM,13,14,15);

S6 = InterpoladorTCoordinado(Q6, qf6, a, V, N, ti, TM,16,17,18);
pause(1);

Y = ManipuladorCartesianoCoordinada(S1, S2, S3, S4, S5, S6, N);
pause(2);
