% Integral de convoluci�n continua (Aproximaci�n)

% Se�ales discretas
x = @(t) rect(t);      % Excitaci�n
h = @(t) dirac(t);      % Respuesta al impulso

% Rango de tiempo (graficaci�n)
nxmin = -100;   % Excitaci�n
nxmax = 100;
nx = (nxmin:nxmax)';

nh = nx;                              % Respuesta al impulso
ny = (nx(1)+nh(1):nx(end)+nh(end))';  % Respuesta total

% Integral de convoluci�n
Ts = 0.01;    % Precisi�n de aproximaci�n
y = Ts.*conv(x(nx.*Ts),h(nh.*Ts));

% Gr�fica de se�al de respuesta
plot(ny.*Ts, y);
ylabel('y(t)');
xlabel('Tiempo continuo, t');
title('Integral de convoluci�n (Aproximaci�n).');
grid on;
    