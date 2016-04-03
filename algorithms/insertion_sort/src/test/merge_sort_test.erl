%%%-------------------------------------------------------------------
%%% @author roodxx
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 03. крс 2016 13.06
%%%-------------------------------------------------------------------
-module(merge_sort_test).
-author("roodxx").

-include_lib("eunit/include/eunit.hrl").

sort_empty_list_test() -> ?assert(merge_sort:merge_sort([]) == []).

sort_single_item_list_test() -> ?assert(merge_sort:merge_sort([1]) == [1]).

sort_two_same_items_list_test() -> ?assert(merge_sort:merge_sort([1,1]) == [1,1]).

sort_three_same_items_list_test() -> ?assert(merge_sort:merge_sort([1,1,1]) == [1,1,1]).

sort_two_non_same_items_straight_order_test() -> ?assert(merge_sort:merge_sort([1,2]) == [1,2]).

sort_two_non_same_items_reverse_order_test() -> ?assert(merge_sort:merge_sort([2,1]) == [1,2]).

sort_three_non_same_items_straight_order_test() -> ?assert(merge_sort:merge_sort([1,2,3]) == [1,2,3]).

sort_three_non_same_items_reverse_order_test() -> ?assert(merge_sort:merge_sort([3,2,1]) == [1,2,3]).

sort_three_non_same_items_random_order_test() -> ?assert(merge_sort:merge_sort([3,1,2]) == [1,2,3]).

sort_four_non_same_items_random_order_test() -> ?assert(merge_sort:merge_sort([3,1,4,2]) == [1,2,3,4]).

sort_random_order_even_amount_test() -> ?assert(merge_sort:merge_sort([2,29,87,56,68,61,37,20,7,74]) == [2,7,20,29,37,56,61,68,74,87]).

sort__random_order_odd_amount_test() -> ?assert(merge_sort:merge_sort([2,29,56,68,61,37,20,7,74]) == [2,7,20,29,37,56,61,68,74]).
