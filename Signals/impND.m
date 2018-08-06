% @file impND.m
%
% @brief   Función de impulso unitario periódico discreto.
% @param   N, n = Entero
% @return  1 cada n.*N=Múltiplo de N y 0 si n.*N~=No es múltiplo de N
function y = impND(N, n)
    if N == round(N) & N>0 
        y = double(n./N == round(n/N));   % Establecer valor   
        I = find(round(n) ~= n);          % Verificar si es entero
        y(I) = NaN;
    else
        y = NaN.*n;
        disp('En impND, el parámetro N no es entero positivo.');
    end
end