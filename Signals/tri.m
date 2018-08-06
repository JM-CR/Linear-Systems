% @file tri.m
%
% @brief   Función de triángulo unitario continuo.
% @param   x = Vector
% @return  1-|x| si |x|<1 y 0 si |x|>=1
function y = tri(x)
    for n = 1:length(x)
        if abs(x(n)) < 1
            y(n) = 1 - abs(x(n));
        else
            y(n) = 0;
        end
    end
end
    