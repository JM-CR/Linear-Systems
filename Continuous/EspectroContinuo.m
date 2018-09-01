%% Espectro de señal continua en rad/s
clf, clc, clear

% Función de transferencania | Mover esto
h = @(s) (1)./(s.^3 + 2.*s.^2 + 2.*s + 1);

% Rango de graficación | Mover esto
wmin = -1e1;
wmax = 1e1;

% Graficar en rad/s
syms w;
subplot(211);
    fplot(abs(h(1j*w)), [wmin wmax]);
    xlabel('w');
    ylabel('|H(j\omega)|');
    title('Magnitud');
    
subplot(212);
    fplot(angle(h(1j*w)), [wmin wmax]);
    xlabel('w');
    ylabel('arg\{H(j\omega)\}');
    title("Fase");
    
 %% Espectro de señal continua en Hz
clf, clc, clear

% Función de transferencania | Mover esto
h = @(s) (20)./(s.^2 + 21.*s + 20);

% Rango de graficación | Mover esto
fmin = -1.5e5;
fmax = 1.5e5;

% Graficar en Hz
syms f;
subplot(211);
    fplot(abs(h(1j*2*pi*f)), [fmin fmax]);
    xlabel('f');
    ylabel('|H(f)|');
    title('Magnitud');
    
subplot(212);
    fplot(angle(h(1j*2*pi*f)), [fmin fmax]);
    xlabel('f');
    ylabel('arg\{H(f)\}');
    title("Fase");