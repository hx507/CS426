-- Simple assignment

class Main inherits IO
{
   x : Int <- 5;
   x2 : Int;
   x3 : Int <- 7;
   io : IO;
   str1 : String <- "aaa";
   str2 : String;
   main() : Int {{
		--x<-7656; 
		--out_int(x); 
		out_int(199);
		io@IO.out_int(198);
		1;
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
