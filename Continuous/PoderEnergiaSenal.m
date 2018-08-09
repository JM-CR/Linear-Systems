%% Programa para hallar energ�a de se�al

% Se�al a evaluar
syms t;
x = @(t) 4.*exp(-t./10).*rect((t - 4)./3);

% L�mites de integraci�n en tiempo
T0 = -Inf;   % Lim. inf.
T1 = Inf;   % Lim. sup.

% Hallar poder de se�al
res = int(abs(x(t)).^2, 't', T0, T1);
double(res)

%% Programa para hallar poder de se�al (Peri�dicas)

% Se�al a evaluar
syms t;
x = @(t) -3.*t;

% Periodo fundamental
T = 10;

% Hallar poder de se�al
res = int(abs(x(t)).^2, 't', -T./2, T./2)./T;
double(res)
