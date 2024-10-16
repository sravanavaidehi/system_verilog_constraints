class ex;
  rand bit [3:0] a;    
  rand bit [15:0] b;   
  constraint pat{$countones(b) == a;}
endclass

module tb;
  initial begin
    repeat(10) begin
    ex e = new();
    e.randomize();
    $display("pattern:%0p b = %0b",e.a,e.b);
  end
  end
endmodule
