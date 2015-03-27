-module(mathStuff_test).

-include_lib("eunit/include/eunit.hrl").

square_perimiter_test() ->
  ?assertEqual(12, mathStuff:perimeter({square, 3})).

circle_perimiter_test() ->
  ?assertEqual(63, round(mathStuff:perimeter({circle, 10}))).

triangle_perimiter_test() ->
  ?assertEqual(12, mathStuff:perimeter({triangle, 5, 4, 3})).
