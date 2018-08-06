% @file rampD.m
%
% @brief   Función de rampa unitaria discreto.
% @param   n = Entero
% @return  n si n>=0 y 0 si n<0
function y = rampD(n)
    y = ramp(n);
    
    I = find(round(n) ~= n);
    y(I) = NaN;
end