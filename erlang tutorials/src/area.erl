%% @author Shubham Tiwari
%% @doc @todo Add description to helloworld.
-module(area). 
-compile(export_all).
pi()->
	3.14159.
circle_area(Radius)->
	pi()*Radius*Radius.
rect_area(Height,Width)->
	Height*Width.