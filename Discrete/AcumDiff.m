%% Acumulación y diferencia

% Rango de graficación
nmin = -36;    % Se asume cero antes de este valor
nmax = 36;     % Se asume cero después de este valor
n = nmin:nmax;

% Función original
g = @(n) n.^2;

% Alto de la gráfica
gmin = min(min([g(n) cumsum(g(n)) diff(g(n))]));
gmax = max(max([g(n) cumsum(g(n)) diff(g(n))]));

%Graficación de función original
subplot(3,1,1);
    stem(n, g(n));
    axis([nmin nmax gmin gmax]);
    ylabel('g[n]');
    title('Operaciones en función discreta')

% Graficación de acumulación
subplot(3,1,2);
    stem(n, cumsum(g(n)));  % Operación
    axis([nmin nmax gmin gmax]);
    ylabel('cumsum(g[n])');

% Graficación de primera diferencia directa
subplot(3,1,3);
    stem(n(1:(end-1)), diff(g(n)));  % Operación
    axis([nmin nmax gmin gmax]);
    ylabel('g[n+1]-g[n]');
    xlabel('Tiempo discreto, n')
