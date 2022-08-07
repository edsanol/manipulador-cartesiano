%Puntos inicial y final al usuario
P1=[];
P2=[];
P1=input('Ingrese el Punto Inicial: ');
P2=input('Ingrese el Punto Final: ');
N=input('Ingrese puntos intermedios deseados: ');
%uso de la funcion recta_puntos para hallar los puntos intermedios
[Px,Py,Pz]=Recta_Puntos(P1,P2,N);
%Grafica de la recta
hold on
L1 = plot3(Px,Py,Pz,'bo','linewidth',2);
view(45, 45)
xlim([-30 30]) 
ylim([-30 30])
zlim([-30 30])
grid on