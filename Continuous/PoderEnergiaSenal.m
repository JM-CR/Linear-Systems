%% Programa para hallar energía de señal

% Señal a evaluar
syms t;
x = @(t) 4.*exp(-t./10).*rect((t - 4)./3);

% Límites de integración en tiempo
T0 = -Inf;   % Lim. inf.
T1 = Inf;   % Lim. sup.

% Hallar poder de señal
res = int(abs(x(t)).^2, 't', T0, T1);
double(res)

%% Programa para hallar poder de señal (Periódicas)

% Señal a evaluar
syms t;
x = @(t) -3.*t;

% Periodo fundamental
T = 10;

% Hallar poder de señal
res = int(abs(x(t)).^2, 't', -T./2, T./2)./T;
double(res)
