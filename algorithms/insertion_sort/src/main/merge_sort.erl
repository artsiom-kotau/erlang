%%%-------------------------------------------------------------------
%%% @author roodxx
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 02. крс 2016 21.09
%%%-------------------------------------------------------------------
-module(merge_sort).
-author("roodxx").
-import(list_api, [list_size/1, list_split/2]).
%% API
-export([merge_sort/1]).

merge_sort([H | T]) ->
  Length = list_size([H | T]),
  do_sort([H | T], Length div 2);
merge_sort([]) -> [].

do_sort([H | T], Part) ->
  if Part > 0 ->
    {LL, RL} = list_split([H | T], Part),
    LP = Part div 2,
    RP = Part - LP,
    LLM = do_sort(LL, LP),
    RLM = do_sort(RL, RP),
    merge(LLM, RLM);
    true -> [H | T]
  end;
do_sort([], _) -> [].

merge([FH | FT], [SH | ST]) ->
  if FH < SH -> [FH | merge(FT, [SH | ST])];
    true -> [SH | merge([FH | FT], ST)]
  end;

merge([H | T], []) -> [H | T];
merge([], [H | T]) -> [H | T].
