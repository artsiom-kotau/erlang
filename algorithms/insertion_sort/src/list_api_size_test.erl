%%%-------------------------------------------------------------------
%%% @author roodxx
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 01. крс 2016 22.45
%%%-------------------------------------------------------------------
-module(list_api_size_test).
-author("roodxx").

-include_lib("eunit/include/eunit.hrl").

empty_list_size_test() -> ?assert(list_api:list_size([]) =:= 0).

one_element_list_size_test() -> ?assert(list_api:list_size([1]) =:= 1).

multiple_element_list_size_test() -> ?assert(list_api:list_size([1,2,3,4,5]) =:= 5).