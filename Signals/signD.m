% @file signD.m
%
% @brief   Función de signo discreto.
% @param   n = Entero
% @return  1 si n>0, 0 si n=0 y -1 si n<0
function y = signD(n)
    y = sign(n);    
    
    I = find(round(n) ~= n);
    y(I) = NaN;
end