%%%-------------------------------------------------------------------
%%% @author roodxx
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 24. крс 2016 22.32
%%%-------------------------------------------------------------------
-module(max_subarray).
-author("roodxx").

%% API
-export([max_subarray/1]).

max_subarray([H | T]) ->
  find_max_subarray(T, H, H);
max_subarray([]) -> {0, 0}.

find_max_subarray([H | T], cur_sum, cur_max_sum) ->
  new_cur_sum = get_max(H, cur_sum + H),
  new_max_sum = get_max(cur_max_sum, new_cur_sum),
  max_subarray(T, new_cur_sum, new_max_sum);

find_max_subarray([], cur_sum, cur_max_sum) -> {cur_sum, cur_max_sum}.


get_max(FirstValue, SecondValue) ->
  if (FirstValue > SecondValue) ->
    FirstValue;
    true -> SecondValue
  end.

