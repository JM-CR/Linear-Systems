% @file drcl.m
%
% @brief Implementación de sinc periódica.
% @param N = Precisión
% @param t = Instante en el tiempo
% @return sin(pi*N*x)/(N*sin(pi*t))
function output = drcl(t, N)
    output = diric(2.*pi.*t, N);
end

