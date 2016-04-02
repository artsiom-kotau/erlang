%%%-------------------------------------------------------------------
%%% @author roodxx
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 27. скв 2016 11:56
%%%-------------------------------------------------------------------
-module(insertion_sort).
-author("roodxx").

-import(list_api, [add_item_to_sort_list/2]).

%% API
-export([sort/1]).


sort([H | T]) ->
  do_sort([H | T], []);
sort([]) ->
  io:format("sort empty"),
  [].

do_sort([H | T], SortedList) ->
  io:format("hello"),
  do_sort(T, add_item_to_sort_list(H, SortedList));
do_sort([], AnyList) ->
  io:format("do_sort empty"),
  AnyList.


