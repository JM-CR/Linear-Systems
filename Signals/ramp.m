% @file ramp.m
%
% @brief   Funci�n de rampa unitaria.
% @param   x = Escalar
% @return  x si x>0 y 0 si x<=0
function y = ramp(x)
    y = x.*us(x);