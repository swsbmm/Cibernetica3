function Ft = CPunto1(h)
%Función que implementa el controlador Booleano 

%SensorA
if h < 1.0
    A = 0;
else
    A = 1;
end

%SensorB
if h < 0.7
    B = 0;
else
    B = 1;
end

%SensorC
if h < 0.4
    C = 0;
else
    C = 1;
end

%SensorD
if h < 0.2
    D = 0;
else
    D = 1;
end


%Funciones de activación
Y1=(1-C);
Y2=max(min((1-B),C),(1-D));
Y3=(1-A);

%Salida total entre: 0 y 3 Lt/s
Ft = 0.55*Y1 + 0.45*Y2 + 0.1*Y3;