 function [Px,Py,Pz]=Recta_Puntos(P1,P2,N)
x=[];
y=[];
z=[];
for i=1:1:N-1
    C=(P2(1)-P1(1))/N;
    C2=(P2(2)-P1(2))/N;
    C3=(P2(3)-P1(3))/N;
    x(i)=(C*i)+P1(1);
    y(i)=(C2*i)+P1(2);
    z(i)=C3*i+P1(3);
end
Px=[P1(1),x,P2(1)]
Py=[P1(2),y,P2(2)]
Pz=[P1(3),z,P2(3)]
end