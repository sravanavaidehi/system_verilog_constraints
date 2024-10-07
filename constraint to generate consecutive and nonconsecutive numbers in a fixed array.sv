class ex;
  rand bit [4:0]a[20];
  
  constraint pattern{foreach(a[i]){
    if(i < 10) a[i] == i;
    else a[i] == a[i];
    
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
