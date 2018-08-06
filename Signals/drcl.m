% @file drcl.m
%
% @brief Implementaci�n de sinc peri�dica.
% @param N = Precisi�n
% @param t = Instante en el tiempo
% @return sin(pi*N*x)/(N*sin(pi*t))
function output = drcl(t, N)
    output = diric(2.*pi.*t, N);
end

