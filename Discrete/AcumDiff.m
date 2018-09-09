%% Acumulaci�n y diferencia

% Rango de graficaci�n
nmin = -36;    % Se asume cero antes de este valor
nmax = 36;     % Se asume cero despu�s de este valor
n = nmin:nmax;

% Funci�n original
g = @(n) n.^2;

% Alto de la gr�fica
gmin = min(min([g(n) cumsum(g(n)) diff(g(n))]));
gmax = max(max([g(n) cumsum(g(n)) diff(g(n))]));

%Graficaci�n de funci�n original
subplot(3,1,1);
    stem(n, g(n));
    axis([nmin nmax gmin gmax]);
    ylabel('g[n]');
    title('Operaciones en funci�n discreta')

% Graficaci�n de acumulaci�n
subplot(3,1,2);
    stem(n, cumsum(g(n)));  % Operaci�n
    axis([nmin nmax gmin gmax]);
    ylabel('cumsum(g[n])');

% Graficaci�n de primera diferencia directa
subplot(3,1,3);
    stem(n(1:(end-1)), diff(g(n)));  % Operaci�n
    axis([nmin nmax gmin gmax]);
    ylabel('g[n+1]-g[n]');
    xlabel('Tiempo discreto, n')
