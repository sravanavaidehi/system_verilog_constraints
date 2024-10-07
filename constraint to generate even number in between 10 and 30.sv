class ex;
  rand bit [5:0] a [$];
  
  constraint pattern{a.size() == 10;
    foreach(a[i]){
   a[i] inside{[10:30]};
   a[i]%2 == 0;
    
  }
    }
endclass
               
module tb;
  initial begin
   //repeat(10) begin
    ex e = new();
    e.randomize();
     $write("\n pattern : %p", e.a);
  // end
    
  end
endmodule
