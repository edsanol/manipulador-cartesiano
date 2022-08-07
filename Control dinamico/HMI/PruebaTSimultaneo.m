function [Posicion2] = PruebaTSimultaneo(Qi, Qf, a, V, n, TM)

% Qi = 0;
% Qf = 8;
% a  = 2;
% V  = 3;
% n = 200;
tao = V/a;
den = 2*a;

if(Qf > Qi)
    S = 1;
else if(Qf < Qi)
        S = -1;
    end
end

    T = S*((Qf-Qi)/V) + V/a;
    

if(tao > T/2)

    Vmax = a*sqrt((S*(Qf-Qi))/a);
    Tmin = (S*(Qf-Qi)/Vmax)+(Vmax/a)
    
    puntos = (n*Tmin)/TM;
    
    muestreo = Tmin/puntos;
    t = 0:muestreo:Tmin;
    Posicion=(t<=Tmin/2).*(Qi+S*(a/2)*t.^2)+((t>Tmin/2)&(t<=Tmin)).*(Qf+S*(-a*Tmin^2/2+a*Tmin*t-a/2*t.^2));
    Velocidad = (t<=Tmin/2).*(S*a*t)+((t>Tmin/2)&(t<=Tmin)).*(S*(a*Tmin-a*t));
    Aceleracion = (t<=Tmin/2).*(S*a)+((t>Tmin/2)&(t<=Tmin)).*(-S*a);
%     subplot(1,3,1),plot(t,Posicion,'r'),title('Grafica de Posición'),grid;
%     subplot(1,3,2),plot(t,Velocidad,'g'),title('Grafica de Velocidad'),grid;
%     subplot(1,3,3),plot(t,Aceleracion),title('Grafica de Aceleración'),grid;

else if(tao < T/2)
        
        puntos = (n*T)/TM;
        muestreo = T/puntos;
        t = 0:muestreo:T;
        t1 = T-tao;
        Posicion=(t<=tao).*(Qi+S*(a/2)*t.^2)+((t>tao)&(t<=t1)).*(Qi-S*(V^2/den)+S*V*t)+((t>t1)&(t<=T)).*(Qf+S*(-a*T^2/2+a*T*t-a/2*t.^2));
        Velocidad = (t<=tao).*(S*a*t)+((t>tao)&(t<=t1)).*(S*V)+((t>t1)&(t<=T)).*(S*(a*T-a*t));
        Aceleracion = (t<=tao).*(S*a)+((t>t1)&(t<=T)).*(-S*a);
%         subplot(1,3,1),plot(t,Posicion,'r'),title('Grafica de Posición'),grid;
%         subplot(1,3,2),plot(t,Velocidad,'g'),title('Grafica de Velocidad'),grid;
%         subplot(1,3,3),plot(t,Aceleracion),title('Grafica de Aceleración'),grid;
    end
end
    
for e=1:1:n
    if e <= puntos
    Posicion2(e) = Posicion(e);
    elseif e > puntos
        Posicion2(e) = Qf;
    end
end

end


    