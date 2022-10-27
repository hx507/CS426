-- Simple assignment

class Main inherits IO
{
   x : Int <- 5;
   x2 : Int;
   x3 : Int <- 7;
   io : IO;
   str1 : String <- "aaa";
   str2 : String;
   main() : Object {{
		out_string("\nattribute dynamic dispatch:\n");
		x<-7656; 
		out_int(x);
		out_string(str1);
		out_string("\ndynamic dispatch:\n");
		out_int(199);
		self@IO.out_string("\nstatic dispatch:\n");
		io@IO.out_int(1198);
		self@IO.out_int(197);
		self;
	}};
	(*
	test() : Object {{
		--x <-20;
		self;
	}};*)
};
(*
class Test inherits Main{
	xtest : Int <- 8;
};
*)
