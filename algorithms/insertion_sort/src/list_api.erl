%%%-------------------------------------------------------------------
%%% @author roodxx
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 26. скв 2016 14:33
%%%-------------------------------------------------------------------
-module(list_api).
-author("roodxx").

%% API
-export([add_item_to_sort_list/2]).

add_item_to_sort_list(Item, [H | T]) ->
  if Item =< H -> [Item, H | T];
    true -> [H|add_item_to_sort_list(Item, T)]
  end;
add_item_to_sort_list(Item, []) -> [Item].



