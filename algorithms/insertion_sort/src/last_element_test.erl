%%%-------------------------------------------------------------------
%%% @author roodxx
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 01. крс 2016 22.45
%%%-------------------------------------------------------------------
-module(last_element_test).
-author("roodxx").

-include_lib("eunit/include/eunit.hrl").

last_element_from_empty_list_test() -> ?assert(list_api:last_element([]) =:= nil).

last_element_from_one_item_list_test() -> ?assert(list_api:last_element([1]) =:= 1).

last_element_from_multiple_item_list_test() -> ?assert(list_api:last_element([1,2,3,4,6]) =:= 6).
