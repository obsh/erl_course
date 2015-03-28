-module(lists1).

%% API
-export([min/1, max/1, min_max/1]).

min([H | T]) ->
  min(H, T).

min(Candidate, []) ->
  Candidate;

min(Candidate, [H | T]) ->
  min(erlang:min(Candidate, H), T).


max([H | T]) ->
  max(H, T).

max(Candidate, []) ->
  Candidate;

max(Candidate, [H | T]) ->
  max(erlang:max(Candidate, H), T).

min_max(L) when length(L) > 0 ->
  {min(L), max(L)}.