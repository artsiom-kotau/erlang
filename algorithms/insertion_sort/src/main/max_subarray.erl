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
  {_, MaxSum} = find_max_subarray(T, H, H),
  MaxSum;
max_subarray([]) -> 0.

find_max_subarray([H | T], CurSum, CurMaxSum) ->
  NewCurSum = get_max(H, CurSum + H),
  NewMaxSum = get_max(CurMaxSum, NewCurSum),
  find_max_subarray(T, NewCurSum, NewMaxSum);

find_max_subarray([], CurSum, CurMaxSum) -> {CurSum, CurMaxSum}.


get_max(FirstValue, SecondValue) ->
  if (FirstValue > SecondValue) ->
    FirstValue;
    true -> SecondValue
  end.

