function [spline2] = InterpoladorCubicoVector(Q1, Q2, Q3, Q4, Q5, Q6, N, t1, Npuntos, TM)

t=t1;
Tmin = max(t);
q=[Q1, Q2, Q3, Q4, Q5, Q6];     %Ingreso los valores de cada q como parametros para la funcion
n = N;
qp = zeros(1,n);
for i=1:1:(n-1)         %El bucle recorrera el numero de posiciones n-1
   a(i)=q(i);           %Calculamos a
   T(i)=t(i+1)-t(i);    %Calculamos T
   ti(i) = t(i);
   tlim(i) = t(i+1);
   if(i<=n-2)           %Emepzamos los filtros para conocer las condiciones para hallar qp
       X(i+1)=q(i+1)-q(i);  %Operacion 
       Y(i+1)=q(i+2)-q(i+1);%Operacion 2          
       Signo1 = sign(X);    %Almaceno todos los signos de la primera operacion en un vector
       Signo2 = sign(Y);    %Almaceno todos los signos de la segunda operacion en un vector
   if((Signo1(i+1) == Signo2(i+1)) || (q(i+1)==q(i)) || (q(i+2)==q(i+1)))   %Evaluo las condiciones 2
       qp(i+1) = (1/2)*(((q(i+2)-q(i+1))/(t(i+2)-t(i+1)))+(((q(i+1)-q(i))/(t(i+1)-t(i)))));   
   elseif(Signo1(i+1) ~= Signo2(i+1))   %Evaluo las condiciones 1
       qp(i+1) = 0;
   end   
   end   
   b(i)=qp(i);      %Calculo b
   c(i) = (3/T(i)^2)*(q(i+1)-q(i)) - (1/T(i))*(qp(i+1)+2*(qp(i)));  %Calculo c
   d(i) = -(2/T(i)^3)*(q(i+1)-q(i)) + (1/T(i)^2)*(qp(i+1)+(qp(i))); %Calculo d
end

puntos = (Npuntos*Tmin)/TM;
muestreo = Tmin/puntos;

x = 0:muestreo:Tmin;
spline = ((x>ti(1))&(x<=tlim(1))).*(a(1) + b(1)*(x - t(1)) + c(1)*(x - t(1)).^2 + d(1)*(x - t(1)).^3) +... 
         ((x>ti(2))&(x<=tlim(2))).*(a(2) + b(2)*(x - t(2)) + c(2)*(x - t(2)).^2 + d(2)*(x - t(2)).^3) +...
         ((x>ti(3))&(x<=tlim(3))).*(a(3) + b(3)*(x - t(3)) + c(3)*(x - t(3)).^2 + d(3)*(x - t(3)).^3) +...
         ((x>ti(4))&(x<=tlim(4))).*(a(4) + b(4)*(x - t(4)) + c(4)*(x - t(4)).^2 + d(4)*(x - t(4)).^3) +...
         ((x>ti(5))&(x<=tlim(5))).*(a(5) + b(5)*(x - t(5)) + c(5)*(x - t(5)).^2 + d(5)*(x - t(5)).^3);

for e=1:1:Npuntos
    if e <= puntos
    spline2(e) = spline(e);
    elseif e > puntos
        spline2(e) = Q6;
    end
end
     
     
end