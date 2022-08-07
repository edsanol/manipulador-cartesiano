clear, clc;

%Valores articulares iniciales
D1 = 2;
D2 = 7;
Q3 = 30;
Q4 = -30;
Q5 = 0;
Q6 = -10;
%Valores articulares finales
qf1 = 10;
qf2 = 8;
qf3 = 55;
qf4 = 40;
qf5 = -60;
qf6 = 20;
%Numero de puntos
ti = 2;
N = 200;
V = 3;
a = 2;

T1 = TrapezoidalTiempoSimultaneo(D1, qf1, 2, 3, N, ti);
T2 = TrapezoidalTiempoSimultaneo(D2, qf2, 2, 3, N, ti);
T3 = TrapezoidalTiempoSimultaneo(Q3, qf3, 2, 3, N, ti);
T4 = TrapezoidalTiempoSimultaneo(Q4, qf4, 2, 3, N, ti);
T5 = TrapezoidalTiempoSimultaneo(Q5, qf5, 2, 3, N, ti);
T6 = TrapezoidalTiempoSimultaneo(Q6, qf6, 2, 3, N, ti);
pause(1);

T = [T1, T2, T3, T4, T5, T6];
TM = max(T)+ti;

figure(1);
pause(0.00001);
frame_h = get(handle(gcf),'JavaFrame');
set(frame_h,'Maximized',1);


S1 = InterpoladorTrapezoidalSimultaneo(D1, qf1, a, V, N, ti,1,2,3);

S2 = InterpoladorTrapezoidalSimultaneo(D2, qf2, a, V, N, ti,4,5,6);

S3 = InterpoladorTrapezoidalSimultaneo(Q3, qf3, a, V, N, ti,7,8,9);

S4 = InterpoladorTrapezoidalSimultaneo(Q4, qf4, a, V, N, ti,10,11,12);

S5 = InterpoladorTrapezoidalSimultaneo(Q5, qf5, a, V, N, ti,13,14,15);

S6 = InterpoladorTrapezoidalSimultaneo(Q6, qf6, a, V, N, ti,16,17,18);
pause(1);

M1 = PruebaTSimultaneo(D1, qf1, a, V, N, TM);
M2 = PruebaTSimultaneo(D2, qf2, a, V, N, TM);
M3 = PruebaTSimultaneo(Q3, qf3, a, V, N, TM);
M4 = PruebaTSimultaneo(Q4, qf4, a, V, N, TM);
M5 = PruebaTSimultaneo(Q5, qf5, a, V, N, TM);
M6 = PruebaTSimultaneo(Q6, qf6, a, V, N, TM);

Y = ManipuladorCartesianoSimultaneaTrapezoidal(M1, M2, M3, M4, M5, M6, N);
pause(1);
