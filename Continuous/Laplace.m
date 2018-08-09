%% Descomposici�n en fracciones parciales de la funci�n de transferencia
clc, clear

% Valores del polinomio | Mover esto
num = conv([0.49131], [1]);       % Constantes literales
den = conv([1 0.4942], [1 0.4942 0.9942]);   % Constantes literales

% Mostrar funci�n de transferencia
syms s;
H1 = tf(num, den)   % Funci�n de transferencia expandida
H2 = zpk(H1)        % Visualizaci�n de polos y ceros

% C�lculo de las fracciones parciales
[R, P, K] = residue(num, den)   % Los ceros son R | Los polos son P | El t�rmino constante es K

% Repuesta al impulso
h = @(t) R(1).*exp(P(1).*t);


%% Respuesta en frecuencia
% Se necesita haber corrido el script anterior
w =[1 200];     % Frecuencia a muestrear

% Imprimir magnitud y fase
freqs(num, den, w)
