class ex;
  rand bit  a[10];
  
  constraint pattern{ foreach(a[i]){
    i == 0 -> a[i] == 1;
    i>0 -> a[i] != a[i-1];
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
