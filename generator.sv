class generator;
  
  transaction trans; 
  mailbox gen2driv;
  
  function new(mailbox gen2driv);
    this.gen2driv = gen2driv;
  endfunction
  
  
  task main();
    
    repeat(56)
      begin
    	trans = new();
        trans.randomize();
        trans.cov.sample();
      	gen2driv.put(trans);
      end
  endtask
  
      task displaycoverage();
    $display("*******************coverage=%0f",trans.cov.get_coverage());
  endtask
  
endclass
