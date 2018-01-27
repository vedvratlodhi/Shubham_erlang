%% @author Shubham Tiwari
%% @doc @todo Add description to printlist.
-module(printlist).
-export([start/0]).
start()->
	Mylist=[1,2,3],
	io:fwrite("~w",[Mylist]).





