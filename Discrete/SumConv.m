%% C�lculo de suma de convoluci�n discreta, anal�t�camente
clf, clc, clear

% Se�ales discretas | Mover esto
x = @(n) .1.*(0.9).^n.*usD(n);  % Excitaci�n
h = @(n) 2.*rand(1,36);  % Respuesta al impulso

% Rango de tiempo (graficaci�n) | Mover esto
nxmin = -5;   % Excitaci�n
nxmax = 30;

nx = nxmin:nxmax;

nhmin = -5;    % Respuesta al impulso
nhmax = 30;
nh = nhmin:nhmax;

ny = (nx(1) + nh(1)) + (0:(length(nx) + length(nh) -2)); 

% Suma de convoluci�n
y = conv(x(nx),h(nh));

% Tama�o de ejes
nmin = min(min([nx nh ny]));
nmax = max(max([nx nh ny]));
gmin = min(min([x(nx) h(nh) y])) - 0.5;
gmax = max(max([x(nx) h(nh) y])) + 0.5;

% Gr�ficas de se�ales
subplot(3,1,1);   % Exitaci�n
    stem(nx, x(nx));
    title('Suma de convoluci�n.');
    ylabel('x[n]');
    grid on;
    axis([nmin nmax gmin gmax]);
    
subplot(3,1,2);   % Respuesta al impulso
    stem(nh, h(nh));
    ylabel('h[n]');
    grid on;
    axis([nmin nmax gmin gmax]);
    
subplot(3,1,3);   % Respuesta total
    stem(ny, y);
    ylabel('y[n]');
    axis([nmin nmax gmin gmax]);
    grid on;
    xlabel('Tiempo discreto, n');