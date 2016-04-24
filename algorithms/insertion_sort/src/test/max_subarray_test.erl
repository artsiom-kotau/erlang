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

multiple_positive_items_array_test() ->
  ?assert(6 =:= max_subarray:max_subarray([1,2,3])).

multiple_negative_items_array_test() ->
  ?assert(-1 =:= max_subarray:max_subarray([-1,-2])).

multiple_different_items_array1_test() ->
  ?assert(6 =:= max_subarray:max_subarray([-2, 1, -3, 4, -1, 2, 1, -5, 4])).

multiple_different_items_array2_test() ->
  ?assert(7 =:= max_subarray:max_subarray([-2, -3, 4, -1, -2, 1, 5, -3])).