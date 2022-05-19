function Ft = CPunto3(h)
%Controlador por conjuntos difusos haciendo uso de la funcion smf de fuzzy.

D = smf(h,[0.10 0.30]);
%Sensor D

C = smf(h,[0.30 0.50]);
%Sensor C

B = smf(h,[0.60 0.80]);
%Sensor B

A = smf(h,[1 1.2]);
%Sensor A

Y1 = (1-C);
Y2 = max(min((1-B),C),(1-D));
Y3 = (1-A);
%Control

Ft = 0.55*Y1 + 0.45*Y2 + 0.1*Y3;