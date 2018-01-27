%% @author Shubham Tiwari
%% @doc @todo Add description to mail.
-module(mail).
-export([start/0]). 
start() -> 
   gen_smtp_client:send({"updatetg@gmail.com", ["itiwarishubham@gmail.com"], "Subject: testing"},
   
   [{relay, "smtp.gmail.com"}, {ssl, true}, {username, "updatetg@gmail.com"}, 
      {password, ""}]).


