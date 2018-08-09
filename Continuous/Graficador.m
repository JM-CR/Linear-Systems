% Graficador de señal continua
clf, clc, clear

% Función a muestrear
x = @(t) (2*0.5774.*exp(-.5.*t).*sin(0.866.*t)).*us(t);

% Rango de graficación
tmin = 0;
tmax = 8;

% Función continua
syms t;
fplot(x(t), [tmin tmax]);    
grid on;