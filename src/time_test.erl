-module(time_test).

-include_lib("eunit/include/eunit.hrl").

swedish_date_test() ->
  ?assertEqual("150327", time:swedish_date({2015, 03, 27})),
  ?assertEqual("000327", time:swedish_date({2000, 03, 27})).
