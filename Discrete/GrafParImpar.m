%% Partes par e impar

% Función a graficar
g = @(n) sin((1/2)*pi.*n).*usD(n);

% Rango de graficación
nmin = -10;
nmax = 10;
n = nmin:nmax;

% Operaciones
ge = (g(n) + g(-n))./2;
go = (g(n) - g(-n))./2;

% Altura de eje de función
gmin = min(min([ge go]));
gmax = max(max([ge go]));

% Operación par
subplot(2,1,1);
    stem(n, ge);
    axis([nmin nmax gmin gmax]);
    title('Parte par de g[n]');
    ylabel('g_e[n]');
    
% Operación impar
subplot(2,1,2);
    stem(n, go);
    axis([nmin nmax gmin gmax]);
    title('Parte impar de g[n]');
    ylabel('g_o[n]');
    xlabel('Tiempo discreto, n');