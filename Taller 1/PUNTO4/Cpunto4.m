function fun = Cpunto4(x)
%Diseño del controlador con conjuntos difusos

%Sensor pg
pg = smf(x,[1.8 2.2]);

%Sensor pp
pp = gbellmf(x, [1.088 17.5 1]);

%Sensor np
np = gbellmf(x, [0.98 17.5 -1]);

%Sensor ng
ng = zmf(x, [-2.2 -1.8]);

%Sensor uz
uz = 0;

%Control
Ypg = pg;
Ypp = pp;
Ynp = np;
Yng = ng;
Yz = uz;

%Salida
fun = -1*Yng - 0.5*Ynp + 0*Yz + 0.7*Ypp + 1*Ypg;
