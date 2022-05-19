function fun = Cpunto2(h)
%Diseño del controlador con conjuntos Booleanos
%Sensor pg
if (h > 2.0)
    pg = 1;
else
    pg = 0;
end
%Sensor pp
if (h < 2.0)
    pp = 1;
else
    pp = 0;
end
%Sensor np
if (h > -2.0)
    np = 1;
else
    np = 0;
end
%Sensor ng
if (h < -2.0)
    ng = 1;
else
    ng = 0;
end
%Control
Ypg = pg;
Ypp = pp;
Ynp = np;
Yng = ng;
%Salida
fun = (Yng*-1.0)+(Ynp*-0.5)+(Ypp*1)+(Ypg*1.5);