% @file impND.m
%
% @brief   Funci�n de impulso unitario peri�dico discreto.
% @param   N, n = Entero
% @return  1 cada n.*N=M�ltiplo de N y 0 si n.*N~=No es m�ltiplo de N
function y = impND(N, n)
    if N == round(N) & N>0 
        y = double(n./N == round(n/N));   % Establecer valor   
        I = find(round(n) ~= n);          % Verificar si es entero
        y(I) = NaN;
    else
        y = NaN.*n;
        disp('En impND, el par�metro N no es entero positivo.');
    end
end