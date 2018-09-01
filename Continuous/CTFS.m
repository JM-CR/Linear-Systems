%% DFT para aproximar CTFS compleja
    % Regresa valores en el rango 0<=k<N | k es número armónico
    % Para una señal real los componentes son recíprocos = Pares | Simétricos
    
clear, clc
% Señal a tratar en un periodo | Solo mover esto
g = @(t) 4 + 2.*cos(20*pi.*t) - 3.*sin(40*pi.*t);   % Señal
N = 1024;            % Números de muestras | Visualización rápida = 128 | Mayor número = Mayor exactitud = 1024
T0 = 1/10;      % Periodo fundamental

% Periodo a reconstruir de la señal
T = T0;        % Solo es necesario uno | Los demás son iguales

% Parámetros de la señal
Ts = T/N;                % Tiempo entre muestras
fs = 1/Ts;               % Frecuencia de muestreo
n = (0:N-1)';            % Índices de tiempo
t = n.*Ts;               % Tiempos de muestro

% Cálculo de DFT
x = g(t).*rect(t/2) + g(t-2).*rect((t-2)/2) + g(t-4).*rect((t-4)/2);
cx = fft(x)./N;
k = [0:(N/2 - 1)]';

% Graficar
subplot(3,1,1);
    plot(t, x);
    ylabel('x(t)');
    xlabel('Tiempo, t(s)');
    grid on;
    
subplot(3,1,2);
    stem(k, abs(cx(1:N/2)));
    ylabel('|A_k|');
    xlabel('Número armónico, k');
    grid on;
    
subplot(3,1,3);
    stem(k, angle(cx(1:N/2)));
    ylabel('Fase A_k');
    xlabel('Número armónico, k');
    grid on;  
    
% Magnitud y fase aproximada de Ak
% Inicia en A0 | Las negativas son conjugados
[abs(cx) angle(cx)/pi]