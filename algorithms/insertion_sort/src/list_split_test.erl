%%%-------------------------------------------------------------------
%%% @author roodxx
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 02. крс 2016 11.08
%%%-------------------------------------------------------------------
-module(list_split_test).
-author("roodxx").

-include_lib("eunit/include/eunit.hrl").

split_empty_list_zero_test() -> ?assert(list_api:list_split([], 0) == {[], []}).

split_non_empty_list_zero_test() -> ?assert(list_api:list_split([1], 0) == {[], [1]}).

split_non_empty_list_one_test() -> ?assert(list_api:list_split([1], 1) == {[1], []}).

split_non_empty_list_two_test() -> ?assert(list_api:list_split([1, 2], 1) == {[1], [2]}).

split_non_empty_list_big_part_test() -> ?assertThrow(list_size_less_then_require, list_api:list_split([1, 2], 3)).

split_non_empty_list_first_test() ->
  ?assert(list_api:list_split([1, 2, 3, 4, 5, 6, 7, 8], 3) == {[1, 2, 3], [4, 5, 6, 7, 8]}).

split_non_empty_list_second_test() ->
  ?assert(list_api:list_split([1, 2, 3, 4, 5, 6, 7, 8], 7) == {[1, 2, 3, 4, 5, 6, 7], [8]}).
