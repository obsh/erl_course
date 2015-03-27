-module(demo_test).

-include_lib("eunit/include/eunit.hrl").

double_test() ->
  ?assertEqual(12, demo:double(6)).
