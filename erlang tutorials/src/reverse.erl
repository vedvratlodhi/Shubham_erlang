%% @author Shubham Tiwari
%% @doc @todo Add description to reverse.


-module(reverse).
-import(string,[len/1]). 
-export([start/0]). 

start() -> 
   Str1 = "Shubham Tiwari", 
   Len1 = len(Str1), 
   Rstring = lists:reverse([a,b,c,d,e,f]),
   io:fwrite("~p,~w~n",[Len1,Rstring]).