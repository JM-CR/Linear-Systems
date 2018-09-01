%% DFT para aproximar CTFS compleja
    % Regresa valores en el rango 0<=k<N | k es n�mero arm�nico
    % Para una se�al real los componentes son rec�procos = Pares | Sim�tricos
    
clear, clc
% Se�al a tratar en un periodo | Solo mover esto
g = @(t) 4 + 2.*cos(20*pi.*t) - 3.*sin(40*pi.*t);   % Se�al
N = 1024;            % N�meros de muestras | Visualizaci�n r�pida = 128 | Mayor n�mero = Mayor exactitud = 1024
T0 = 1/10;      % Periodo fundamental

% Periodo a reconstruir de la se�al
T = T0;        % Solo es necesario uno | Los dem�s son iguales

% Par�metros de la se�al
Ts = T/N;                % Tiempo entre muestras
fs = 1/Ts;               % Frecuencia de muestreo
n = (0:N-1)';            % �ndices de tiempo
t = n.*Ts;               % Tiempos de muestro

% C�lculo de DFT
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
    xlabel('N�mero arm�nico, k');
    grid on;
    
subplot(3,1,3);
    stem(k, angle(cx(1:N/2)));
    ylabel('Fase A_k');
    xlabel('N�mero arm�nico, k');
    grid on;  
    
% Magnitud y fase aproximada de Ak
% Inicia en A0 | Las negativas son conjugados
[abs(cx) angle(cx)/pi]