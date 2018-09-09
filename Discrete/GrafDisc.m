%% Graficar función discreta 
clear, clc, clf

% Función a graficar | Mover esto
g = @(n) 5 - 4.*(0.8).^n;

% Tamaño ejes en n  | Mover esto
nmin = 0;   
nmax = 20;   
n = nmin:nmax;

% Tamaño ejes en y
gmin = min(g(n));
gmax = max(g(n));

% Gráficar función
stem(n, g(n));
    axis([nmin nmax gmin gmax]);
    ylabel('g[n]');
    xlabel('n');
    title('Gráfica discreta');
    grid on;

%% Graficar varias funciones discretas
clear, clc, clf

% Función a graficar | Mover esto
g = @(n) 5 - 4.*(0.8).^n;

% Tamaño ejes en n | Mover esto
nmin = 0;   
nmax = 10;   
n = nmin:nmax;

% Funciones a evaluar | Mover esto
g0 = g(n);
g1 = g(2 - n);
g2 = g(2.*n);
g3 = g(n./2);

% Tamaño ejes en y
gmin = min([min(g0) min(g1) min(g2)]);
gmax = max([max(g0) max(g1) max(g2)]);

% Gráficas
subplot(2,2,1);
    stem(n, g0);
    axis([nmin nmax gmin gmax]);
    ylabel('g[n]');
    grid on;
    
subplot(2,2,2);
    stem(n, g1);
    axis([nmin nmax gmin gmax]);
    ylabel('g[2-n]');
    grid on;
    
subplot(2,2,3);
    stem(n, g2);
    axis([nmin nmax gmin gmax]);
    xlabel('Tiempo discreto, n');
    ylabel('g[2n]');
    grid on;
    
subplot(2,2,4);
    stem(-10:2:10, g([-10:2:10]./2));
    axis([nmin nmax gmin gmax]);
    xlabel('Tiempo discreto, n');
    ylabel('g[n/2]');
    grid on;