function fun = Cpunto4(x)
%Diseño del controlador con conjuntos difusos
inf = 9999;
%Sensor pg
pg = smf(x,[2 inf]);

%Sensor pp
pp = smf(x,[0 2]);

%Sensor np
np = smf(x,[-2 0]);

%Sensor ng
ng = smf(x,[-inf -2]);

%Sensor uz
uz = 0;

%Control
Ypg = pg;
Ypp = pp;
Ynp = np;
Yng = ng;
Yuz = uz;

%Salida
fun = (Yng*-1.0)+(Ynp*-0.5)+(Ypp*1)+(Ypg*1.5);
