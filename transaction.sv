class transaction;
   randc bit  D;
   randc bit reset;
   bit clk;
   bit  Q;

  function void display(string name);
    $display("*************************");
    $display(" %s ",name);
    $display("*************************");
    $display("D = %0d",D);
    $display("reset = %0d, clk= %0d",reset,clk);
    $display("Q = %0d",Q); 
    $display("*************************");
  endfunction
  
  covergroup cov;
    a: coverpoint D
    {
	    bins b1[]= {0,1};
    }
    b: coverpoint reset
    {
	    bins b2[]={0,1};
    }
    c:cross a,b;
  endgroup
  
  function new();
    cov=new();
  endfunction
  
  
endclass
