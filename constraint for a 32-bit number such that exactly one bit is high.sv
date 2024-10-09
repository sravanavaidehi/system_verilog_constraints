class ex;
  rand bit [31:0] a;
  constraint pattern{$onehot(a);}
                            
  
endclass
    
               
module tb;
  initial begin
  repeat(11) begin
    ex e = new();
    e.randomize();
    $write("\n pattern a : %b",e.a);
  
  end
   
  end
endmodule  
