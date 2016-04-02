%%%-------------------------------------------------------------------
%%% @author roodxx
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 27. скв 2016 12:23
%%%-------------------------------------------------------------------
-module(insertion_sort_test).
-author("roodxx").
-include_lib("eunit/include/eunit.hrl").

sort_empty_list_test() ->
  ?assert(insertion_sort:sort([]) =:= []).

sort_one_item_test() ->
  ?assert(insertion_sort:sort([1]) == [1]).

sort_two_same_item_test() ->
  ?assert(insertion_sort:sort([1, 1]) =:= [1, 1]).

sort_two_item_in_right_order_test() ->
  ?assert(insertion_sort:sort([1, 2]) =:= [1, 2]).

sort_two_item_in_direct_order_test() ->
  ?assert(insertion_sort:sort([1, 2]) =:= [1, 2]).

sort_two_item_in_reverse_order_test() ->
  ?assert(insertion_sort:sort([2, 1]) =:= [1, 2]).

sort_in_total_reverse_test() ->
  ?assert(insertion_sort:sort([9, 8, 7, 6, 5, 4, 3, 2, 1]) =:= [1, 2, 3, 4, 5, 6, 7, 8, 9]).

sort_in_direct_til_middle_reverse_test() ->
  ?assert(insertion_sort:sort([5, 6, 7, 8, 9, 4, 3, 2, 1]) =:= [1, 2, 3, 4, 5, 6, 7, 8, 9]).

sort_in_reverse_til_middle_reverse_test() ->
  ?assert(insertion_sort:sort([4, 3, 2, 1, 5, 6, 7, 8, 9]) =:= [1, 2, 3, 4, 5, 6, 7, 8, 9]).

sort_merging_list_test() ->
  ?assert(insertion_sort:sort([1, 5, 2, 6, 3, 7, 4, 8, 9, 0]) =:= [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]).


