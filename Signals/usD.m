% @file usD.m
%
% @brief   Funci�n de secuencia unitaria discreto.
% @param   n = Entero
% @return  1 si n>=0 y 0 si n<0
function y = usD(n)
    y = double(n >= 0);
    
    I = find(round(n) ~= n);
    y(I) = NaN;
end