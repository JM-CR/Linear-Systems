%% Graficar diagrama de Bode en rad/s | Ambos ejes están en dB
clf, clc, clear

% Función de transferencia continua | Mover esto
h = @(s) (20.*s)./(s.^2 + 20.*s + 1e4);
w = logspace(1, 6, 200);   % Escalas en décadas | Solo primeros dos parámetros
 
% Calcular valores
H = h(j*w);
 
% Graficar en rad/s
subplot(2,1,1);  
    p = semilogx(w, 20*log10(abs(H)), 'k');    % Magnitud
    set(p, 'LineWidth', 2);
    grid on;
    xlabel('\omega', 'FontSize', 18, 'FontName', 'Times');    
    ylabel('|H({\itj}\omega)|_d_B', 'FontSize', 18, 'FontName', 'Times');
    title('Magnitud', 'FontSize', 24, 'FontName', 'Times');
    set(gca, 'FontSize', 14, 'FontName', 'Times');
    
subplot(2,1,2); 
    p = semilogx(w, angle(H), 'k');   % Fase
    set(p, 'LineWidth', 2);
    grid on;
    xlabel('\omega', 'FontSize', 18, 'FontName', 'Times');
    ylabel('arg\{H({\itj}\omega)\}','FontSize', 18, 'FontName', 'Times');
    title('Fase', 'FontSize', 24, 'FontName', 'Times');
    set(gca, 'FontSize', 14, 'FontName', 'Times');

%% Calcular valor a frecuencia w | Negativo = Atenuar | Positivo = Amplificar
% Se necesita correr el script anterior

% Frecuencia en rad/s | Mover esto
w = 50e3*2*pi;      % En decimal

% Calcular altura en la gráfica
alt = 20*log10(abs(h(j*w)));
alt_dec = 10^(alt/20);
ang = angle(h(j*w));

% Mostrar valores
sprintf("[abs(H)db:real  arg(H)/pi] = [%.3f:%.3f  %.3f]", alt, alt_dec, ang/pi)


%% Graficar diagrama de Bode en Hz | Ambos ejes están en dB
clf, clc, clear

% Función de transferencia continua | Mover esto
h = @(s) (8.792e5.*s)./(s.^2 + 6.4e4.*s + 9.86e10);
f = logspace(2, 7, 200);   % Escalas en décadas | Solo primeros dos parámetros
 
% Calcular valores
H = h(j*2*pi*f);

% Graficar en Hz
subplot(2,1,1);  
    p = semilogx(f, 20*log10(abs(H)), 'k');    % Magnitud
    set(p, 'LineWidth', 2);
    grid on;
    xlabel('\itf', 'FontSize', 18, 'FontName', 'Times');    
    ylabel('|H(\itf)|_d_B', 'FontSize', 18, 'FontName', 'Times');
    title('Magnitud', 'FontSize', 24, 'FontName', 'Times');
    set(gca, 'FontSize', 14, 'FontName', 'Times');
    
subplot(2,1,2); 
    p = semilogx(f, angle(H), 'k');   % Fase
    set(p, 'LineWidth', 2);
    grid on;
    xlabel('\itf', 'FontSize', 18, 'FontName', 'Times');
    ylabel('arg\{H(\itf)\}','FontSize', 18, 'FontName', 'Times');
    title('Fase', 'FontSize', 24, 'FontName', 'Times');
    set(gca, 'FontSize', 14, 'FontName', 'Times');

%% Calcular valor a frecuencia f | Negativo = Atenuar | Positivo = Amplificar
% Se necesita correr el script anterior

% Frecuencia en Hz | Mover esto
f = 50e3;      % En decimal

% Calcular altura en la gráfica
alt = 20*log10(abs(h(j*2*pi*f)));
alt_dec = 10^(alt/20);
ang = angle(h(j*2*pi*f));

% Mostrar valores
sprintf("[abs(H)db:real  arg(H)] = [%.3f:%.3f  %.3f]", alt, alt_dec, ang)
