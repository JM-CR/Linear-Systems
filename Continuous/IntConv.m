% Integral de convolución continua (Aproximación)

% Señales discretas
x = @(t) rect(t);      % Excitación
h = @(t) dirac(t);      % Respuesta al impulso

% Rango de tiempo (graficación)
nxmin = -100;   % Excitación
nxmax = 100;
nx = (nxmin:nxmax)';

nh = nx;                              % Respuesta al impulso
ny = (nx(1)+nh(1):nx(end)+nh(end))';  % Respuesta total

% Integral de convolución
Ts = 0.01;    % Precisión de aproximación
y = Ts.*conv(x(nx.*Ts),h(nh.*Ts));

% Gráfica de señal de respuesta
plot(ny.*Ts, y);
ylabel('y(t)');
xlabel('Tiempo continuo, t');
title('Integral de convolución (Aproximación).');
grid on;
    