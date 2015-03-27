-module(temp).

%% API
-export([f2c/1, c2f/1, convert/1]).

%% C = 5(F-32)/9
f2c(Farenheit) ->
  5 * (Farenheit - 32) / 9.

%% F = 9/5C + 32
c2f(Celsius) ->
  Celsius * 9 / 5 + 32.

convert({c, T}) -> c2f(T);
convert({f, T}) -> f2c(T).