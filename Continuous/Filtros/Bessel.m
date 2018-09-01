%% Crear filtro Butterworth | Normalizado con wc = 1 y ganancia 1
% Cambiar k en tfdata(zpk(...)) si se quiere otra ganancia
clc, clear

% Datos de señal | Mover esto
N = 2;    % Número de polos
wc = 1;   % Frecuencia de corte | En rad/s
w0 = 60*2*pi;     % Frecuencia centrada en w0  | En rad/s
bw = 10*2*pi;     % Ancho de banda | En rad/s

% Cálculo de función de transferencia
[z, p, k] = besselap(N);   % z = Ceros | p = Polos | k = Ganancia
[num den] = tfdata(zpk(z,p,k), 'v');    % Coeficientes de función de transferencia normalizada

%%%%%% TIPO DE FILTRO %%%%%%
[numt dent] = lp2lp(num, den, wc);  % PASA BAJA
% [numt dent] = lp2hp(num, den, wc);  % PASA ALTA
% [numt dent] = lp2bp(num, den, w0, bw);    % PASA BANDA
% [numt dent] = lp2bs(num, den, w0, bw);    % RECHAZA BANDA

% Calcular función de transferencia
tf(numt, dent)
zpk(ans)

%% Graficar respuesta en frecuencia
clf

% Rango de graficación | Mover esto
% Máxima diferencia de exponentes = 4
wmin = 1e-1;     % En rad/s
wmax = 1e0;     % En rad/s
s = 0.01;           % Tamaño del paso

% Graficar respuesta en frecuencia
freqs(numt, dent, [wmin:s:wmax]);
