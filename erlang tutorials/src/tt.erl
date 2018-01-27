%% @author Shubham Tiwari
%% @doc @todo Add description to www.


-module(tt).
-compile(export_all).
start()->
	odbc:start(), 
   {ok, Ref} =odbc:connect( "DRIVER={MySQL ODBC 5.3 Unicode Driver};SERVER=localhost;DATABASE=test;UID=root;PASSWORD=mysql",[]), 
    Res=odbc:sql_query(Ref, "SELECT * FROM EMPLOYEE"),
		L=Res, %[iuh,{1,2,3,4},{q,w,e,r},[a,s,d,f]],
		io:fwrite("~w~n",[L]),
		for(Res).


for([])->ok;
	
for([H|T])->
	io:fwrite("~s~n",[H]),
	for(T).