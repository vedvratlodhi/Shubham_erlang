%% @author Shubham Tiwari
%% @doc @todo Add description to trim.


-module(trim).
-export([start/0]).

start()->
string:strip("   123 xyz  "),         
string:strip("   123 xyz  ", left),     
string:strip("   123 xyz  ", right), 
string:strip("...123 xyz..", both, $.).