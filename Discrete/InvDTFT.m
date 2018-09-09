% Graficaci�n con aproximaci�n a la suma de N integrales con DFT

% Altura de graficaci�n
Xmax = 3;
Xmin = 0;

% Inversa de DTFT a aproximar
X = @(F) 8*drcl(F, 8).^2.*exp(-1j*16*pi.*F).*exp(1j*2*pi.*F)./(exp(1j*2*pi.*F) - 0.7);

% Par�metros de la aproximaci�n
N = 128;            % N�mero de puntos       
k = (0:N-1)';       % N�meros arm�nicos

% Muestreo de X(F) entre 0 y 1 asumiendo periodo de 1 
xa = real(fftshift(ifft(X(k./N))));  % C�lculo de la DTFT inversa centrada en cero
n = (-N/2:N/2-1)';                   % Vector de tiempo discreto

% Graficar aproximaci�n
stem(n, xa, 'LineWidth', 1, 'MarkerSize', 2);
    axis([-N/2 N/2 Xmin Xmax]);
    grid on;
    xlabel('\itn');
    ylabel('x[{\itn}]');
    title('Aproximaci�n usando DFT');
