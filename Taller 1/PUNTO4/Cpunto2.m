function fun = Cpunto2(e)
%Diseño del controlador con conjuntos Booleanos
%Para Epg
if e >= 2
    Epg=1;
else
    Epg=0;
end
%Para Epp
if e < 2 && e>=0
    Epp=1;
else
    Epp=0;
end
%Para Enp
if e >= -2 && e<0
    Enp=1;
else
    Enp=0;
end
%Para Eng
if e < -2
    Eng=1;
else
    Eng=0;
end
%Control
Ypg = Epg;
Ypp = Epp;
Ynp = Enp;
Yng = Eng;
Yz = 0;
%Salida
fun = -1*Yng - 0.5*Ynp + 0*Yz + 0.7*Ypp + 1*Ypg;