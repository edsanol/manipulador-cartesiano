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
ti = 0;
N = 100;

figure(2);
pause(0.00001);
frame_h = get(handle(gcf),'JavaFrame');
set(frame_h,'Maximized',1);

T1 = TrapezoidalTiempoEje(D1, qf1, 2, 3, N);
T2 = TrapezoidalTiempoEje(D2, qf2, 2, 3, N);
T3 = TrapezoidalTiempoEje(Q3, qf3, 2, 3, N);
T4 = TrapezoidalTiempoEje(Q4, qf4, 2, 3, N);
T5 = TrapezoidalTiempoEje(Q5, qf5, 2, 3, N);
T6 = TrapezoidalTiempoEje(Q6, qf6, 2, 3, N);
pause(1);

S1 = InterpoladorTrapezoidalEje(D1, qf1, 2, 3, N,1,2,3, ti);

S2 = InterpoladorTrapezoidalEje(D2, qf2, 2, 3, N,4,5,6, T1);

S3 = InterpoladorTrapezoidalEje(Q3, qf3, 2, 3, N,7,8,9, T2+T1);

S4 = InterpoladorTrapezoidalEje(Q4, qf4, 2, 3, N,10,11,12, T3+T2+T1);

S5 = InterpoladorTrapezoidalEje(Q5, qf5, 2, 3, N,13,14,15, T4+T3+T2+T1);

S6 = InterpoladorTrapezoidalEje(Q6, qf6, 2, 3, N,16,17,18, T5+T4+T3+T2+T1);
pause(0.5);

figure
Y = ManipuladorCartesianoEjeTrapezoidal(S1, S2, S3, S4, S5, S6, D2, Q3, Q4, Q5, Q6, N);
pause(2);
