%% Graficar funci�n a trozos

% No cambiar orden. Solo valores
clear, clc, clf

% Funci�n principal por partes
g = @(t) (-4-2.*t).*(-2<t & t<=0) + (-4+3.*t).*(0<t & t<=4) + (16-2.*t).*(4<t & t<=8);

% Tama�o ejes en x 
tmin = -4;   
tmax = 20;   
dt = 0.1;
t = tmin:dt:tmax;

% Funciones a evaluar
g0 = g(t);
g1 = 3*g(t+1);
g2 = g(3*t)/2;
g3 = -2*g((t-1)/2);

% Tama�o ejes en y
gmin = min([min(g0) min(g1) min(g2) min(g3)]);
gmax = max([max(g0) max(g1) max(g2) max(g3)]);

% Gr�ficas
subplot(2,2,1);
    plot(t, g0);
    axis([tmin tmax gmin gmax]);
    xlabel('t');
    ylabel('g(t)');
    title('Original');
    grid on;
    
subplot(2,2,2);
    plot(t, g1);
    axis([tmin tmax gmin gmax]);
    xlabel('t');
    ylabel('3g(t+1)');
    title('Traslaci�n y escala de amplitud');
    grid on;
    
subplot(2,2,3);
    plot(t, g2);
    axis([tmin tmax gmin gmax]);
    xlabel('t');
    ylabel('g(3t)/2');
    title('Escala de tiempo y amplitud');
    grid on;
    
subplot(2,2,4);
    plot(t, g3);
    axis([tmin tmax gmin gmax]);
    xlabel('t');
    ylabel('-2g((t-1)/2)');
    title('Simult�neo')
    grid on;    