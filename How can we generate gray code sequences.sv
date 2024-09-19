class ex;
  rand bit [3:0] b[10];
  constraint a_size{b.size() == 10;
                    foreach(b[i]){ b[i] == (i ^ (i>>1));}
 }
                 
  endclass
  
  
  module tb;
    initial begin 
      ex e = new();
      e.randomize();
      $display("gray code : %0p",e.b);
    end
  endmodule
   
      
