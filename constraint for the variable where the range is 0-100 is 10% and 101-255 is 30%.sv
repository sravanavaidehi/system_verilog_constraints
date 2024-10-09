class ex;
  rand int a;
  constraint pattern{a dist{[0:100] := 10,[101:255] := 30};}
endclass
    
               
module tb;
  initial begin
  repeat(11) begin
    ex e = new();
    e.randomize();
    $write("\n pattern a : %p",e.a);
  end
  end
endmodule              
