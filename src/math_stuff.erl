-module(math_stuff).

%% API
-export([perimeter/1]).

perimeter({square, Side}) -> 4 * Side;
perimeter({circle, Radius}) -> 2 * math:pi() * Radius;
perimeter({triangle, A, B, C}) -> A + B + C.