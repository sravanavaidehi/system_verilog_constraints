class ex;
  rand int a;
  real num ;
  
  constraint pattern{a inside{[990:1000]};}
 
  function void post_randomize();
    num = a/10.0;
  endfunction
      endclass
                     
module tb;
  initial begin
    repeat(10) begin
    ex e = new();
    e.randomize();
      $write("\n pattern : %f", e.num);
    end
  end
endmodule
          
