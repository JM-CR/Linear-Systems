% Programa para graficar parte par e impar de una función g(t)

% Construir la función
syms t;
g = @(t) -1.*(-Inf<t & t<=0) + (2*t-1).*(0<t & t<1) + (2-t).*(1<=t & t<2);

% Graficar parte par
subplot(2,1,1);
    fplot((g(t) + g(-t))./2);  % Evaluar
    title('Parte par');
    xlabel('t');
    ylabel('g_e(t)');
    grid on;

% Graficar parte impar
subplot(2,1,2);
    fplot((g(t) - g(-t))./2);  % Evaluar
    title('Parte impar');
    xlabel('t');
    ylabel('g_o(t)');
    grid on;
