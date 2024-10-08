class ex;
  rand  bit [4:0]a;
  int n = 4;
  constraint pattern{foreach(a[i]){
    a[n-i] == a[i];
    }
  }
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
