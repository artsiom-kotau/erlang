%%%-------------------------------------------------------------------
%%% @author roodxx
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 26. скв 2016 14:33
%%%-------------------------------------------------------------------
-module(list_api_test).
-author("roodxx").
-include_lib("eunit/include/eunit.hrl").

add_to_sort_list_with_empty_list_test() -> ?assert(list_api:add_item_to_sort_list(1, []) =:= [1]).

add_to_sort_list_with_single_greater_item_list_test() -> ?assert(list_api:add_item_to_sort_list(1, [2]) =:= [1, 2]).

add_to_sort_list_with_single_item_less_list_test() -> ?assert(list_api:add_item_to_sort_list(2, [1]) =:= [1, 2]).

add_to_sort_list_with_multiple_item_list_test() ->
  ?assert(list_api:add_item_to_sort_list(4, [1, 2, 3]) =:= [1, 2, 3, 4]).

add_to_sort_list_with_multiple_item_list_to_middle_test() ->
  ?assert(list_api:add_item_to_sort_list(3, [1, 2, 4]) =:= [1, 2, 3, 4]).

