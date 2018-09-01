%% Crear filtro Butterworth | Normalizado con wc = 1 y ganancia 1
% Cambiar k en tfdata(zpk(...)) si se quiere otra ganancia
clc, clear

% Datos del filtro | Mover esto
Rp = 0.3;     % Ripple en pasa banda | En db
Rs = 0.6;     % Ripple en rechaza banda | En db

% Datos de se�al | Mover esto
N = 2;    % N�mero de polos
wc = 1;   % Frecuencia de corte | En rad/s
w0 = 60*2*pi;     % Frecuencia centrada en w0  | En rad/s
bw = 10*2*pi;     % Ancho de banda | En rad/s

% C�lculo de funci�n de transferencia
[z, p, k] = ellipap(N, Rp, Rs);   % z = Ceros | p = Polos | k = Ganancia
[num den] = tfdata(zpk(z,p,k), 'v');    % Coeficientes de funci�n de transferencia normalizada

%%%%%% TIPO DE FILTRO %%%%%%
[numt dent] = lp2lp(num, den, wc);  % PASA BAJA
% [numt dent] = lp2hp(num, den, wc);  % PASA ALTA
% [numt dent] = lp2bp(num, den, w0, bw);    % PASA BANDA
% [numt dent] = lp2bs(num, den, w0, bw);    % RECHAZA BANDA

% Calcular funci�n de transferencia
tf(numt, dent)
zpk(ans)

%% Graficar respuesta en frecuencia
clf, clc

% Rango de graficaci�n | Mover esto
% M�xima diferencia de exponentes = 4
wmin = 1e-2;     % En rad/s
wmax = 1e2;     % En rad/s
s = 0.2;           % Tama�o del paso

% Graficar respuesta en frecuenciafreqs(numt, dent, [wmin:s:wmax]);
