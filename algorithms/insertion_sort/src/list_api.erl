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
-export([add_item_to_sort_list/2, list_size/1, last_element/1, list_split/2]).

add_item_to_sort_list(Item, [H | T]) ->
  if Item =< H -> [Item, H | T];
    true -> [H | add_item_to_sort_list(Item, T)]
  end;
add_item_to_sort_list(Item, []) -> [Item].

list_size([_ | T]) -> 1 + list_size(T);
list_size([]) -> 0.

last_element([H | T]) -> get_last_element(T, H);
last_element([]) -> nil.

list_split([H | T], FirstAmount) ->
  if (FirstAmount == 0) -> {[], [H | T]};
    true ->
      {FirstList, SecondList} = list_split(T, FirstAmount - 1),
      {[H | FirstList], SecondList}
  end;
list_split([], FirstAmount) when FirstAmount > 0 -> throw(list_size_less_then_require);
list_split([], 0) -> {[], []}.

get_last_element([H | T], _) -> get_last_element(T, H);
get_last_element([], L) -> L.



