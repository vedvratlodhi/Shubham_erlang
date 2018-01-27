%% @author Shubham Tiwari
%% @doc @todo Add description to www.


-module(www).
-compile(export_all).
start()->
odbc:start(), 
   {ok, Ref} =odbc:connect( "DRIVER={MySQL ODBC 5.3 Unicode Driver};SERVER=localhost;DATABASE=test;UID=root;PASSWORD=mysql",[]), 
    Res=odbc:sql_query(Ref, "SELECT * FROM EMPLOYEE"),
	io:fwrite("~p",[Res]).
