function [T] = TrapezoidalTiempoCoordinado(Qi, Qf, a, V, n, ti)
tao = V/a;
den = 2*a;

if(Qf > Qi)
    S = 1;
elseif(Qf < Qi)
    S = -1;
end

    T = S*((Qf-Qi)/V) + V/a;

if(tao > T/2)

    Vmax = a*sqrt((S*(Qf-Qi))/a);
    T = (S*(Qf-Qi)/Vmax)+(Vmax/a);
    muestreo = T/n;
    t = 0:muestreo:T;

else if(tao < T/2)
        
    muestreo = T/n;
    t = 0:muestreo:T;
    t1 = T-tao;

    end
end
end

    