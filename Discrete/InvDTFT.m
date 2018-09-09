% Graficación con aproximación a la suma de N integrales con DFT

% Altura de graficación
Xmax = 3;
Xmin = 0;

% Inversa de DTFT a aproximar
X = @(F) 8*drcl(F, 8).^2.*exp(-1j*16*pi.*F).*exp(1j*2*pi.*F)./(exp(1j*2*pi.*F) - 0.7);

% Parámetros de la aproximación
N = 128;            % Número de puntos       
k = (0:N-1)';       % Números armónicos

% Muestreo de X(F) entre 0 y 1 asumiendo periodo de 1 
xa = real(fftshift(ifft(X(k./N))));  % Cálculo de la DTFT inversa centrada en cero
n = (-N/2:N/2-1)';                   % Vector de tiempo discreto

% Graficar aproximación
stem(n, xa, 'LineWidth', 1, 'MarkerSize', 2);
    axis([-N/2 N/2 Xmin Xmax]);
    grid on;
    xlabel('\itn');
    ylabel('x[{\itn}]');
    title('Aproximación usando DFT');
