%% Descomposici�n en fracciones parciales de la funci�n de transferencia
clc, clear

% Valores del polinomio | Mover esto
num = conv([1], [1]);       % Constantes literales
den = conv([1 -.8], [1 -1]);   % Constantes literales
Ts = 1;              % Tiempo de la muestra

% Mostrar funci�n de transferencia
syms z;
H1 = tf(num, den, Ts);   % Funci�n de transferencia expandida
filt(num, den, Ts)       % Funci�n de transferencia expandida
H2 = zpk(H1)             % Visualizaci�n de polos y ceros

% C�lculo de las fracciones parciales
[R, P, K] = residuez(num, den)   % Los ceros son R | Los polos son P | El t�rmino constante es K

% Repuesta al impulso
h = @(n) (R(1).*P(1).^n + R(2).*P(2).^n + R(3).*P(3).^n + R(4).*P(4).^n).*usD(n);


%% Respuesta en frecuencia
% Se necesita haber corrido el script anterior
w =[1 200];     % Frecuencia a muestrear

% Imprimir magnitud y fase
freqs(num, den, w)
