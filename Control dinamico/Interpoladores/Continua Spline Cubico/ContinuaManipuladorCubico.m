clear
clc
%INGRESO DE LOS PUNTOS INICIAL Y FINAL
R=input('INGRESE TRAYECTORIA A REALIZAR: ');

%%%%%%%%%%%%%%%%%%%%%%PUNTOS VALIDOS%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%Puntos
%INICIAL PI = [-19.0532, -35.9398, 4.9788]
%FINAL   PF = [-1.2, -26.0432, -11.0618]
if R==1
    T1 =[5,5,5,5,5,5]; 
    T2 =[10,7,6,6,7,8];
    T3 =[90,83,76,69,60,53];
    T4 =[35,35,35,35,35,35];
    T5 =[25,36,47,56,69,80];
    T6 =[50,50,50,50,50,50];
    
%%Puntos
%INICIAL PI = [-8.4571, 3.7157, -9.667]
%FINAL   PF = [-20.8683, 13.6262, 5.74455]
elseif R==2
    T1 =[10,12,14,16,15,12]; 
    T2 =[10,10,10,10,10,10];
    T3 =[-35,-40,-45,-50,-60,-75];
    T4 =[20,20,20,20,20,20];
    T5 =[80,73,66,59,52,45];
    T6 =[30,30,30,30,30,30];
    
%Puntos
%INICIAL PI = [-36.7, -11.994, 0]
%FINAL   PF = [-24.8682, -17.7422, 9.9912]
elseif R==3
    T1 =[0,2,4,6,8,10]; 
    T2 =[12,12,12,12,12,12];
    T3 =[0,18,36,54,72,90];
    T4 =[0,-10,-20,-30,-40,-50];
    T5 =[0,18,36,54,72,90];
    T6 =[0,6,12,18,24,30];
    
%Puntos
%INICIAL PI = [-28.6156, -15.3857, 19.9905]
%FINAL   PF = [-28.6085, -10.3877, 10.0046]
elseif R==4
    T1 =[20,18,16,14,12,10]; 
    T2 =[15,14,13,12,11,10];
    T3 =[90,90,90,90,90,90];
    T4 =[-50,-50,-50,-50,-50,-50];
    T5 =[90,90,90,90,90,90];
    T6 =[-40,-40,-40,-40,-40,-40];
    
%Puntos
%INICIAL PI = [-36.7, -2.9986, 4.9977]
%FINAL   PF = [-36.7, -14.9931, 19.9907]
elseif R==5
    T1 =[5,8,11,14,17,20]; 
    T2 =[3,5.4,7.8,10.2,12.6,15];
    T3 =[0,0,0,0,0,0];
    T4 =[0,0,0,0,0,0];
    T5 =[0,0,0,0,0,0];
    T6 =[0,0,0,0,0,0];
    
%Puntos
%INICIAL PI = [-36.7, -19.9907, 14.9931]
%FINAL   PF = [-36.7, -9.9954, 14.9931]
elseif R==6
    T1 =[15,15,15,15,15,15]; 
    T2 =[20,18,16,14,12,10];
    T3 =[0,0,0,0,0,0];
    T4 =[0,0,0,0,0,0];
    T5 =[0,0,0,0,0,0];
    T6 =[0,0,0,0,0,0];
    
%Puntos
%INICIAL PI = [-36.7, -11.994, 4.9977]
%FINAL   PF = [-36.7, -11.9944, 14.9931]
elseif R==7
    T1 =[5,7,9,11,13,15]; 
    T2 =[12,12,12,12,12,12];
    T3 =[0,0,0,0,0,0];
    T4 =[0,0,0,0,0,0];
    T5 =[0,0,0,0,0,0];
    T6 =[0,0,0,0,0,0];
    
%Puntos
%INICIAL PI = [-28.6156, -10.3871, 9.9951]
%FINAL   PF = [-28.6156, -10.3871, 24.9881]
elseif R==8
    T1 =[10,13,16,19,22,25]; 
    T2 =[10,10,10,10,10,10];
    T3 =[90,90,90,90,90,90];
    T4 =[-50,-50,-50,-50,-50,-50];
    T5 =[90,90,90,90,90,90];
    T6 =[-40,-40,-40,-40,-40,-40];
 
%Puntos
%INICIAL PI = [-28.6085, -3.3863, 14.9931]
%FINAL   PF = [-28.6085, -16.3816, 15]
elseif R==9
    T1 =[15,15,15,15,15,15]; 
    T2 =[3,5.6,8.2,10.8,13.4,16];
    T3 =[90,90,90,90,90,90];
    T4 =[-50,-50,-50,-50,-50,-50];
    T5 =[90,90,90,90,90,90];
    T6 =[-40,-40,-40,-40,-40,-40];
    
%Puntos
%INICIAL PI = [-28.6085, -10.38301 9.9954]
%FINAL   PF = [-28.6085, -15.3853, 15.0023]
elseif R==10
    T1 =[10,12,14,16,18,20]; 
    T2 =[10,11,12,13,14,15];
    T3 =[90,90,90,90,90,90];
    T4 =[-50,-50,-50,-50,-50,-50];
    T5 =[90,90,90,90,90,90];
    T6 =[-40,-40,-40,-40,-40,-40];
end
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
N1 = 6;     %Numero de q para la primera trayectoria
n = 100;

D1 = T1(1);
DF1 = T1(6);

D2 = T2(1);
DF2 = T2(6);

Q3 = T3(1);
QF3 = T3(6);

Q4 = T4(1);
QF4 = T4(6);

Q5 = T5(1);
QF5 = T5(6);

Q6 = T6(1);
QF6 = T6(6);

x = 0:0.22:22;
figure(2);
pause(0.00001);
frame_h = get(handle(gcf),'JavaFrame');
set(frame_h,'Maximized',1);

A11 = PrimerInterpoladorContinua(T1(1),T1(2),T1(3),T1(4),T1(5),T1(6),N1); %Valores para q1 en la trayectoria 1
subplot(2,3,1),plot(x,A11),title('Grafica de Posición Q1');

A12 = PrimerInterpoladorContinua(T2(1),T2(2),T2(3),T2(4),T2(5),T2(6),N1);     %Valores para q2 en la trayectoria 1
subplot(2,3,2),plot(x,A12),title('Grafica de Posición Q2');

A13 = PrimerInterpoladorContinua(T3(1),T3(2),T3(3),T3(4),T3(5),T3(6), N1);  %Valores para q3 en la trayectoria 1
subplot(2,3,3),plot(x,A13),title('Grafica de Posición Q3');

A14 = PrimerInterpoladorContinua(T4(1),T4(2),T4(3),T4(4),T4(5),T4(6), N1);     %Valores para q4 en la trayectoria 1
subplot(2,3,4),plot(x,A14),title('Grafica de Posición Q4');

A15 = PrimerInterpoladorContinua(T5(1),T5(2),T5(3),T5(4),T5(5), T5(6),N1);     %Valores para q4 en la trayectoria 1
subplot(2,3,5),plot(x,A15),title('Grafica de Posición Q5');

A16 = PrimerInterpoladorContinua(T6(1),T6(2),T6(3),T6(4),T6(5),T6(6), N1);     %Valores para q4 en la trayectoria 1
subplot(2,3,6),plot(x,A16),title('Grafica de Posición Q6');
pause(0.5)

Y = ManipuladorCartesianoContinua(A11, A12, A13, A14, A15, A16, n);  %Grafico los vectores de posicion obtenidos
pause(2);