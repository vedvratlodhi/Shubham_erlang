%% @author Shubham Tiwari
%% @doc @todo Add description to helloworld.
-module(helloworld). 
-export([start/0]).
start() -> 
   N = 9, 
   if 
      N > 10 -> 
         io:fwrite("N is greater than 10"); 
      true -> 
         io:fwrite("~w is greater than 10",[N]) 
   end.

