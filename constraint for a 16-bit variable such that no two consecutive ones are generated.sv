class ex;
  rand bit [15:0] a;
  constraint pattern{foreach(a[i]){
    i > 0 -> a[i] != a[i-1];
  }}
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
