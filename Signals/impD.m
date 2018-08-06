% @file impD.m
%
% @brief   Función de impulso unitario discreto.
% @param   n = Entero
% @return  1 si n=0 y 0 si n~=0
function y = impD(n)
    y = double(n == 0);
    
    I = find(round(n) ~= n);
    y(I) = NaN;
end