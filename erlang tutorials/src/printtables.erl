%% @author Shubham Tiwari
%% @doc @todo Add description to printtables.


-module(printtables).
-export([printtables/2,start/1]).
printtables(N,11)->
	ok;
printtables(N,C) when C<11 ->
	
	io:fwrite("~w*~w=",[N,C]),
	io:fwrite("~w\n",[N*C]),
	printtables(N, C+1).



start(X)->
	io:fwrite("Table of ~w\n",[X]),
	printtables(X,1),
	io:fwrite("Hello").