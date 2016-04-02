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

%% API
-export([]).

merge([FH | FT], [SH | ST]) ->
  if FH < SH -> [FH | merge(FT, [SH | ST])];
    true -> [SH | merge([FH | FT], ST)]
  end;

merge([H | T], []) -> [H | T];
merge([], [H | T]) -> [H | T].
