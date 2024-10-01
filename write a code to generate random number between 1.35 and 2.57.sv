class ex;
  rand int a;
  real b;
  
  constraint pattern{a inside{[135:257]};}
  
  function void post_randomize();
    b = a/100.0;
    $display("value = %2f",b);
  endfunction
endclass  
                     
module tb;
  initial begin
    repeat(10) begin
    ex e = new();
    e.randomize();
  //  $write("pattern : %p", e.b);
    end
  end
endmodule
                
