-module(temp_test).

-include_lib("eunit/include/eunit.hrl").

f2c_test() ->
  ?assertEqual(38, round(temp:f2c(100))).

c2f_test() ->
  ?assertEqual(212, round(temp:c2f(100))).

convert_test() ->
  ?assertEqual(38, round(temp:convert({f, 100}))),
  ?assertEqual(212, round(temp:convert({c, 100}))).