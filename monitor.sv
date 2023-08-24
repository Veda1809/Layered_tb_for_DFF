class monitor;
  
  virtual intf vif;
  mailbox mon2scb;
  
  function new(virtual intf vif,mailbox mon2scb);
    this.vif     = vif;
    this.mon2scb = mon2scb;
  endfunction
  
  task main;
    repeat(1)
      #3;
      begin
      transaction trans;
      trans = new();
      trans.D     = vif.D;
      trans.clk   = vif.clk;
	  trans.reset = vif.reset;
      trans.Q     = vif.Q;
      mon2scb.put(trans);
      trans.display("Monitor");
    end
  endtask
  
endclass
