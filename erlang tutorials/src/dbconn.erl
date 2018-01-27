%% @author Shubham Tiwari
%% @doc @todo Add description to dbconn.


-module(dbconn).
-export([start/0,insert/0,select/0]). 
% odbc:connect("DSN = localhost ;UID = root;PWD = mysql", []),  "DRIVER={MySQL ODBC 5.1 Driver};SERVER=localhost;DATABASE=db_testing;UID=user_testing;PASSWORD=12345;
start() -> 
   odbc:start(), 
   {ok, Ref} =  odbc:connect( "DRIVER={MySQL ODBC 5.3 Unicode Driver};SERVER=localhost;DATABASE=test;UID=root;PASSWORD=mysql",[]),
   io:fwrite("~p",[Ref]),
% odbc:sql_query(Ref, "INSERT INTO EMPLOYEE VALUES('Mac', 'Mohan', 20, 'M', 2000)")  , 
insert().


insert() ->
	 odbc:start(), 
   {ok, Ref} =odbc:connect( "DRIVER={MySQL ODBC 5.3 Unicode Driver};SERVER=localhost;DATABASE=test;UID=root;PASSWORD=mysql",[]), 
   io:fwrite("~p",[odbc:sql_query(Ref,"INSERT INTO EMPLOYEE VALUES('Mac', 'Mohan', 20, 'F', 2000)")]).


select() ->
   odbc:start(), 
   {ok, Ref} =odbc:connect( "DRIVER={MySQL ODBC 5.3 Unicode Driver};SERVER=localhost;DATABASE=test;UID=root;PASSWORD=mysql",[]), 
    io:fwrite("~p",[odbc:sql_query(Ref, "SELECT * FROM EMPLOYEE") ]).
