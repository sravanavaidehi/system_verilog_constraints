class ex;
  rand bit [61:0] a;
  
  constraint pattern{foreach(a[i]){
    if(i<32)
      a[i] == 1;
  else
    a[i] == 0;
  }
  }
   
      endclass

                     
module tb;
  initial begin
    repeat(10) begin
    ex e = new();
    e.randomize();
      $write("\npattern : %b", e.a);
    end
  end
endmodule
