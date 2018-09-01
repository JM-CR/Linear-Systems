%% Muestreo de una señal continua
% Limpieza
clf, clc, clear

% Función a muestrear
x = @(t) 3.*cos(20*pi.*t) - 2.*sin(30*pi.*t);

% Datos de señal
f0 = 5;   % Frecuencia fundamental
fs = 120;    % Frecuencia de muestreo

% Rango de graficación
tmin = 0;
tmax = 1/f0;

% Puntos a graficar
n = tmin:1/fs:tmax;     % Puntos en tiempo discreto graficar
y = x(tmin:1/fs:tmax);  % Amplitudes a graficar

% Función continua
syms t;
fplot(x(t));    
hold on; grid on;

% Función discreta
stem(n, y);
axis([tmin tmax min(y) max(y)]);
