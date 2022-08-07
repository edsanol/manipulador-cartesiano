function [Posicion,Velocidad, Aceleracion, T] = InterpoladorT(Qi, Qf, a, V, n, ti, tf)

tao1 = V/a;
den = 2*a;
T = tf-ti;
Qt = Qf-Qi;
Qlim = tao1*V;
Qprima = Qt-Qlim;
Tmin = T - (2*tao1);
Vmax2 = (Qprima/Tmin);

if(Qf > Qi)
    
    S = 1;
    
elseif(Qf < Qi)
    
        S = -1;
end
    
Vmax = (T*a)/2 - 1/2*sqrt(T^2*a^2 - 4*(S*(Qf-Qi))*a);
tao = Vmax/a;
    
if(Vmax > 0 && Vmax <= V+0.01 || tao > T/2)
    
    if(tao < T/2)
        
        muestreo = T/n;
        t = 0:muestreo:T;
        t1 = T-tao;
        Posicion=(t<=tao).*(Qi+S*(a/2)*t.^2) + ((t>tao)&(t<=t1)).*(Qi-S*(Vmax^2/den)+S*Vmax*t) + ((t>t1)&(t<=T)).*(Qf+S*(-a*T^2/2+a*T*t-a/2*t.^2));
        Velocidad = (t<=tao).*(S*a*t) + ((t>tao)&(t<=t1)).*(S*Vmax) + ((t>t1)&(t<=T)).*(S*(a*T-a*t));
        Aceleracion = (t<=tao).*(S*a)+((t>t1)&(t<=T)).*(-S*a);
        subplot(1,3,1),plot(t+ti,Posicion,'r'),title('Grafica de Posición'),grid;
        subplot(1,3,2),plot(t+ti,Velocidad,'g'),title('Grafica de Velocidad'),grid;
        subplot(1,3,3),plot(t+ti,Aceleracion),title('Grafica de Aceleración'),grid;
    end
        
if(tao > T/2)
        
    Vmax = a*sqrt((S*(Qf-Qi))/a);
    Tmin = (S*(Qf-Qi)/Vmax)+(Vmax/a);
    Ntao = Vmax2/a;
    
    if(Tmin == T)
        
        muestreo = Tmin/n;
        t = 0:muestreo:Tmin;
        Posicion=(t<=Tmin/2).*(Qi+S*(a/2)*t.^2)+((t>Tmin/2)&(t<=Tmin)).*(Qf+S*(-a*Tmin^2/2+a*Tmin*t-a/2*t.^2));
        Velocidad = (t<=Tmin/2).*(S*a*t)+((t>Tmin/2)&(t<=Tmin)).*(S*(a*Tmin-a*t));
        Aceleracion = (t<=Tmin/2).*(S*a)+((t>Tmin/2)&(t<=Tmin)).*(-S*a);
        subplot(1,3,1),plot(t+ti,Posicion,'r'),title('Grafica de Posición'),grid;
        subplot(1,3,2),plot(t+ti,Velocidad,'g'),title('Grafica de Velocidad'),grid;
        subplot(1,3,3),plot(t+ti,Aceleracion),title('Grafica de Aceleración'),grid;
        
    elseif(Ntao < tao && Tmin ~= T)
        
        muestreo = T/n;
        t = 0:muestreo:T;
        t1 = T-Ntao;
        Posicion=(t<=Ntao).*(Qi+S*(a/2)*t.^2) + ((t>Ntao)&(t<=t1)).*(Qi-S*(Vmax2^2/den)+S*Vmax2*t) + ((t>t1)&(t<=T)).*(Qf+S*(-a*T^2/2+a*T*t-a/2*t.^2));
        Velocidad = (t<=Ntao).*(S*a*t) + ((t>Ntao)&(t<=t1)).*(S*Vmax2) + ((t>t1)&(t<=T)).*(S*(a*T-a*t));
        Aceleracion = (t<=Ntao).*(S*a)+((t>t1)&(t<=T)).*(-S*a);
        subplot(1,3,1),plot(t+ti,Posicion,'r'),title('Grafica de Posición'),grid;
        subplot(1,3,2),plot(t+ti,Velocidad,'g'),title('Grafica de Velocidad'),grid;
        subplot(1,3,3),plot(t+ti,Aceleracion),title('Grafica de Aceleración'),grid;
        
    else
        fprintf('Error. Se requiere de mas tiempo para realizar el movimiento 2')
    end
end

else
    fprintf('Error. Se requiere de mas tiempo para realizar el movimiento 1')
end
end
