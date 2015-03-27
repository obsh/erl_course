-module(main).

%% API
-export([start/0]).


start() ->
  X = demo:double(4),
  io:fwrite("double(4) = ~B\n", [X]).