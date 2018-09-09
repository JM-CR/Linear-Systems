%% Programa para calcular los valores de Ak de la serie discreta de Fourier
clc, clear

% Datos de la se�al
x = [4 0 -4 0];    % Valores per��dicos de la se�al | Iniciando en x[0]
N = 4;      % Periodo

% C�lculo de la serie
Ak = fft(x)./N;

% Mostrar resultados | Inicia en A0
polar = [abs(Ak)' angle(Ak)'/pi]

%% Programa para calcular los valores de x[n] dado los Ak | Inversa de la DFTS
clc, clear

% Valores de Ak | No en polar
Ak = [6 2-6*j 2 2+6*j];

% C�lculo de la serie inversa
x = ifft(Ak);

% Mostrar resultados | Inicia en A0
polar = [abs(x)' angle(x)'/pi]
