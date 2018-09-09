%% Programa para calcular los valores de Ak de la serie discreta de Fourier
clc, clear

% Datos de la señal
x = [4 0 -4 0];    % Valores períódicos de la señal | Iniciando en x[0]
N = 4;      % Periodo

% Cálculo de la serie
Ak = fft(x)./N;

% Mostrar resultados | Inicia en A0
polar = [abs(Ak)' angle(Ak)'/pi]

%% Programa para calcular los valores de x[n] dado los Ak | Inversa de la DFTS
clc, clear

% Valores de Ak | No en polar
Ak = [6 2-6*j 2 2+6*j];

% Cálculo de la serie inversa
x = ifft(Ak);

% Mostrar resultados | Inicia en A0
polar = [abs(x)' angle(x)'/pi]
