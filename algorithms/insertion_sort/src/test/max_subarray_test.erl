%%%-------------------------------------------------------------------
%%% @author roodxx
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 24. крс 2016 22.51
%%%-------------------------------------------------------------------
-module(max_subarray_test).
-author("roodxx").

-include_lib("eunit/include/eunit.hrl").

empty_array_test() ->
  ?assert(0 =:= max_subarray:max_subarray([])).

single_positive_item_array_test() ->
  ?assert(1 =:= max_subarray:max_subarray([1])).

single_negative_item_array_test() ->
  ?assert(-1 =:= max_subarray:max_subarray([-1])).

multiple_positive_item_array_test() ->
  ?assert(6 =:= max_subarray:max_subarray([1,2,3])).

multiple_negative_item_array_test() ->
  ?assert(-1 =:= max_subarray:max_subarray([-1,-2])).
