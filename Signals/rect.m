% @file rect.m
%
% @brief   Función de rectángulo unitario.
% @param   x = Escalar
% @return  1 si |x|<0.5, 1/2 si |x|=0.5 y 0 si |x|<0.5
function y = rect(x)
    y = us(x+0.5) - us(x-0.5);
    