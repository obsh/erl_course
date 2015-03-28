-module(time).

%% API
-export([swedish_date/0, swedish_date/1]).

% return current date in format YYMMDD
swedish_date() ->
  swedish_date(date()).

swedish_date({Y, M, D}) ->
  format2digit(Y rem 100) ++ format2digit(M) ++ format2digit(D).


format2digit(N) when N < 10 ->
  "0" ++ integer_to_list(N);

format2digit(N) when N >= 10 ->
  integer_to_list(N).