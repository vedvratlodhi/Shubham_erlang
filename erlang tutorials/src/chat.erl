-module(chat).
-compile(export_all).

start() -> 
   spawn(fun() -> server(4000) end).

server(Port) ->
   {ok, Socket} = gen_udp:open(Port, [binary, {active, false}]), 
   io:format("server opened socket:~p~n",[Socket]), 
   loop(Socket). 

loop(Socket) ->
   inet:setopts(Socket, [{active, once}]), 
   receive 
      {udp, Socket, Host, Port, Bin} -> 
      io:format("server received:~p~n",[Bin]), 
      gen_udp:send(Socket, Host, Port, Bin), 
      loop(Socket) 
   end. 

cha()->
		  {ok, [A]} = io:fread("input : ", "~s"),
		  amanclient(A),
		  vedvratclient(A),
		  cha().




send(IoList) ->
    case inet:ifget("eth0", [broadaddr]) of
        {ok, [{broadaddr, Ip}]} ->
            {ok, S} =  gen_udp:open(5010, [{broadcast, true}]),
            gen_udp:send(S, Ip, 6000, IoList),
            gen_udp:close(S);
        _ ->
            io:format("Bad interface name, or\n"
                      "broadcasting not supported\n")
    end.

listen() ->
    {ok, S} = gen_udp:open(6000),
    loops(S).

loops(S) ->
    receive
        Any ->
            io:format("received:~p~n", [Any]),
            loops(S)
    end.



amanclient(N) -> 
   {ok, Socket} = gen_udp:open(0, [binary]), 
   io:format("client opened socket=~p~n",[Socket]), 
   ok = gen_udp:send(Socket, "172.168.31.143", 4000, N), Value = receive 
      {udp, Socket, _, _, Bin} ->
         io:format("client received:~p~n",[Bin]) after 2000 ->
      0 
   end, 
   
gen_udp:close(Socket), 
Value.


vedvratclient(N) -> 
   {ok, Socket} = gen_udp:open(0, [binary]), 
   io:format("client opened socket=~p~n",[Socket]), 
   ok = gen_udp:send(Socket, "172.168.31.144", 4000, N), Value = receive 
      {udp, Socket, _, _, Bin} ->
         io:format("client received:~p~n",[Bin]) after 2000 ->
      0 
   end, 
   
gen_udp:close(Socket), 
Value.