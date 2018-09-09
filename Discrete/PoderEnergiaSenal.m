%% Programa para hallar energ�a de se�al discreta

% Se�al a evaluar
syms n;
x = @(n) ramp(n) - 2.*ramp(n-4) +ramp(n-8);

% L�mites de acumulaci�n en tiempo discreto
n0 = -100;   % Lim. inf.
n1 = 100;   % Lim. sup.

% Hallar poder de se�al
res = cumsum(x(n0:n1).^2);
disp(['Energ�a de se�al: ' num2str(res(1, end))]);

%% Programa para hallar poder de se�al discreta (Peri�dicas)

% Se�al a evaluar
syms n;
x = @(n) 4.*impND(5,n) - 7.*impND(7,n);

% L�mites de acumulaci�n en tiempo discreto
N0 = 35;   % Periodo

% Hallar poder de se�al
res = cumsum(x(0:N0-1).^2)./N0;
disp(['Poder de se�al promedio: ' num2str(res(1, end))]);
