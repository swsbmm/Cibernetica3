%Ejemplo del sistema de lógica difusa para la predicción meteorologica
%implementado en comandos

close all
clear all
warning('off')

%Sistema
a=newfis('Prediccion');

%Variable de entrada: Temperatura
a=addvar(a,'input','Temperatura',[3 25]);

%Funciones de pertenencia
a=addmf(a,'input',1,'Frio','trimf',[3 7 14]);
a=addmf(a,'input',1,'Templado','trimf',[7 14 21]);
a=addmf(a,'input',1,'Caliente','trimf',[14 22 25]);
plotmf(a,'input',1)

%Variable de entrada:   Humedad
a=addvar(a,'input','Humedad',[70 100]);

%Funciones de pertenencia
a=addmf(a,'input',2,'Pobre','trimf',[70 76 82])
a=addmf(a,'input',2,'Baja','trimf',[77 85 90]);
a=addmf(a,'input',2,'Media','trimf',[86 91 96]);
a=addmf(a,'input',2,'Alta','trimf',[92  97 100]);
plotmf(a,'input',2)



%Variable de salida: Predicción
a=addvar(a,'output','Prediccion',[0 70]);

%Funciones de pertenencia
a=addmf(a,'output',1,'Suave','trimf',[0 9 25]);
a=addmf(a,'output',1,'Alta','trimf',[23 32 47]);
a=addmf(a,'output',1,'Fuerte','trimf',[44 59 65]);
plotmf(a,'output',1)

%Reglas de inferencia
ruleList=[
  	1 1 1 1 1
    1 2 2 1 1
    1 3 2 1 1
    1 4 3 1 1
    2 1 1 1 1
    2 2 2 1 1
    2 4 3 1 1
    3 1 1 1 1
    3 2 1 1 1
    3 4 2 1 1 ];

a = addrule(a,ruleList);

%Sistema difuso
fuzzy(a)

%Evaluar el sistema
Y = evalfis([3 8],a)

%Para evaluar varias entradas
Datos = [5 88 
    20 94 
    23 86 
    19 81 
    10 93 
    25 98
    3  71];

Y = evalfis(Datos,a)
