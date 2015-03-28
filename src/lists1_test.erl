-module(lists1_test).

-include_lib("eunit/include/eunit.hrl").

min_test() ->
  ?assertEqual(3, lists1:min([4, 9, 3, 5, 12])).

min_one_element_test() ->
  ?assertEqual(2, lists1:min([2])).

min_with_negative_test() ->
  ?assertEqual(-5, lists1:min([4, -3, 9, -5, 3, 5, 12])).

min_strings_test() ->
  ?assertEqual("aab", lists1:min(["arb", "bab", "aab"])).


max_test() ->
  ?assertEqual(12, lists1:max([4, 9, 3, 5, 12])).

max_one_element_test() ->
  ?assertEqual(2, lists1:max([2])).

max_with_negative_test() ->
  ?assertEqual(-5, lists1:max([-9, -5, -5, -12])).

max_strings_test() ->
  ?assertEqual("bab", lists1:max(["arb", "bab", "aab"])).

min_max_test() ->
  ?assertEqual({1, 10}, lists1:min_max([2, 3, 1, 4, 10, 7])).