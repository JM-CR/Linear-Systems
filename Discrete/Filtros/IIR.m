%% Impulse-invariant digital filter
clc, clear

% Datos de la se�al | Mover esto
numS = [98696 0 0];   % Coeficientes del numerador de H(s)
denS = [1 444.3 2.517e6 5.372e8 1.462e12];   % Coeficientes del denominador de H(s) 
fs = 1e3;   % Frecuencia de muestreo | En Hz

% C�lculo de la muestra
[numZ denZ] = impinvar(numS, denS, fs);   % Hallar coeficientes del filtro discreto
Ts = 1;    % Tiempo de la muestra

% Calculo de funci�n de transferencia
filt(numZ, denZ, Ts)       % Funci�n de transferencia expandida
zpk(ans)   % Visualizaci�n de polos y ceros

