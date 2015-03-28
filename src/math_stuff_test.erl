-module(math_stuff_test).

-include_lib("eunit/include/eunit.hrl").

square_perimiter_test() ->
  ?assertEqual(12, math_stuff:perimeter({square, 3})).

circle_perimiter_test() ->
  ?assertEqual(63, round(math_stuff:perimeter({circle, 10}))).

triangle_perimiter_test() ->
  ?assertEqual(12, math_stuff:perimeter({triangle, 5, 4, 3})).
