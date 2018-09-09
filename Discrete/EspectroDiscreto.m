%% Espectro de se�al discreta en rad/s
clf, clc, clear

% Funci�n de transferencia | Mover esto
h = @(z) (1 - z^-1)./(1 + 0.9.*z^-1);

% Rango de graficaci�n | Mover esto
wmin = -2*pi;
wmax = 2*pi;

% Graficar en rad/s
syms w;
subplot(211);
    fplot(abs(h(exp(1j*w))), [wmin wmax]);
    xlabel('w');
    ylabel('|H(e^j^\alpha)|');
    title('Magnitud');
    
subplot(212);
    fplot(angle(h(exp(1j*w))), [wmin wmax]);
    xlabel('w');
    ylabel('arg\{H(e^j^\alpha)\}');
    title("Fase");
    
%% Espectro de se�al discreta en Hz
clf, clc, clear

% Funci�n de transferencia | Mover esto
h = @(z) (1 - z^-1)./((1 + 0.3.*z^-1).*(1 -0.8.*z^-1));

% Rango de graficaci�n
fmin = -1;
fmax = 1;

% Graficar en Hz
syms F;
subplot(211);
    fplot(abs(h(exp(1j*2*pi*F))), [fmin fmax]);
    xlabel('F');
    ylabel('|H(F)|');
    title('Magnitud');
    
subplot(212);
    fplot(angle(h(exp(1j*2*pi*F))), [fmin fmax]);
    xlabel('F');
    ylabel('arg\{H(F)\}');
    title("Fase");
