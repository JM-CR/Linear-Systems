%% Programa para hallar energía de señal discreta

% Señal a evaluar
syms n;
x = @(n) ramp(n) - 2.*ramp(n-4) +ramp(n-8);

% Límites de acumulación en tiempo discreto
n0 = -100;   % Lim. inf.
n1 = 100;   % Lim. sup.

% Hallar poder de señal
res = cumsum(x(n0:n1).^2);
disp(['Energía de señal: ' num2str(res(1, end))]);

%% Programa para hallar poder de señal discreta (Periódicas)

% Señal a evaluar
syms n;
x = @(n) 4.*impND(5,n) - 7.*impND(7,n);

% Límites de acumulación en tiempo discreto
N0 = 35;   % Periodo

% Hallar poder de señal
res = cumsum(x(0:N0-1).^2)./N0;
disp(['Poder de señal promedio: ' num2str(res(1, end))]);
