% @file us.m
%
% @brief   Función de escalón unitario.
% @param   x = Escalar
% @return  1 si x>0, 1/2 si x=0 y 0 si x<0
function y = us(x)
    y = (sign(x) + 1)/2;
    