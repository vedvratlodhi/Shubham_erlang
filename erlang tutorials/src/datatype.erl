%% @author Shubham Tiwari
%% @doc @todo Add description to datatype.


-module(datatype).
-export([tuple/0,number/0,atom/0,boolean/0,bitstring/0,map/0,list/0]). 

tuple() -> 
   P = {john,24,{june,25}} , 
   io:fwrite("~w",[tuple_to_list(P)]).

number() ->
   io:fwrite("~w",[1+1]).

atom() ->
   io:fwrite(atom1).


boolean() ->
   io:fwrite(2 =< 3).


bitstring() ->
   Bin1 = <<10,20>>,
   X = binary_to_list(Bin1),
   io:fwrite("~w",[X]).

map() -> 
   M1 = #{name=>john,age=>25}, 
   io:fwrite("~w",[maps:find(age, M1)]).

list() -> 
   L = [10,20,30] , 
   io:fwrite("~w",[L]).



