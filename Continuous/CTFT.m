%% DFT para aproximar CTFT compleja
% Para frecuencias positivas

% Se�al continua | Mover esto
g = @(t) 5.*rect(t./100);

% Datos de se�al
N =  257;        % Muestras | Mayor n�mero = Mayor exactitud
Ts = 16/N ;      % Muestrear por 16 segundos
fs = 1/Ts ;      % Tasa de amplitud
df = fs/N ;      % Resoluci�n en dominio frecuencia

% Muestreo para DFT
n = [0:N-1]'; 
t = Ts*n ; 
x = g(t);

X = Ts*fft(x) ;    % Aproximaci�n a CTFT
k = [0:N/2-1]'; 	% �ndices de frecuencia

% Gr�ficas
subplot(3,1,1);
    fplot(g);
    grid on ;
    xlabel('Time, t (s)'); 
    ylabel('x(t)');
    
subplot(3,1,2) ;
    plot(k*df,abs(X(1:N/2))); 
    grid on;
    xlabel('Frequency, f (Hz)');
    ylabel('|X(f)|') ;

subplot(3,1,3);
    plot(k*df,angle(X(1:N/2)));
    grid on ;
    xlabel('Frequency, f (Hz)');
    ylabel('Phase of X(f)');
    
 %% Aproximaci�n DFT de la Transformada de Fourier en Tiempo Continuo CTFT
% Para frecuencias negativas y positivas

% Se�al continua | Mover esto
g = @(t) 1.5.*(-1<=t & t<-0.5) + 1.*(-0.5<=t & t<0.5) + 1.5.*(0.5<=t & t<1);

% Datos de se�al
N = 250;         % Muestras | Mayor n�mero = Mayor exactitud
Ts = 16/N;       % Muestra por 16 segundos
fs = 1/Ts;       % Tasa de amplitud
df = fs/N;       % Resoluci�n en dominio frecuencia

% Muestreo para DFT
n = [0:N-1]'; 
t = Ts*n; 
x = g(t);

X = fftshift(Ts*fft(x));    % Aproximaci�n a CTFT
k = [-N/2:N/2-1]';          % �ndices de frecuencia

% Gr�ficas
subplot(3,1,1);
    fplot(g);
    grid on ;
    xlabel('Time, t (s)'); 
    ylabel('x(t)');
    
subplot(3,1,2) ;
    plot(k*df,abs(X)); 
    grid on;
    xlabel('Frequency, f (Hz)');
    ylabel('|X(f)|') ;

subplot(3,1,3);
    plot(k*df,angle(X));
    grid on ;
    xlabel('Frequency, f (Hz)');
    ylabel('Phase of X(f)');
