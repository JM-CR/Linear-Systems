% Graficador de se�al continua
clf, clc, clear

% Funci�n a muestrear
x = @(t) (2*0.5774.*exp(-.5.*t).*sin(0.866.*t)).*us(t);

% Rango de graficaci�n
tmin = 0;
tmax = 8;

% Funci�n continua
syms t;
fplot(x(t), [tmin tmax]);    
grid on;