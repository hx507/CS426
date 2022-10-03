class Main {
  main(): Int {
    (let x : Int <- 100 in
	 {
        x <- x+x;
	    x+1;
	 })
  };
};
